/*
 * Copyright (c) 2024 FNIL-FDU@mkxue
 */
 
// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * rank store (metadata-store)
 */
module rank_store#(
    // FIFO depth in words
    // KEEP_WIDTH words per cycle if KEEP_ENABLE set
    // Rounded up to nearest power of 2 cycles
    parameter DEPTH_PER_FIFO = 16,
    // Priority Width for vPIFO
    parameter PRIORITY_WIDTH = 12,
    // Queue Count
    parameter QUEUE_COUNT = 64,
    // Queue Index Width
    parameter QUEUE_INDEX_WIDTH = 6
)(
    input  wire                          clk,
    input  wire                          rst,
    /*
     * Doorbell input
     */
    input  wire [QUEUE_INDEX_WIDTH-1:0]  s_axis_doorbell_queue,
    input  wire                          s_axis_doorbell_valid,
    input  wire [PRIORITY_WIDTH-1:0]     s_axis_doorbell_priority,
    /*
     * Doorbell output
     */
    output  reg [QUEUE_INDEX_WIDTH-1:0] m_axis_doorbell_queue,
    output  reg                          m_axis_doorbell_valid,
    output  reg [PRIORITY_WIDTH-1:0]    m_axis_doorbell_priority,
    input   wire                         m_axis_doorbell_fifo_ready,
    /*
     * PIFO POP Signal : reversing signal means pop happen
     */
    input   wire [QUEUE_COUNT-1:0]        pifo_pop_signal
    );

// CHECKT CONFIGURATION
initial begin
    if (QUEUE_INDEX_WIDTH!=6) begin
        $error("Error: QUEUE_COUNT and QUEUE_INDEX_WIDTH have conflict (instance %m)");
        $finish;
    end
    
    
    if (PRIORITY_WIDTH!=12) begin
        $error("Error: PRIORITY_WIDTH!=12 (instance %m)");
        $finish;
    end
    
end

//PRIORITY_FIFO INPUT
reg [QUEUE_COUNT*PRIORITY_WIDTH-1:0] r_s_axis_tpriority;
reg [QUEUE_COUNT-1:0]r_s_axis_tvalid;
wire [QUEUE_COUNT*PRIORITY_WIDTH-1:0] s_axis_tpriority;
wire [QUEUE_COUNT-1:0]s_axis_tvalid;
assign s_axis_tpriority = r_s_axis_tpriority;
assign s_axis_tvalid = r_s_axis_tvalid;
//PRIORITY_FIFO OUTPUT
wire [QUEUE_COUNT*PRIORITY_WIDTH-1:0] m_axis_tpriority;
wire [QUEUE_COUNT-1:0]m_axis_tvalid;
(* ramstyle = "no_rw_check" *)
reg [QUEUE_COUNT-1:0]m_axis_tready;

genvar k;
generate
    for (k = 0; k < QUEUE_COUNT; k = k + 1) begin : queue
        priority_fifo #(
            .DEPTH(DEPTH_PER_FIFO),
            .DATA_WIDTH(PRIORITY_WIDTH),
            .KEEP_ENABLE(0),
            .KEEP_WIDTH(1),
            .LAST_ENABLE(0),
            .ID_ENABLE(0),
            .DEST_ENABLE(0),
            .USER_ENABLE(0),
            .FRAME_FIFO(0)
        ) doorbell_axis_fifo (
            .clk(clk),
            .rst(rst),
            
            // AXI input
            .s_axis_tpriority(s_axis_tpriority[k*PRIORITY_WIDTH +: PRIORITY_WIDTH]),
            .s_axis_tkeep(0),
            .s_axis_tvalid(s_axis_tvalid[k]),
            .s_axis_tready(),
            .s_axis_tlast(0),
            .s_axis_tid(0),
            .s_axis_tdest(0),
            .s_axis_tuser(0),
            // AXI output
            .m_axis_tpriority(m_axis_tpriority[k*PRIORITY_WIDTH +: PRIORITY_WIDTH]),
            .m_axis_tkeep(),
            .m_axis_tvalid(m_axis_tvalid[k]),
            .m_axis_tready(m_axis_tready[k]),
            .m_axis_tlast(),
            .m_axis_tid(),
            .m_axis_tdest(),
            .m_axis_tuser(),
            // Status
            .status_overflow(),
            .status_bad_frame(),
            .status_good_frame()
        );
    end
endgenerate

