`timescale 1ns / 10ps
    /*-----------------------------------------------------------------------------
    Description: Top-level module that contains n levels (n is parameterizable) 
                of PIFO components (In this version, PIFO storage elements are
                SRAM instead of FFs. This makes the whole PIFO tree more expandable.).  
    -----------------------------------------------------------------------------*/
    // assume that LEVEL == SRAM, LEVEL == RPU
module PIFO_TOP
#(
    parameter PTW       = 3,       // Payload data width
    parameter MTW       = 8,        // Metdata width
    parameter CTW       = 10,       // Counter width
    parameter LEVEL     = 4,         // Sub-tree level
    parameter TREE_NUM  = 4,
    parameter FIFO_SIZE = 8,
    parameter PLW             = 7, //packet length width
    localparam FIFO_WIDTH       = $clog2(FIFO_SIZE),
    localparam LEVEL_BITS       = $clog2(LEVEL),
    localparam TREE_NUM_BITS    = $clog2(TREE_NUM),
    localparam TREE_SIZE_BITS   = LEVEL,
    localparam SRAM_ADW         = $clog2((TREE_NUM + LEVEL - 1) / LEVEL) + TREE_SIZE_BITS, // SRAM_Address width
    localparam TaskFIFO_DATA_BITS = (PTW+MTW+PLW)+(TREE_NUM_BITS+TREE_NUM_BITS)+2,
    localparam ADW              = LEVEL-1 // Address width in a level
)(
    // Clock and Reset
    input                            i_clk,
    input                            i_arst_n,
    
    // Push and Pop port to the whole PIFO tree
    input [TREE_NUM_BITS-1:0]        i_push_tree_id [0:LEVEL-1],
    input [LEVEL-1:0]                i_push,
    input [(MTW+PTW+PLW)-1:0]        i_push_data [0:LEVEL-1],
    
    input [LEVEL-1:0]                i_pop,
    input [TREE_NUM_BITS-1:0]        i_pop_tree_id [0:LEVEL-1],

    output [TREE_NUM_BITS-1:0]       o_tree_id [0:LEVEL-1],
    output [(MTW+PTW+PLW)-1:0]       o_pop_data [0:LEVEL-1],

    output [LEVEL-1:0]               o_is_level0_pop,
    output [LEVEL-1:0]               o_task_fifo_full
);

    logic [TREE_NUM_BITS-1:0]           latch_push_tree_id [0:LEVEL-1];
    logic [LEVEL-1:0]                   latch_push;
    logic [(MTW+PTW+PLW)-1:0]           latch_push_data [0:LEVEL-1];

    reg [LEVEL-1:0]                    push_up;
    wire [LEVEL-2:0]                    test;
    reg [(MTW+PTW+PLW)-1:0]            push_data_up [0:LEVEL-1];
    reg [LEVEL-1:0]                    pop_up;
    reg [(MTW+PTW+PLW)-1:0]            pop_data_up  [0:LEVEL-1];
    reg [LEVEL-1:0]                    push_dn      ;
    reg [(MTW+PTW+PLW)-1:0]            push_data_dn [0:LEVEL-1];
    reg [LEVEL-1:0]                    pop_dn;
    reg [(MTW+PTW+PLW)-1:0]            pop_data_dn  [0:LEVEL-1];

    reg [LEVEL - 1:0]                  read;
    reg [LEVEL - 1:0]                  write;
    reg [2*(CTW+MTW+PTW+PLW)-1:0]      read_data    [0:LEVEL - 1];
    reg [2*(CTW+MTW+PTW+PLW)-1:0]      write_data   [0:LEVEL - 1];   

    reg [$clog2(LEVEL)-1:0]            level_up   [0:LEVEL - 1];
    reg [$clog2(LEVEL)-1:0]            level_dn   [0:LEVEL - 1];
    reg [$clog2(LEVEL)-1:0]             level_wb   [0:LEVEL - 1];

    reg [TREE_NUM_BITS-1:0]            tree_id_up  [0:LEVEL - 1];
    reg [TREE_NUM_BITS-1:0]            tree_id_dn  [0:LEVEL - 1];
    reg [LEVEL-1:0]                    is_level0_pop;

    reg [LEVEL-1:0]                    we;
    reg [SRAM_ADW-1:0]                 waddr        [0:LEVEL - 1];
    reg [2*(CTW+MTW+PTW+PLW)-1:0]          wdata        [0:LEVEL-1];

    reg [LEVEL-1:0]                    re;
    reg [SRAM_ADW-1:0]                 raddr        [0:LEVEL - 1];
    reg [2*(CTW+MTW+PTW+PLW)-1:0]          rdata        [0:LEVEL-1];   

    reg [SRAM_ADW-1:0]                 read_addr    [0:LEVEL-1];
    reg [SRAM_ADW-1:0]                 write_addr   [0:LEVEL-1];

    reg [ADW-1:0]                      my_addr      [0:LEVEL-1];
    reg [ADW-1:0]                      child_addr   [0:LEVEL-1];

    wire [LEVEL-1:0]                    pop_TaskFIFO;
    wire [TaskFIFO_DATA_BITS-1:0]       TaskFIFO_pop_data [0:LEVEL-1];
    wire [LEVEL-1:0]                    TaskFIFO_empty;
    wire [1:0]                          rpu_state_nxt [0:LEVEL-1];

    reg [LEVEL-1:0]                    rpu_push;
    reg [LEVEL-1:0]                    rpu_pop;
    reg [(PTW+MTW+PLW)-1:0]                rpu_push_data [0:LEVEL-1];
    reg [TREE_NUM_BITS-1:0]            rpu_treeId [0:LEVEL-1];

    logic [LEVEL-1:0]                    push_TaskFIFO;
    logic [TaskFIFO_DATA_BITS-1:0]       TaskFIFO_push_data [0:LEVEL-1];
    wire [LEVEL-1:0]                    TaskFIFO_full;
    wire [FIFO_WIDTH:0]                 fifo_counter [0:LEVEL-1]; 

    wire [1:0] rpu_state_nxt_0;
    wire [1:0] rpu_state_nxt_1;
    // wire [1:0] rpu_state_nxt_2;
    // wire [1:0] rpu_state_nxt_3;

    wire [TaskFIFO_DATA_BITS-1:0] TaskFIFO_push_data_0;
    wire [TaskFIFO_DATA_BITS-1:0] TaskFIFO_push_data_1;
    // wire [(PTW+MTW)+TREE_NUM_BITS:0] TaskFIFO_push_data_2;
    // wire [(PTW+MTW)+TREE_NUM_BITS:0] TaskFIFO_push_data_3;

    assign TaskFIFO_push_data_0 = TaskFIFO_push_data[0];
    assign TaskFIFO_push_data_1 = TaskFIFO_push_data[1];
    // assign TaskFIFO_push_data_2 = TaskFIFO_push_data[2];
    // assign TaskFIFO_push_data_3 = TaskFIFO_push_data[3];

    assign rpu_state_nxt_0 = rpu_state_nxt[0];
    assign rpu_state_nxt_1 = rpu_state_nxt[1];
    // assign rpu_state_nxt_2 = rpu_state_nxt[2];
    // assign rpu_state_nxt_3 = rpu_state_nxt[3];

    wire [(PTW+MTW+PLW)-1:0] rpu_push_data_0;
    wire [(PTW+MTW+PLW)-1:0] rpu_push_data_1;
    // wire [(PTW+MTW)-1:0] rpu_push_data_2;
    // wire [(PTW+MTW)-1:0] rpu_push_data_3;

    assign rpu_push_data_0 = rpu_push_data[0];
    assign rpu_push_data_1 = rpu_push_data[1];
    // assign rpu_push_data_2 = rpu_push_data[2];
    // assign rpu_push_data_3 = rpu_push_data[3];

    wire [TREE_NUM_BITS-1:0] rpu_treeId_0 = rpu_treeId[0];
    wire [TREE_NUM_BITS-1:0] rpu_treeId_1 = rpu_treeId[1];
    // wire [TREE_NUM_BITS-1:0] rpu_treeId_2 = rpu_treeId[2];
    // wire [TREE_NUM_BITS-1:0] rpu_treeId_3 = rpu_treeId[3];

    wire [TREE_NUM_BITS-1:0] tree_id_dn_0;

    always_ff @(posedge i_clk or negedge i_arst_n) begin
        if (!i_arst_n) begin
            for (int i = 0; i < LEVEL; i++) begin
                latch_push_tree_id[i] <= 'd0;
                latch_push_data[i] <= 'd0;                
                latch_push[i] <= 'd0;
            end
        end else begin
            for (int i = 0; i < LEVEL; i++) begin
                // old_push,new_push,new_pop
                // Here, by default, there is one rpu and one pifo, which means that push_tree_id is actually useless.
                unique case ({latch_push[i], i_push[i], i_pop[i]})
                    3'b000, 3'b100: begin 
                        push_TaskFIFO[i] <= '0;
                        TaskFIFO_push_data[i] <= '0;
                        latch_push_tree_id[i] <= latch_push_tree_id[i];
                        latch_push_data[i] <= latch_push_data[i];                
                        latch_push[i] <= latch_push[i];
                    end

                    3'b001, 3'b011: begin 
                        push_TaskFIFO[i] <= '1;
                        TaskFIFO_push_data[i] = {i_push[i], i_pop[i], i_push_tree_id[i], i_pop_tree_id[i], i_push_data[i]};
                        latch_push_tree_id[i] <= latch_push_tree_id[i];
                        latch_push_data[i] <= latch_push_data[i];                
                        latch_push[i] <= latch_push[i];
                    end                    

                    3'b010: begin 
                        push_TaskFIFO[i] <= '0;
                        TaskFIFO_push_data[i] <= '0;
                        latch_push_tree_id[i] <= i_push_tree_id[i];
                        latch_push_data[i] <= i_push_data[i];                
                        latch_push[i] <= i_push[i];
                    end                     

                    3'b101: begin 
                        push_TaskFIFO[i] <= '1;
                        TaskFIFO_push_data[i] = {latch_push[i], i_pop[i], latch_push_tree_id[i], i_pop_tree_id[i], latch_push_data[i]};
                        latch_push_tree_id[i] <= '0;
                        latch_push_data[i] <= '0;                
                        latch_push[i] <= '0;
                    end           
                    
                    3'b110, 3'b111: begin 
                        push_TaskFIFO[i] <= '1;
                        TaskFIFO_push_data[i] = {latch_push[i], i_pop[i], latch_push_tree_id[i], i_pop_tree_id[i], latch_push_data[i]};
                        latch_push_tree_id[i] <= i_push_tree_id[i];
                        latch_push_data[i] <= i_push_data[i];                
                        latch_push[i] <= i_push[i];
                    end                
                endcase
            end
        end
    end

    //-----------------------------------------------------------------------------
    // Instantiations
    //-----------------------------------------------------------------------------
    genvar i,j;
    generate
    for (i=0;i<LEVEL;i=i+1) begin : pifo_loop
        pifo #(
            .PTW (PTW),
            .PLW (PLW),
            .MTW (MTW),
            .CTW (CTW),
            .LEVEL (LEVEL),
            .TREE_NUM (TREE_NUM)
        ) u_PIFO (
            .i_clk           ( i_clk            ),
            .i_arst_n        ( i_arst_n         ),

            .i_push          ( push_up      [i] ),
            .i_push_data     ( push_data_up [i] ),
            .i_pop           ( pop_up       [i] ),
            .o_pop_data      ( pop_data_up  [i] ),

            .o_push          ( push_dn      [i] ),
            .o_push_data     ( push_data_dn [i] ),
            .o_pop           ( pop_dn       [i] ),
            .i_pop_data      ( pop_data_dn  [i] ),
                
            .o_read          ( read         [i] ), 
            .i_read_data     ( read_data    [i] ), 
    
            .o_write         ( write        [i] ), 
            .o_write_data    ( write_data   [i] ),

            .i_tree_id       ( tree_id_up   [i] ), 
            .o_tree_id       ( tree_id_dn   [i] ),

            .i_my_addr       ( my_addr      [i] ),
            .o_child_addr    ( child_addr   [i] ),

            .i_level         ( level_up     [i] ),
            .o_level         ( level_dn     [i] ),
            .o_is_level0_pop ( is_level0_pop[i] ),

            .o_read_addr     ( read_addr    [i] ),
            .o_write_addr    ( write_addr   [i] )
        );
    end

    assign tree_id_dn_0 = tree_id_dn[0];
    for (i=0;i<LEVEL;i=i+1) begin
        assign o_pop_data[i] = pop_data_up[i];
        assign o_task_fifo_full[i] = TaskFIFO_full[i];
        assign o_tree_id[i] = tree_id_dn[i];
        assign o_is_level0_pop[i] = is_level0_pop[i];
    end

    for (i = 0; i < LEVEL; i++) begin
        always @ (posedge i_clk or negedge i_arst_n) begin
            if (!i_arst_n) begin
                level_wb[i] <= '0;
            end else begin
                level_wb[i] <= level_up[i];
            end
        end
    end

    for (i=0;i<LEVEL-1;i=i+1) begin : loop1
        assign push_up[i+1]      = rpu_push[i+1] ? 1'b1 : push_dn[i];
        assign push_data_up[i+1] = rpu_push[i+1] ? rpu_push_data[i+1] : push_data_dn[i];
        assign pop_up[i+1]       = rpu_pop[i+1] ? 1'b1 : pop_dn[i];
        assign pop_data_dn[i]    = (level_wb[i] == (LEVEL - 1)) ? {(MTW+PTW+PLW){1'b1}} 
                                    : pop_data_up[i+1];
        assign my_addr[i+1]      = (rpu_push[i+1] | rpu_pop[i+1]) ? '0 : child_addr[i];
        assign tree_id_up[i+1]   = (rpu_push[i+1] | rpu_pop[i+1]) ? rpu_treeId[i+1] : tree_id_dn[i];
        assign level_up[i+1]     = (rpu_push[i+1] | rpu_pop[i+1]) ? '0 : level_dn[i];
    end

    assign push_up[0]            = rpu_push[0] ? 1'b1 : push_dn[LEVEL-1];
    assign push_data_up[0]       = rpu_push[0] ? rpu_push_data[0] : push_data_dn[LEVEL-1];
    assign pop_up[0]             = rpu_pop[0] ? 1'b1 : pop_dn[LEVEL-1];
    assign pop_data_dn[LEVEL-1]  = (level_wb[LEVEL-1] == (LEVEL-1)) ? {(MTW+PTW+PLW){1'b1}} 
                                    : pop_data_up[0];
    assign my_addr[0]            = (rpu_push[0] | rpu_pop[0]) ? '0 : child_addr[LEVEL-1];
    assign tree_id_up[0]         = (rpu_push[0] | rpu_pop[0]) ? rpu_treeId[0] : tree_id_dn[LEVEL-1];
    assign level_up[0]           = (rpu_push[0] | rpu_pop[0]) ? '0 : level_dn[LEVEL-1]; 
    

    for (i=0; i<LEVEL; i=i+1) begin : sram_inst
      INFER_SDPRAM #(
         .DATA_WIDTH ( 2 * (CTW + MTW + PTW +PLW)   ),
         .ADDR_WIDTH ( SRAM_ADW                     ),
         .ARCH       ( 0                            ),
         .RDW_MODE   ( 1                            ),
         .INIT_VALUE ( {2{{CTW{1'b0}},{(MTW+PTW+PLW){1'b1}}}} ) // Sub-tree size is zero. Pifo value are maximum initially.
          ) u_INFER_SDPRAM
          (
            .i_clk      ( i_clk                                   ),
            .i_arst_n   ( i_arst_n                                ),

            .i_we       ( we[i]                                   ),
            .i_waddr    ( waddr[i]                                ),   
            .i_wdata    ( wdata[i]                                ),

            .i_re       ( re[i]                                   ),
            .i_raddr    ( raddr[i]                                ),
            .o_rdata    ( rdata[i]                                )
      );
	assign re[i]    = read[i];
        assign we[i]    = write[i];
        assign waddr[i] = write_addr[i];
        assign raddr[i] = read_addr[i];	       
        assign wdata[i] = write_data[i];
    end     

    for (i=0;i<LEVEL;i=i+1) begin : loop
        assign read_data[i] = rdata[i];
    end

    for (i=0;i<LEVEL;i=i+1) begin
        task_fifo #(
            .PTW(PTW),
            .PLW(PLW),
            .MTW(MTW),
            .TREE_NUM(TREE_NUM),
            .BUF_SIZE(FIFO_SIZE)
        )tf(
            .clk(i_clk),
            .rst(!i_arst_n),
            .wr_en(push_TaskFIFO[i]),
            .rd_en(pop_TaskFIFO[i]),
            .buf_in(TaskFIFO_push_data[i]),
            .buf_out(TaskFIFO_pop_data[i]),
            .buf_empty(TaskFIFO_empty[i]),
            .buf_full(TaskFIFO_full[i]),
            .o_fifo_counter(fifo_counter[i])
        );
    end

//    for (i=0;i<LEVEL;i=i+1) begin
//        assign push_TaskFIFO[i] = (i_push[i] || i_pop[i]);
//        assign TaskFIFO_push_data[i] = {i_push[i], i_pop[i], i_push_tree_id[i], i_pop_tree_id[i], i_push_data[i]};
//    end

    task_distribute #(
        .PTW(PTW),
        .PLW(PLW),
        .MTW(MTW),
        .LEVEL(LEVEL),
        .TREE_NUM(TREE_NUM)
    )td(
        .i_clk(i_clk),
        .i_arst_n(i_arst_n),
        .o_pop_TaskFIFO(pop_TaskFIFO),
        .i_TaskFIFO_data(TaskFIFO_pop_data),
        .i_TaskFIFO_empty(TaskFIFO_empty),
        .o_rpu_push(rpu_push),
        .o_rpu_pop(rpu_pop),
        .o_rpu_treeId(rpu_treeId),
        .o_rpu_push_data(rpu_push_data)
    );

    endgenerate
    wire [TaskFIFO_DATA_BITS-1:0] TaskFIFO_pop_data_0;
    assign TaskFIFO_pop_data_0 = TaskFIFO_pop_data[0];

endmodule