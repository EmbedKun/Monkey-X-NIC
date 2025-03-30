`timescale 1ns / 10ps
/*
 * Copyright (c) 2024 FNIL-FDU
 */
// Language: Verilog 2001

// trico-tree top module
module trico_tree_top
#(
    parameter PTW             = 3, // Payload data width
    parameter TREE_NUM_BITS   = 2,
    parameter QUEUE_INDEX_WIDTH = 6,
    parameter MTW             = TREE_NUM_BITS+QUEUE_INDEX_WIDTH, // Metdata width should not less than TREE_NUM_BITS, cause tree_id will be placed in MTW
    parameter CTW             = 10, // Counter width
    parameter LEVEL           = 3, // Sub-tree level
    parameter TREE_NUM        = 3,
    parameter FIFO_SIZE       = 8,
    parameter PLW             = 7, //packet length width
    parameter CDW             = 16, //credit length width

    localparam FIFO_WIDTH       = $clog2(FIFO_SIZE),
    localparam LEVEL_BITS       = $clog2(LEVEL),
    localparam ROOT_TREE_ID     = 0,
    localparam ROOT_RPU_ID      = 0
)(
    // Clock and Reset
    input                            i_clk,
    input                            i_arst_n,
    
    // Push and Pop port to the whole PIFO tree
    input [TREE_NUM_BITS-1:0]        i_push_tree_id,
    input                            i_push,
    input [(MTW+PTW+PLW)-1:0]        i_push_data,
    
    input                            i_pop,
    output [(MTW+PTW+PLW)-1:0]       o_pop_data,
    output                           o_pop_out_ready
);
    logic [LEVEL-1:0] push;
    logic [LEVEL-1:0] pop;
    reg   o_task_fifo_full;
    logic [TREE_NUM_BITS-1:0] o_pop_tree_id_reg;
    logic [(MTW+PTW+PLW)-1:0] o_pop_data_reg;
    logic                     o_pop_out_reg;  
    logic [TREE_NUM_BITS-1:0] o_pop_tree_id_reg2;
    logic [(MTW+PTW+PLW)-1:0] o_pop_data_reg2;
    logic                     o_pop_out_reg2;  
    logic signed [CDW-1:0]   per_rpu_credit[0:LEVEL-1]; 
    logic per_rpu_state[0:LEVEL-1]; 

    logic [TREE_NUM_BITS-1:0] pop_tree_id[0:LEVEL-1];
    logic [PLW-1:0] pop_tree_id_length[0:LEVEL-1]; 
    logic [TREE_NUM_BITS-1:0] pifo_o_tree_id [0:LEVEL-1];
    logic [TREE_NUM_BITS-1:0] pifo_i_push_tree_id [0:LEVEL-1];
    logic [TREE_NUM_BITS-1:0] pifo_i_pop_tree_id [0:LEVEL-1];
    logic [(MTW+PTW+PLW)-1:0] push_data [0:LEVEL-1];
    logic [(MTW+PTW+PLW)-1:0] pop_data [0:LEVEL-1];
    logic [LEVEL-1:0] task_fifo_full;
    logic [LEVEL-1:0] is_level0_pop;
    logic [LEVEL_BITS-1:0] push_rpu_id;
    logic [LEVEL_BITS-1:0] pop_rpu_id[0:LEVEL-1];

reg [11:0]cnt;
always @(posedge i_clk or negedge i_arst_n)begin
    if(!i_arst_n)
        cnt <= 12'b0;
    else if(cnt==12'b111111111111)
        cnt <= 12'b0;
    else if(i_push==1'b1&&i_push_tree_id=='0)
        cnt <= cnt + 1'b1;
    else if(i_pop==1'b1)
        cnt <= cnt - 1'b1;
end
reg self_pop;
reg in_process;
always @(posedge i_clk or negedge i_arst_n)begin
    if(!i_arst_n)begin
        self_pop <= 0;
        in_process <=0;
    end else begin
        if((cnt>=12'b000000000001 && in_process=='0&&o_pop_out_ready=='0)||i_pop==1)begin
            self_pop <= '1;
            in_process<= '1;
        end else if(self_pop=='1)begin
            self_pop <= '0;
            in_process<='1;
        end else begin
            self_pop <= '0;
        end
    end
end

    PIFO_TOP 
    #(
        .PTW   (PTW),
        .PLW   (PLW),
        .MTW   (MTW),
        .CTW   (CTW),
        .LEVEL (LEVEL),
        .TREE_NUM (TREE_NUM),
        .FIFO_SIZE (FIFO_SIZE)
    ) u_PIFO_TOP (
        .i_clk       ( i_clk          ),
        .i_arst_n    ( i_arst_n       ),

        .i_push_tree_id ( pifo_i_push_tree_id ),
        .i_push      ( push           ),
        .i_push_data ( push_data      ),

        .i_pop       ( pop            ),
        .i_pop_tree_id ( pifo_i_pop_tree_id ),

        .o_tree_id   ( pifo_o_tree_id ),
        .o_pop_data  ( pop_data       ),

        .o_is_level0_pop ( is_level0_pop ), 
        .o_task_fifo_full ( task_fifo_full )   
    );
    reg   [(MTW+PTW+PLW)-1:0] pop_data2 [0:LEVEL-1];
    reg [LEVEL-1:0]is_level0_pop2;
    always @(posedge i_clk or negedge i_arst_n) begin
        if (!i_arst_n) begin
            for(int i=0; i<LEVEL; i++)begin
                pop_data2[i] <= '0;
            end
            is_level0_pop2 <= '0;
        end
        else begin
            for(int i=0; i<LEVEL; i++)begin
                pop_data2[i] <= pop_data[i];
            end
            is_level0_pop2 <= is_level0_pop;
        end
   end

    always_ff @(posedge i_clk or negedge i_arst_n) begin
        if (!i_arst_n) begin
            for (int i = 0; i < LEVEL; i++) begin
                per_rpu_credit[i] <= '0;
                per_rpu_state[i] <= '1;
            end
        end else begin
            pop[ROOT_RPU_ID] <= self_pop;
            pifo_i_pop_tree_id[ROOT_RPU_ID] <= ROOT_TREE_ID;
            // for the same index, old_push / new_push / new_pop
            for (int i = 1; i < LEVEL; i++) begin
                if ((pop_tree_id[0] == i) && is_level0_pop2[i]) begin
                    if (pop_tree_id[0] == i) begin
                        per_rpu_credit[pop_tree_id[0]] <= per_rpu_credit[pop_tree_id[0]] + pop_tree_id_length[0] - pop_tree_id_length[i];
                        if ((per_rpu_credit[pop_tree_id[0]] + pop_tree_id_length[0] - pop_tree_id_length[i]) > 0) begin
                            pifo_i_pop_tree_id[pop_rpu_id[0]] <= pop_tree_id[0];
                            pop[pop_tree_id[0]] <= '1;
                            per_rpu_state[pop_tree_id[0]] <= '0;
                        end else begin
                            per_rpu_state[pop_tree_id[0]] <= '1;
                            pop[i] <= '0;
                            pifo_i_pop_tree_id[i] <= '0;
                        end        
                    end      
                end else if (is_level0_pop2[i]) begin
                    per_rpu_credit[i] <= per_rpu_credit[i] - pop_tree_id_length[i];
                    if ((per_rpu_credit[i] - pop_tree_id_length[i]) > 0) begin
                        pifo_i_pop_tree_id[i] <= i;
                        pop[i] <= '1;
                        per_rpu_state[i] <= '0;                        
                    end else begin
                        per_rpu_state[i] <= '1;                        
                        pop[i] <= '0;
                        pifo_i_pop_tree_id[i] <= '0;
                    end 
                end else if (pop_tree_id[0] == i) begin
                    if (pop_tree_id[0] == i) begin
                        per_rpu_credit[pop_tree_id[0]] <= per_rpu_credit[pop_tree_id[0]] + pop_tree_id_length[0];
                        if ( per_rpu_state[pop_tree_id[0]] && ((per_rpu_credit[pop_tree_id[0]] + pop_tree_id_length[0]) > 0)) begin
                            pifo_i_pop_tree_id[pop_rpu_id[0]] <= pop_tree_id[0];
                            pop[pop_tree_id[0]] <= '1;
                            per_rpu_state[pop_tree_id[0]] <= '0;
                        end                    
                    end         
                end else begin
                    pop[i] <= '0;
                    pifo_i_pop_tree_id[i] <= '0;
                end   
            end
        end
    end

    // ROOT_TREE_ID is 0
    // ROOT_RPU_ID is 0
    // should not be pushed by i_push
    assign push_rpu_id = i_push_tree_id % LEVEL;

    for (genvar i = 0; i < LEVEL; i++) begin
        assign push[i] = (i == push_rpu_id) ? i_push : '0;
        assign push_data[i] = (i == push_rpu_id && i_push) ? i_push_data : '1;
    end

    assign pifo_i_push_tree_id[ROOT_RPU_ID] = ROOT_TREE_ID;
    for (genvar i = 1; i < LEVEL; i++) begin
        assign pifo_i_push_tree_id[i] = (i == push_rpu_id) ? i_push_tree_id : ROOT_TREE_ID;
    end    


    // pop is for ROOT_TREE_ID
    // i.e. if i_pop is 1 then ROOT_TREE will do pop
    // and generate a pop for a subtree
    assign pop_tree_id[0] = is_level0_pop2[0] ? pop_data2[0][(MTW+PTW+PLW-1) -: TREE_NUM_BITS] : ROOT_RPU_ID;

    for (genvar i = 0; i < LEVEL; i++) begin
        assign pop_tree_id_length[i] = is_level0_pop2[i] ? pop_data2[i][(PTW+PLW-1):PTW] : '0;
    end

    assign pop_rpu_id[0] = pop_tree_id[0] % LEVEL;

    // now i can select one tree to do pop
    // so only one is_level0_pop will be 1 per cycle
    always_comb  begin
        o_pop_tree_id_reg = '0;
        o_pop_data_reg = '1;
        o_pop_out_reg = '0;
        for(int i=1; i<LEVEL; ++i)begin
            if(is_level0_pop2[i]) begin
                o_pop_out_reg = 1'b1;
                o_pop_tree_id_reg = pifo_o_tree_id[i];
                o_pop_data_reg = pop_data2[i];
            end
        end
    end
    
    always_comb  begin
        if(o_pop_data_reg2[(MTW+PTW+PLW-1) -: TREE_NUM_BITS]=='0);
        else o_pop_data_reg2 = '1;
        
        if(o_pop_out_reg2=='1)o_pop_out_reg2='1;
        else o_pop_out_reg2 = '0;
        
        if(i_pop=='1)begin
            o_pop_data_reg2 = '1;
            o_pop_out_reg2 = '0;
        end else begin
            o_pop_data_reg2 = (o_pop_data_reg[(MTW+PTW+PLW-1) -: TREE_NUM_BITS]=='b0&&o_pop_data_reg!='1)?o_pop_data_reg:o_pop_data_reg2;
            o_pop_out_reg2  = (o_pop_data_reg[(MTW+PTW+PLW-1) -: TREE_NUM_BITS]=='b0&&o_pop_data_reg!='1)?'1:o_pop_out_reg2;
        end
    end

    // assign o_pop_tree_id_reg = pifo_o_tree_id[0];
    // now ROOT_RPU_ID's task_fifo has the largest length
    // so it will be full first
    assign o_task_fifo_full = task_fifo_full[ROOT_RPU_ID];
    assign o_pop_data = o_pop_data_reg2;
    assign o_pop_out_ready = o_pop_out_reg2;

endmodule