// DOORBELL FIFO MUX
integer m;
always @(posedge clk) begin
    if(rst)begin
        r_s_axis_tvalid <= {QUEUE_COUNT{1'b0}};
        r_s_axis_tpriority<={QUEUE_COUNT*PRIORITY_WIDTH{1'b1}};
    end else begin
    for (m = 0; m < QUEUE_COUNT; m = m + 1) begin
        r_s_axis_tvalid[m] <= (s_axis_doorbell_queue == m) ? s_axis_doorbell_valid : 1'b0;
        r_s_axis_tpriority[m*PRIORITY_WIDTH +: PRIORITY_WIDTH] <= (s_axis_doorbell_queue == m) ? s_axis_doorbell_priority : 1'b0;
    end
    end
end

//TAG
(* ramstyle = "block" *)
reg [QUEUE_COUNT-1:0]reg_if_inpifo;
wire [QUEUE_COUNT-1:0]if_inpifo;

reg [QUEUE_COUNT-1:0]reg_pifo_pop_signal;
assign if_inpifo = reg_if_inpifo;
integer i, j;

//ARBITER
reg [QUEUE_COUNT-1:0] grant;
wire [QUEUE_COUNT-1:0]request;
assign request = (~if_inpifo)&m_axis_tvalid;
reg [QUEUE_INDEX_WIDTH:0]index; // highest 1 bit is used for valid vertification
reg [QUEUE_COUNT-1:0]pop_result;
always @ * begin
    //Init
    index = QUEUE_COUNT; // fatal data
    grant = 0;// fatal data
    for (i = 0; i < QUEUE_COUNT; i = i + 1) begin
        pop_result[i]=(pifo_pop_signal[i]!=reg_pifo_pop_signal[i]);
    end
    
    //arbiter logic
    if(request!=0)begin
        grant = request&(~(request-1'b1));  // 0 is not valid
        for (i = 0; i < QUEUE_COUNT; i = i + 1) begin
            if(grant[i]) begin
                index = i;
            end
        end    
    end
end

// OUTPUT LOGIC
always @(posedge clk) begin
    if(rst)begin
        reg_if_inpifo <= 0;
        m_axis_tready <= 0;
        m_axis_doorbell_valid <= 0;
        m_axis_doorbell_priority <= {PRIORITY_WIDTH{1'b1}};
        m_axis_doorbell_queue <= 0;
        reg_pifo_pop_signal <= 0;
    end else begin
        //Case 1 :FIFO DATA VALID
        if(index!=QUEUE_COUNT)begin
            //Waiting for m_axis_doorbell_fifo_ready INPUT
            m_axis_doorbell_valid <= (m_axis_doorbell_fifo_ready) ? 0 :1'b1;
            m_axis_doorbell_priority <= m_axis_tpriority[index[QUEUE_INDEX_WIDTH-1:0]*PRIORITY_WIDTH +: PRIORITY_WIDTH];
            m_axis_doorbell_queue <= index[QUEUE_INDEX_WIDTH-1:0];
            //m_axis_doorbell_fifo_ready coming
            if(m_axis_doorbell_fifo_ready)begin
                reg_if_inpifo[index[QUEUE_INDEX_WIDTH-1:0]] <= 1'b1;
                m_axis_tready[index[QUEUE_INDEX_WIDTH-1:0]] <= 1'b1;
                for(i = 1;i<QUEUE_COUNT;i=i+1)begin
                    if(i!=index[QUEUE_INDEX_WIDTH-1:0])begin
                        m_axis_tready[i] <= 0;
                    end
                end
            end
            //no m_axis_doorbell_fifo_ready
            if(!m_axis_doorbell_fifo_ready)begin
                m_axis_tready[QUEUE_COUNT-1:0] <= {(QUEUE_COUNT-1){1'b0}};
            end
            //update tag(determine if fifo can pop data)
            for (i = 0; i < QUEUE_COUNT; i = i + 1) begin
                if(i!=index[QUEUE_INDEX_WIDTH-1:0])begin
                    reg_if_inpifo[i] <= (pop_result[i]) ? 0 : reg_if_inpifo[i];
                    //if necessary,reverse signal can touch fifo out statement
                    reg_pifo_pop_signal[i] <= (pop_result[i]) ? pifo_pop_signal[i] : reg_pifo_pop_signal[i];
                end
            end
        end
        
        //Case 2 :FIFO DATA IS NOT VALID
        if(index==QUEUE_COUNT)begin
            m_axis_tready <= 1'b0;
            m_axis_doorbell_valid <= 0;
            for (i = 0; i < QUEUE_COUNT; i = i + 1) begin
                reg_if_inpifo[i] <= (pop_result[i]) ? 0 : reg_if_inpifo[i];
                reg_pifo_pop_signal[i] <= (pop_result[i]) ? pifo_pop_signal[i] : reg_pifo_pop_signal[i];
            end
        end
    end
end

endmodule

`resetall
