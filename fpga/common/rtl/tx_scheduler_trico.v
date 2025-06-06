// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2019-2023 The Regents of the University of California
 */

/*
 * Copyright (c) 2024-2025 FNIL-FDU@mkxue
 */
// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * Transmit scheduler (trico-tree)
 */
module tx_scheduler_trico #
(
    // Width of AXI lite data bus in bits
    parameter AXIL_DATA_WIDTH = 32,
    // Width of AXI lite address bus in bits
    parameter AXIL_ADDR_WIDTH = 32,
    // Width of AXI lite wstrb (width of data bus in words)
    parameter AXIL_STRB_WIDTH = (AXIL_DATA_WIDTH/8),
    // Length field width
    parameter LEN_WIDTH = 16,
    // Transmit request tag field width
    parameter REQ_TAG_WIDTH = 8,
    // Number of outstanding operations
    parameter OP_TABLE_SIZE = 16,
    // Queue index width
    parameter QUEUE_INDEX_WIDTH = 6,
    // Pipeline stages
    parameter PIPELINE = 2,
    // Scheduler control input enable
    parameter SCHED_CTRL_ENABLE = 0,
    // Doorbell Queue Priority
    parameter PRIORITY_WIDTH = 6,
    // Doorbell Packet Width
    parameter PACKET_WIDTH = 7,
    parameter PER_PRIORITY_WIDTH = PRIORITY_WIDTH/2,
    parameter TREE_NUM_BITS = 2
)
(
    input  wire                          clk,
    input  wire                          rst,

    /*
     * Transmit request output (queue index)
     */
    output wire [QUEUE_INDEX_WIDTH-1:0]  m_axis_tx_req_queue,
    output wire [REQ_TAG_WIDTH-1:0]      m_axis_tx_req_tag,
    output wire                          m_axis_tx_req_valid,
    input  wire                          m_axis_tx_req_ready,

    /*
     * Transmit request status input
     */
    input  wire [LEN_WIDTH-1:0]          s_axis_tx_req_status_len,
    input  wire [REQ_TAG_WIDTH-1:0]      s_axis_tx_req_status_tag,
    input  wire                          s_axis_tx_req_status_valid,

    /*
     * Doorbell input
     */
    input  wire [QUEUE_INDEX_WIDTH-1:0]  s_axis_doorbell_queue,
    input  wire                          s_axis_doorbell_valid,
    input  wire [PRIORITY_WIDTH-1:0]     s_axis_doorbell_priority,
    input  wire [PACKET_WIDTH-1:0]       s_axis_doorbell_pkt_length,
    
    /*
     * Scheduler control input
     */
    input  wire [QUEUE_INDEX_WIDTH-1:0]  s_axis_sched_ctrl_queue,
    input  wire                          s_axis_sched_ctrl_enable,
    input  wire                          s_axis_sched_ctrl_valid,
    output wire                          s_axis_sched_ctrl_ready,

    /*
     * AXI-Lite slave interface
     */
    input  wire [AXIL_ADDR_WIDTH-1:0]    s_axil_awaddr,
    input  wire [2:0]                    s_axil_awprot,
    input  wire                          s_axil_awvalid,
    output wire                          s_axil_awready,
    input  wire [AXIL_DATA_WIDTH-1:0]    s_axil_wdata,
    input  wire [AXIL_STRB_WIDTH-1:0]    s_axil_wstrb,
    input  wire                          s_axil_wvalid,
    output wire                          s_axil_wready,
    output wire [1:0]                    s_axil_bresp,
    output wire                          s_axil_bvalid,
    input  wire                          s_axil_bready,
    input  wire [AXIL_ADDR_WIDTH-1:0]    s_axil_araddr,
    input  wire [2:0]                    s_axil_arprot,
    input  wire                          s_axil_arvalid,
    output wire                          s_axil_arready,
    output wire [AXIL_DATA_WIDTH-1:0]    s_axil_rdata,
    output wire [1:0]                    s_axil_rresp,
    output wire                          s_axil_rvalid,
    input  wire                          s_axil_rready,

    /*
     * Control
     */
    input  wire                          enable,
    output wire                          active
);

localparam QUEUE_COUNT = 2**QUEUE_INDEX_WIDTH;

localparam CL_OP_TABLE_SIZE = $clog2(OP_TABLE_SIZE);

localparam QUEUE_RAM_BE_WIDTH = 2;
localparam QUEUE_RAM_WIDTH = QUEUE_RAM_BE_WIDTH*8;
localparam METADATA_WIDTH = PACKET_WIDTH + PER_PRIORITY_WIDTH;

// bus width assertions
initial begin
    if (REQ_TAG_WIDTH < CL_OP_TABLE_SIZE) begin
        $error("Error: REQ_TAG_WIDTH insufficient for OP_TABLE_SIZE (instance %m)");
        $finish;
    end

    if (AXIL_DATA_WIDTH != 32) begin
        $error("Error: AXI lite interface width must be 32 (instance %m)");
        $finish;
    end

    if (AXIL_STRB_WIDTH * 8 != AXIL_DATA_WIDTH) begin
        $error("Error: AXI lite interface requires byte (8-bit) granularity (instance %m)");
        $finish;
    end

    if (AXIL_ADDR_WIDTH < QUEUE_INDEX_WIDTH+5) begin
        $error("Error: AXI lite address width too narrow (instance %m)");
        $finish;
    end

    if (PIPELINE < 2) begin
        $error("Error: PIPELINE must be at least 2 (instance %m)");
        $finish;
    end

    if (PRIORITY_WIDTH != 6) begin
        $error("Error: PRIORITY_WIDTH must be 6 (instance %m)");
        $finish;
    end

    if (PACKET_WIDTH != 7) begin
        $error("Error: PACKET_WIDTH must be 7 (instance %m)");
        $finish;
    end
end

reg op_axil_write_pipe_hazard;
reg op_axil_read_pipe_hazard;
reg op_doorbell_pipe_hazard;
reg op_req_pipe_hazard;
reg op_complete_pipe_hazard;
reg op_ctrl_pipe_hazard;
reg op_internal_pipe_hazard;
reg stage_active;

reg [PIPELINE-1:0] op_axil_write_pipe_reg = {PIPELINE{1'b0}}, op_axil_write_pipe_next;
reg [PIPELINE-1:0] op_axil_read_pipe_reg = {PIPELINE{1'b0}}, op_axil_read_pipe_next;
reg [PIPELINE-1:0] op_doorbell_pipe_reg = {PIPELINE{1'b0}}, op_doorbell_pipe_next;
reg [PIPELINE-1:0] op_req_pipe_reg = {PIPELINE{1'b0}}, op_req_pipe_next;
reg [PIPELINE-1:0] op_complete_pipe_reg = {PIPELINE{1'b0}}, op_complete_pipe_next;
reg [PIPELINE-1:0] op_ctrl_pipe_reg = {PIPELINE{1'b0}}, op_ctrl_pipe_next;
reg [PIPELINE-1:0] op_internal_pipe_reg = {PIPELINE{1'b0}}, op_internal_pipe_next;

reg [PACKET_WIDTH-1:0] queue_pktlength_pipeline_reg[PIPELINE-1:0],queue_pktlength_pipeline_next[PIPELINE-1:0];
reg [PER_PRIORITY_WIDTH-1:0] queue_priority_pipeline_reg[PIPELINE-1:0],queue_priority_pipeline_next[PIPELINE-1:0];
reg [QUEUE_INDEX_WIDTH-1:0] queue_ram_addr_pipeline_reg[PIPELINE-1:0], queue_ram_addr_pipeline_next[PIPELINE-1:0];
reg [AXIL_DATA_WIDTH-1:0] write_data_pipeline_reg[PIPELINE-1:0], write_data_pipeline_next[PIPELINE-1:0];
reg [AXIL_STRB_WIDTH-1:0] write_strobe_pipeline_reg[PIPELINE-1:0], write_strobe_pipeline_next[PIPELINE-1:0];
reg [REQ_TAG_WIDTH-1:0] req_tag_pipeline_reg[PIPELINE-1:0], req_tag_pipeline_next[PIPELINE-1:0];
reg [CL_OP_TABLE_SIZE-1:0] op_index_pipeline_reg[PIPELINE-1:0], op_index_pipeline_next[PIPELINE-1:0];

reg [QUEUE_INDEX_WIDTH-1:0] m_axis_tx_req_queue_reg = {QUEUE_INDEX_WIDTH{1'b0}}, m_axis_tx_req_queue_next;
reg [REQ_TAG_WIDTH-1:0] m_axis_tx_req_tag_reg = {REQ_TAG_WIDTH{1'b0}}, m_axis_tx_req_tag_next;
reg m_axis_tx_req_valid_reg = 1'b0, m_axis_tx_req_valid_next;

reg s_axis_sched_ctrl_ready_reg = 1'b0, s_axis_sched_ctrl_ready_next;

reg s_axil_awready_reg = 0, s_axil_awready_next;
reg s_axil_wready_reg = 0, s_axil_wready_next;
reg s_axil_bvalid_reg = 0, s_axil_bvalid_next;
reg s_axil_arready_reg = 0, s_axil_arready_next;
reg [AXIL_DATA_WIDTH-1:0] s_axil_rdata_reg = 0, s_axil_rdata_next;
reg s_axil_rvalid_reg = 0, s_axil_rvalid_next;

(* ramstyle = "no_rw_check" *)
reg [QUEUE_RAM_WIDTH-1:0] queue_ram[QUEUE_COUNT-1:0];
reg [QUEUE_INDEX_WIDTH-1:0] queue_ram_read_ptr;
reg [QUEUE_INDEX_WIDTH-1:0] queue_ram_write_ptr;
reg [QUEUE_RAM_WIDTH-1:0] queue_ram_write_data;
reg queue_ram_wr_en;
reg [QUEUE_RAM_BE_WIDTH-1:0] queue_ram_be;
reg [QUEUE_RAM_WIDTH-1:0] queue_ram_read_data_reg = 0;
reg [QUEUE_RAM_WIDTH-1:0] queue_ram_read_data_pipeline_reg[PIPELINE-1:1];

wire queue_ram_read_data_enabled = queue_ram_read_data_pipeline_reg[PIPELINE-1][0];
wire queue_ram_read_data_global_enable = queue_ram_read_data_pipeline_reg[PIPELINE-1][1];
wire queue_ram_read_data_sched_enable = queue_ram_read_data_pipeline_reg[PIPELINE-1][2];
wire queue_ram_read_data_active = queue_ram_read_data_pipeline_reg[PIPELINE-1][6];
wire queue_ram_read_data_scheduled = queue_ram_read_data_pipeline_reg[PIPELINE-1][7];
wire [CL_OP_TABLE_SIZE-1:0] queue_ram_read_data_op_tail_index = queue_ram_read_data_pipeline_reg[PIPELINE-1][15:8];

reg [OP_TABLE_SIZE-1:0] op_table_active = 0;
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [QUEUE_INDEX_WIDTH-1:0] op_table_queue[OP_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg op_table_doorbell[OP_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg op_table_is_head[OP_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [CL_OP_TABLE_SIZE-1:0] op_table_next_index[OP_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [CL_OP_TABLE_SIZE-1:0] op_table_prev_index[OP_TABLE_SIZE-1:0];
wire [CL_OP_TABLE_SIZE-1:0] op_table_start_ptr;
wire op_table_start_ptr_valid;
reg [QUEUE_INDEX_WIDTH-1:0] op_table_start_queue;
reg op_table_start_en;
reg [CL_OP_TABLE_SIZE-1:0] op_table_doorbell_ptr;
reg op_table_doorbell_en;
reg [CL_OP_TABLE_SIZE-1:0] op_table_release_ptr;
reg op_table_release_en;
reg [CL_OP_TABLE_SIZE-1:0] op_table_update_next_ptr;
reg [CL_OP_TABLE_SIZE-1:0] op_table_update_next_index;
reg op_table_update_next_en;
reg [CL_OP_TABLE_SIZE-1:0] op_table_update_prev_ptr;
reg [CL_OP_TABLE_SIZE-1:0] op_table_update_prev_index;
reg op_table_update_prev_is_head;
reg op_table_update_prev_en;

reg [CL_OP_TABLE_SIZE+1-1:0] finish_fifo_wr_ptr_reg = 0, finish_fifo_wr_ptr_next;
reg [CL_OP_TABLE_SIZE+1-1:0] finish_fifo_rd_ptr_reg = 0, finish_fifo_rd_ptr_next;
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [REQ_TAG_WIDTH-1:0] finish_fifo_tag[(2**CL_OP_TABLE_SIZE)-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg finish_fifo_status[(2**CL_OP_TABLE_SIZE)-1:0];
reg finish_fifo_we;
reg [REQ_TAG_WIDTH-1:0] finish_fifo_wr_tag;
reg finish_fifo_wr_status;

reg [CL_OP_TABLE_SIZE-1:0] finish_ptr_reg = {CL_OP_TABLE_SIZE{1'b0}}, finish_ptr_next;
reg finish_status_reg = 1'b0, finish_status_next;
reg finish_valid_reg = 1'b0, finish_valid_next;

reg init_reg = 1'b0, init_next;
reg [QUEUE_INDEX_WIDTH-1:0] init_index_reg = 0, init_index_next;

reg [QUEUE_INDEX_WIDTH:0] active_queue_count_reg = 0, active_queue_count_next;

assign m_axis_tx_req_queue = m_axis_tx_req_queue_reg;
assign m_axis_tx_req_tag = m_axis_tx_req_tag_reg;
assign m_axis_tx_req_valid = m_axis_tx_req_valid_reg;

assign s_axis_sched_ctrl_ready = s_axis_sched_ctrl_ready_reg;

assign s_axil_awready = s_axil_awready_reg;
assign s_axil_wready = s_axil_wready_reg;
assign s_axil_bresp = 2'b00;
assign s_axil_bvalid = s_axil_bvalid_reg;
assign s_axil_arready = s_axil_arready_reg;
assign s_axil_rdata = s_axil_rdata_reg;
assign s_axil_rresp = 2'b00;
assign s_axil_rvalid = s_axil_rvalid_reg;

assign active = active_queue_count_reg != 0;

wire [QUEUE_INDEX_WIDTH-1:0] s_axil_awaddr_queue = s_axil_awaddr >> 2;
wire [QUEUE_INDEX_WIDTH-1:0] s_axil_araddr_queue = s_axil_araddr >> 2;

wire queue_tail_active = op_table_active[queue_ram_read_data_op_tail_index] && op_table_queue[queue_ram_read_data_op_tail_index] == queue_ram_addr_pipeline_reg[PIPELINE-1];

wire [QUEUE_INDEX_WIDTH-1:0] axis_doorbell_fifo_queue;
wire [PER_PRIORITY_WIDTH-1:0] axis_doorbell_fifo_priority;
wire [PACKET_WIDTH-1:0] axis_doorbell_fifo_pktlength;
wire axis_doorbell_fifo_valid;
reg axis_doorbell_fifo_ready;
reg [QUEUE_COUNT-1:0]pifo_pop_signal;

metadata_store #(
    .DEPTH_PER_FIFO(16),
    .PRIORITY_WIDTH(PRIORITY_WIDTH),
    .PACKET_WIDTH(PACKET_WIDTH),
    .QUEUE_COUNT(QUEUE_COUNT),
    .QUEUE_INDEX_WIDTH(QUEUE_INDEX_WIDTH)
) metadata_store (
    .clk(clk),
    .rst(rst),
    //Doorbell input
    .s_axis_doorbell_queue(s_axis_doorbell_queue),
    .s_axis_doorbell_valid(s_axis_doorbell_valid),
    .s_axis_doorbell_priority(s_axis_doorbell_priority),
    .s_axis_doorbell_pkt_length(s_axis_doorbell_pkt_length),
    //Doorbell output
    .m_axis_doorbell_queue(axis_doorbell_fifo_queue),
    .m_axis_doorbell_valid(axis_doorbell_fifo_valid),
    .m_axis_doorbell_priority(axis_doorbell_fifo_priority),
    .m_axis_doorbell_pkt_length(axis_doorbell_fifo_pktlength),
    .m_axis_doorbell_fifo_ready(axis_doorbell_fifo_ready),
    //PIFO pop signal
    .pifo_pop_signal(pifo_pop_signal)
);

reg [QUEUE_INDEX_WIDTH-1:0] axis_scheduler_pifo_in_queue;
reg [PER_PRIORITY_WIDTH-1:0] axis_scheduler_pifo_in_priority;
reg [TREE_NUM_BITS-1:0] axis_scheduler_pifo_in_treeid;
reg [PACKET_WIDTH-1:0] axis_scheduler_pifo_in_pktlength;
reg [TREE_NUM_BITS-1:0] axis_scheduler_pifo_in_reference;
reg axis_scheduler_pifo_in_valid;
wire axis_scheduler_pifo_in_ready;

wire [QUEUE_INDEX_WIDTH-1:0] axis_scheduler_pifo_out_queue;
wire [PER_PRIORITY_WIDTH-1:0] axis_scheduler_pifo_out_priority;
wire [TREE_NUM_BITS-1:0] axis_scheduler_pifo_out_treeid;
wire [PACKET_WIDTH-1:0] axis_scheduler_pifo_out_pktlength;
wire axis_scheduler_pifo_out_valid;
reg axis_scheduler_pifo_out_ready;

//TRICO_TREE_TOP
trico_tree_top #(
    .PTW(PER_PRIORITY_WIDTH),
    .TREE_NUM_BITS(TREE_NUM_BITS),
    .QUEUE_INDEX_WIDTH(QUEUE_INDEX_WIDTH),
    .MTW(2+QUEUE_INDEX_WIDTH), 
    .PLW(PACKET_WIDTH)
)
trico_tree (
    .i_clk(clk),
    .i_arst_n(!rst),

    // AXI input
    .i_push_data({axis_scheduler_pifo_in_reference,axis_scheduler_pifo_in_queue,axis_scheduler_pifo_in_pktlength,axis_scheduler_pifo_in_priority}),
    .i_push(axis_scheduler_pifo_in_valid),
    .i_push_tree_id(axis_scheduler_pifo_in_treeid),
    // AXI output
    .o_pop_data({axis_scheduler_pifo_out_treeid,axis_scheduler_pifo_out_queue,axis_scheduler_pifo_out_pktlength,axis_scheduler_pifo_out_priority}),
    .o_pop_out_ready(axis_scheduler_pifo_out_valid),
    .i_pop(axis_scheduler_pifo_out_ready)
);

priority_encoder #(
    .WIDTH(OP_TABLE_SIZE),
    .LSB_HIGH_PRIORITY(1)
)
op_table_start_enc_inst (
    .input_unencoded(~op_table_active),
    .output_valid(op_table_start_ptr_valid),
    .output_encoded(op_table_start_ptr),
    .output_unencoded()
);

integer i, j;
reg [1:0]timex;
reg [1:0]timey;

initial begin
    // break up loop to work around iteration termination
    // init priority table
    for (i = 0; i < 2**QUEUE_INDEX_WIDTH; i = i + 2**(QUEUE_INDEX_WIDTH/2)) begin
        for (j = i; j < i + 2**(QUEUE_INDEX_WIDTH/2); j = j + 1) begin
            queue_ram[j] = 0;
            pifo_pop_signal[j] = 0;
        end
    end

    for (i = 0; i < PIPELINE; i = i + 1) begin
        queue_priority_pipeline_reg[i] = 0;
        queue_pktlength_pipeline_reg[i] = 0;
        queue_ram_addr_pipeline_reg[i] = 0;
        write_data_pipeline_reg[i] = 0;
        write_strobe_pipeline_reg[i] = 0;
        req_tag_pipeline_reg[i] = 0;
    end

    for (i = 0; i < OP_TABLE_SIZE; i = i + 1) begin
        op_table_queue[i] = 0;
        op_table_next_index[i] = 0;
        op_table_prev_index[i] = 0;
        op_table_doorbell[i] = 0;
        op_table_is_head[i] = 0;
    end
    timex = 0;
    timey = 0;
end


always @* begin
    op_axil_write_pipe_next = {op_axil_write_pipe_reg, 1'b0};
    op_axil_read_pipe_next = {op_axil_read_pipe_reg, 1'b0};
    op_doorbell_pipe_next = {op_doorbell_pipe_reg, 1'b0};
    op_req_pipe_next = {op_req_pipe_reg, 1'b0};
    op_complete_pipe_next = {op_complete_pipe_reg, 1'b0};
    op_ctrl_pipe_next = {op_ctrl_pipe_reg, 1'b0};
    op_internal_pipe_next = {op_internal_pipe_reg, 1'b0};

    queue_priority_pipeline_next[0] = 0;
    queue_pktlength_pipeline_next[0] = 0;
    queue_ram_addr_pipeline_next[0] = 0;
    write_data_pipeline_next[0] = 0;
    write_strobe_pipeline_next[0] = 0;
    req_tag_pipeline_next[0] = 0;
    op_index_pipeline_next[0] = 0;
    
    for (j = 1; j < PIPELINE; j = j + 1) begin
        queue_priority_pipeline_next[j] = queue_priority_pipeline_reg[j-1];
        queue_pktlength_pipeline_next[j] = queue_pktlength_pipeline_reg[j-1];
        queue_ram_addr_pipeline_next[j] = queue_ram_addr_pipeline_reg[j-1];
        write_data_pipeline_next[j] = write_data_pipeline_reg[j-1];
        write_strobe_pipeline_next[j] = write_strobe_pipeline_reg[j-1];
        req_tag_pipeline_next[j] = req_tag_pipeline_reg[j-1];
        op_index_pipeline_next[j] = op_index_pipeline_reg[j-1];
    end

    m_axis_tx_req_queue_next = m_axis_tx_req_queue_reg;
    m_axis_tx_req_tag_next = m_axis_tx_req_tag_reg;
    m_axis_tx_req_valid_next = m_axis_tx_req_valid_reg && !m_axis_tx_req_ready; //

    s_axis_sched_ctrl_ready_next = 1'b0;

    s_axil_awready_next = 1'b0;
    s_axil_wready_next = 1'b0;
    s_axil_bvalid_next = s_axil_bvalid_reg && !s_axil_bready; //

    s_axil_arready_next = 1'b0;
    s_axil_rdata_next = s_axil_rdata_reg;
    s_axil_rvalid_next = s_axil_rvalid_reg && !s_axil_rready; //

    queue_ram_read_ptr = 0;
    queue_ram_write_ptr = queue_ram_addr_pipeline_reg[PIPELINE-1];
    queue_ram_write_data = queue_ram_read_data_pipeline_reg[PIPELINE-1];
    queue_ram_wr_en = 0;
    queue_ram_be = 0;

    op_table_start_queue = queue_ram_addr_pipeline_reg[PIPELINE-1];
    op_table_start_en = 1'b0;
    op_table_doorbell_ptr = queue_ram_read_data_op_tail_index;
    op_table_doorbell_en = 1'b0;
    op_table_release_ptr = op_index_pipeline_reg[PIPELINE-1];
    op_table_release_en = 1'b0;
    op_table_update_next_ptr = queue_ram_read_data_op_tail_index;
    op_table_update_next_index = op_index_pipeline_reg[PIPELINE-1];
    op_table_update_next_en = 1'b0;
    op_table_update_prev_ptr = op_index_pipeline_reg[PIPELINE-1];
    op_table_update_prev_index = queue_ram_read_data_op_tail_index;
    op_table_update_prev_is_head = !(queue_tail_active && op_index_pipeline_reg[PIPELINE-1] != queue_ram_read_data_op_tail_index);
    op_table_update_prev_en = 1'b0;

    finish_fifo_rd_ptr_next = finish_fifo_rd_ptr_reg;
    finish_fifo_wr_ptr_next = finish_fifo_wr_ptr_reg;
    finish_fifo_we = 1'b0;
    finish_fifo_wr_tag = s_axis_tx_req_status_tag;
    finish_fifo_wr_status = s_axis_tx_req_status_len != 0;

    finish_ptr_next = finish_ptr_reg;
    finish_status_next = finish_status_reg;
    finish_valid_next = finish_valid_reg;

    init_next = init_reg;
    init_index_next = init_index_reg;

    active_queue_count_next = active_queue_count_reg;

    axis_doorbell_fifo_ready = 1'b0;

    axis_scheduler_pifo_in_queue = queue_ram_addr_pipeline_reg[PIPELINE-1];
    axis_scheduler_pifo_in_valid = 1'b0;
    axis_scheduler_pifo_in_treeid = 2'b0;
    axis_scheduler_pifo_in_pktlength = {PACKET_WIDTH{1'b1}};
    axis_scheduler_pifo_in_reference = {TREE_NUM_BITS{1'b1}};
    axis_scheduler_pifo_in_priority = {PER_PRIORITY_WIDTH{1'b1}};
    
    axis_scheduler_pifo_out_ready = 1'b0;

    op_axil_write_pipe_hazard = 1'b0;
    op_axil_read_pipe_hazard = 1'b0;
    op_doorbell_pipe_hazard = 1'b0;
    op_req_pipe_hazard = 1'b0;
    op_complete_pipe_hazard = 1'b0;
    op_ctrl_pipe_hazard = 1'b0;
    op_internal_pipe_hazard = 1'b0;
    stage_active = 1'b0;

    for (j = 0; j < PIPELINE; j = j + 1) begin
        stage_active = op_axil_write_pipe_reg[j] || op_axil_read_pipe_reg[j] || op_doorbell_pipe_reg[j] || op_req_pipe_reg[j] || op_complete_pipe_reg[j] || op_ctrl_pipe_reg[j] || op_internal_pipe_reg[j];
        op_axil_write_pipe_hazard = op_axil_write_pipe_hazard || (stage_active && queue_ram_addr_pipeline_reg[j] == s_axil_awaddr_queue);
        op_axil_read_pipe_hazard = op_axil_read_pipe_hazard || (stage_active && queue_ram_addr_pipeline_reg[j] == s_axil_araddr_queue);
        op_doorbell_pipe_hazard = op_doorbell_pipe_hazard || (stage_active && queue_ram_addr_pipeline_reg[j] == axis_doorbell_fifo_queue);
        op_req_pipe_hazard = op_req_pipe_hazard || (stage_active && queue_ram_addr_pipeline_reg[j] == axis_scheduler_pifo_out_queue);
        op_complete_pipe_hazard = op_complete_pipe_hazard || (stage_active && queue_ram_addr_pipeline_reg[j] == op_table_queue[finish_ptr_reg]);
        op_ctrl_pipe_hazard = op_ctrl_pipe_hazard || (stage_active && queue_ram_addr_pipeline_reg[j] == s_axis_sched_ctrl_queue);
        op_internal_pipe_hazard = op_internal_pipe_hazard || (stage_active && queue_ram_addr_pipeline_reg[j] == init_index_reg);
    end

    // pipeline stage 0 - receive request
    if (!init_reg && !op_internal_pipe_hazard) begin
        // init queue states
        op_internal_pipe_next[0] = 1'b1;

        init_index_next = init_index_reg + 1;

        queue_ram_read_ptr = init_index_reg;
        queue_ram_addr_pipeline_next[0] = init_index_reg;

        if (init_index_reg == {QUEUE_INDEX_WIDTH{1'b1}}) begin
            init_next = 1'b1;
        end
    end else if (s_axil_awvalid && s_axil_wvalid && (!s_axil_bvalid || s_axil_bready) && !op_axil_write_pipe_reg && !op_axil_write_pipe_hazard) begin
        // AXIL write
        op_axil_write_pipe_next[0] = 1'b1;

        s_axil_awready_next = 1'b1;
        s_axil_wready_next = 1'b1;

        write_data_pipeline_next[0] = s_axil_wdata;
        write_strobe_pipeline_next[0] = s_axil_wstrb;

        queue_ram_read_ptr = s_axil_awaddr_queue;
        queue_ram_addr_pipeline_next[0] = s_axil_awaddr_queue;
    end else if (s_axil_arvalid && (!s_axil_rvalid || s_axil_rready) && !op_axil_read_pipe_reg && !op_axil_read_pipe_hazard) begin
        // AXIL read
        op_axil_read_pipe_next[0] = 1'b1;

        s_axil_arready_next = 1'b1;

        queue_ram_read_ptr = s_axil_araddr_queue;
        queue_ram_addr_pipeline_next[0] = s_axil_araddr_queue;
    end else if (axis_doorbell_fifo_valid && !op_doorbell_pipe_hazard && timex==2'b00) begin
        // handle doorbell
        op_doorbell_pipe_next[0] = 1'b1;

        axis_doorbell_fifo_ready = 1'b1;
        timex = 2'b10;
        queue_ram_read_ptr = axis_doorbell_fifo_queue;
        queue_ram_addr_pipeline_next[0] = axis_doorbell_fifo_queue;
        queue_priority_pipeline_next[0] = axis_doorbell_fifo_priority;
        queue_pktlength_pipeline_next[0] = axis_doorbell_fifo_pktlength;
    end else if (finish_valid_reg && !op_complete_pipe_reg[0] && !op_complete_pipe_hazard) begin
        // transmit complete
        op_complete_pipe_next[0] = 1'b1;

        write_data_pipeline_next[0][0] = finish_status_reg || op_table_doorbell[finish_ptr_reg];
        op_index_pipeline_next[0] = finish_ptr_reg;

        finish_valid_next = 1'b0;

        queue_ram_read_ptr = op_table_queue[finish_ptr_reg];
        queue_ram_addr_pipeline_next[0] = op_table_queue[finish_ptr_reg];
    end else if (SCHED_CTRL_ENABLE && s_axis_sched_ctrl_valid && !op_ctrl_pipe_reg[0] && !op_ctrl_pipe_hazard) begin
        // Scheduler control
        op_ctrl_pipe_next[0] = 1'b1;

        s_axis_sched_ctrl_ready_next = 1'b1;

        write_data_pipeline_next[0] = s_axis_sched_ctrl_enable;

        queue_ram_read_ptr = s_axis_sched_ctrl_queue;
        queue_ram_addr_pipeline_next[0] = s_axis_sched_ctrl_queue;
    end else if (timey==2'b00&&1 && 1 && axis_scheduler_pifo_out_valid && (!m_axis_tx_req_valid || m_axis_tx_req_ready) && !op_req_pipe_reg && !op_req_pipe_hazard) begin
        // transmit request
        op_req_pipe_next[0] = 1'b1;
        timey = 2'b11;
        op_table_start_en = 1'b1;
        op_table_start_queue = axis_scheduler_pifo_out_queue;

        op_index_pipeline_next[0] = op_table_start_ptr;
        //TRICO-METADATASTORE RESET TAG

        axis_scheduler_pifo_out_ready = 1'b1;
        queue_ram_read_ptr = axis_scheduler_pifo_out_queue;
        queue_ram_addr_pipeline_next[0] = axis_scheduler_pifo_out_queue;
        queue_priority_pipeline_next[0] = axis_scheduler_pifo_out_priority;
        queue_pktlength_pipeline_next[0] = axis_scheduler_pifo_out_pktlength;
    end

    // read complete, perform operation
    if (op_internal_pipe_reg[PIPELINE-1]) begin
        // internal operation

        // init queue state
        queue_ram_write_ptr = queue_ram_addr_pipeline_reg[PIPELINE-1];
        queue_ram_write_data[0] = 1'b0; // queue enabled
        if (SCHED_CTRL_ENABLE) begin
            queue_ram_write_data[1] = 1'b0; // queue global enable
            queue_ram_write_data[2] = 1'b0; // queue sched enable
        end
        queue_ram_write_data[6] = 1'b0; // queue active
        queue_ram_write_data[7] = 1'b0; // queue scheduled
        queue_ram_be[0] = 1'b1;
        queue_ram_wr_en = 1'b1;
    end else if (op_doorbell_pipe_reg[PIPELINE-1]) begin
        // handle doorbell

        // mark queue active
        // mark queue priority
        queue_ram_write_ptr = queue_ram_addr_pipeline_reg[PIPELINE-1];
        queue_ram_write_data[6] = 1'b1; // queue active
        queue_ram_be[0] = 1'b1;
        queue_ram_wr_en = 1'b1;

        // schedule queue if necessary
        if (1 && (!SCHED_CTRL_ENABLE || 1 || queue_ram_read_data_sched_enable) && 1) begin
//        if (queue_ram_read_data_enabled && (!SCHED_CTRL_ENABLE || queue_ram_read_data_global_enable || queue_ram_read_data_sched_enable) && !queue_ram_read_data_scheduled) begin
            queue_ram_write_data[7] = 1'b1; // queue scheduled
            
            axis_scheduler_pifo_in_queue = queue_ram_addr_pipeline_reg[PIPELINE-1];
            axis_scheduler_pifo_in_priority = queue_priority_pipeline_reg[PIPELINE-1];
            axis_scheduler_pifo_in_pktlength = queue_pktlength_pipeline_reg[PIPELINE-1];
            if(axis_scheduler_pifo_in_queue<=32&&axis_scheduler_pifo_in_queue>=0)begin
                axis_scheduler_pifo_in_treeid = 1;
                axis_scheduler_pifo_in_reference = 0;
            end else if(axis_scheduler_pifo_in_queue>32&&axis_scheduler_pifo_in_queue<=61)begin
                axis_scheduler_pifo_in_treeid = 2;
                axis_scheduler_pifo_in_reference = 0;
            end else if(axis_scheduler_pifo_in_queue==62)begin
                axis_scheduler_pifo_in_treeid = 0;
                axis_scheduler_pifo_in_reference = 1;
            end else begin//63
                axis_scheduler_pifo_in_treeid = 0;
                axis_scheduler_pifo_in_reference = 2;
            end
            
            axis_scheduler_pifo_in_valid = 1'b1;

            active_queue_count_next = active_queue_count_reg + 1;
        end

        if (queue_tail_active) begin
            // record doorbell in table so we don't lose it
            op_table_doorbell_ptr = queue_ram_read_data_op_tail_index;
            op_table_doorbell_en = 1'b1;
        end
    end else if (op_req_pipe_reg[PIPELINE-1]) begin
        // transmit request
        m_axis_tx_req_queue_next = queue_ram_addr_pipeline_reg[PIPELINE-1];
        m_axis_tx_req_tag_next = op_index_pipeline_reg[PIPELINE-1];
        axis_scheduler_pifo_in_queue = queue_ram_addr_pipeline_reg[PIPELINE-1];
        axis_scheduler_pifo_in_priority = queue_priority_pipeline_reg[PIPELINE-1];
        axis_scheduler_pifo_in_pktlength = 0;
        // update state
        queue_ram_write_ptr = queue_ram_addr_pipeline_reg[PIPELINE-1];
        queue_ram_write_data[15:8] = op_index_pipeline_reg[PIPELINE-1]; // tail index
        queue_ram_be[0] = 1'b1;
        queue_ram_wr_en = 1'b1;
        // TODO: should we lock the priority-wr-enable?

        op_table_update_prev_ptr = op_index_pipeline_reg[PIPELINE-1];
        op_table_update_prev_index = queue_ram_read_data_op_tail_index;
        op_table_update_prev_is_head = !(queue_tail_active && op_index_pipeline_reg[PIPELINE-1] != queue_ram_read_data_op_tail_index);

        op_table_update_next_ptr = queue_ram_read_data_op_tail_index;
        op_table_update_next_index = op_index_pipeline_reg[PIPELINE-1];
        if (1 && (!SCHED_CTRL_ENABLE || 1 || queue_ram_read_data_sched_enable) && 1 && 1) begin
//        if (queue_ram_read_data_enabled && (!SCHED_CTRL_ENABLE || queue_ram_read_data_global_enable || queue_ram_read_data_sched_enable) && queue_ram_read_data_active && queue_ram_read_data_scheduled) begin
            // queue enabled, active, and scheduled
        pifo_pop_signal[queue_ram_write_ptr] = ~pifo_pop_signal[queue_ram_write_ptr];
        pifo_pop_signal[62] = (queue_ram_write_ptr<=32&&queue_ram_write_ptr>=0)?~pifo_pop_signal[62]:pifo_pop_signal[62];
        pifo_pop_signal[63] = (queue_ram_write_ptr>32&&queue_ram_write_ptr<=61)?~pifo_pop_signal[63]:pifo_pop_signal[63];

            // issue transmit request
            m_axis_tx_req_valid_next = 1'b1;

            // reschedule
            // for higher performance, we must assume the queue is not empty,until its feedback
            axis_scheduler_pifo_in_valid = 1'b0;

            // update state
            queue_ram_write_data[7] = 1'b0; // queue scheduled
            queue_ram_be[1] = 1'b1; // tail index

            op_table_update_prev_en = 1'b1;
            op_table_update_next_en = queue_tail_active && op_index_pipeline_reg[PIPELINE-1] != queue_ram_read_data_op_tail_index;
        end else begin
            // queue not enabled, not active, or not scheduled
            // deschedule queue
            op_table_release_ptr = op_index_pipeline_reg[PIPELINE-1];
            op_table_release_en = 1'b1;

            // update state
            queue_ram_write_data[7] = 1'b0; // queue scheduled

            if (queue_ram_read_data_scheduled) begin
                active_queue_count_next = active_queue_count_reg - 1;
            end
        end
    end else if (op_complete_pipe_reg[PIPELINE-1]) begin
        // tx complete

        // update state
        queue_ram_write_ptr = queue_ram_addr_pipeline_reg[PIPELINE-1];
        queue_ram_be[0] = 1'b1;
        queue_ram_wr_en = 1'b1;

        op_table_update_prev_ptr = op_table_next_index[op_index_pipeline_reg[PIPELINE-1]];
        op_table_update_prev_index = op_table_prev_index[op_index_pipeline_reg[PIPELINE-1]];
        op_table_update_prev_is_head = op_table_is_head[op_index_pipeline_reg[PIPELINE-1]];
        op_table_update_prev_en = op_index_pipeline_reg[PIPELINE-1] != queue_ram_read_data_op_tail_index; // our next pointer only valid if we're not the tail

        op_table_update_next_ptr = op_table_prev_index[op_index_pipeline_reg[PIPELINE-1]];
        op_table_update_next_index = op_table_next_index[op_index_pipeline_reg[PIPELINE-1]];
        op_table_update_next_en = !op_table_is_head[op_index_pipeline_reg[PIPELINE-1]]; // our prev index only valid if we're not the head element

        op_table_doorbell_ptr = op_table_prev_index[op_index_pipeline_reg[PIPELINE-1]];
        op_table_doorbell_en = !op_table_is_head[op_index_pipeline_reg[PIPELINE-1]] && op_table_doorbell[op_index_pipeline_reg[PIPELINE-1]];;

        op_table_release_ptr = op_index_pipeline_reg[PIPELINE-1];
        op_table_release_en = 1'b1;

        if (write_data_pipeline_reg[PIPELINE-1][0]) begin
            queue_ram_write_data[6] = 1'b1; // queue active

            // schedule if disabled
            if ((!SCHED_CTRL_ENABLE || write_data_pipeline_reg[PIPELINE-1][1] || queue_ram_read_data_sched_enable) && !queue_ram_read_data_scheduled) begin
                queue_ram_write_data[7] = 1'b0; // queue scheduled

                axis_scheduler_pifo_in_queue = queue_ram_addr_pipeline_reg[PIPELINE-1];
                axis_scheduler_pifo_in_valid = 1'b0;

//                active_queue_count_next = active_queue_count_reg + 1;
            end
        end else begin
            queue_ram_write_data[6] = 1'b0; // queue active
        end
    end else if (SCHED_CTRL_ENABLE && op_ctrl_pipe_reg[PIPELINE-1]) begin // enable is =0,so the circuit is died
        // Scheduler control
        queue_ram_write_ptr = queue_ram_addr_pipeline_reg[PIPELINE-1];
        queue_ram_wr_en = 1'b1;

        queue_ram_write_data[2] = write_data_pipeline_reg[PIPELINE-1][0]; // queue sched enable
        queue_ram_be[0] = 1'b1;

        // schedule if disabled
        if (queue_ram_read_data_enabled && queue_ram_read_data_active && (queue_ram_read_data_global_enable || write_data_pipeline_reg[PIPELINE-1][0]) && !queue_ram_read_data_scheduled) begin
            queue_ram_write_data[7] = 1'b1; // queue scheduled

            axis_scheduler_pifo_in_queue = queue_ram_addr_pipeline_reg[PIPELINE-1];
            axis_scheduler_pifo_in_priority = queue_ram_read_data_pipeline_reg[PIPELINE-1][27:16];
            axis_scheduler_pifo_in_valid = 1'b1;

            active_queue_count_next = active_queue_count_reg + 1;
        end
    end else if (op_axil_write_pipe_reg[PIPELINE-1]) begin
        // AXIL write
        s_axil_bvalid_next = 1'b1;

        queue_ram_write_ptr = queue_ram_addr_pipeline_reg[PIPELINE-1];
        queue_ram_wr_en = 1'b1;

        queue_ram_write_data[0] = write_data_pipeline_reg[PIPELINE-1][0]; // queue enabled
        queue_ram_write_data[1] = write_data_pipeline_reg[PIPELINE-1][1]; // queue global enable
        queue_ram_be[0] = write_strobe_pipeline_reg[PIPELINE-1][0];

        // schedule if disabled
        if (write_data_pipeline_reg[PIPELINE-1][0] && queue_ram_read_data_active && (!SCHED_CTRL_ENABLE || write_data_pipeline_reg[PIPELINE-1][1] || queue_ram_read_data_sched_enable) && !queue_ram_read_data_scheduled) begin
            queue_ram_write_data[7] = 1'b0; // queue scheduled

//            axis_scheduler_pifo_in_queue = queue_ram_addr_pipeline_reg[PIPELINE-1];
            axis_scheduler_pifo_in_valid = 1'b0;

//            active_queue_count_next = active_queue_count_reg + 1;
        end
    end else if (op_axil_read_pipe_reg[PIPELINE-1]) begin
        // AXIL read
        s_axil_rvalid_next = 1'b1;
        s_axil_rdata_next = 0;

        s_axil_rdata_next[0] = queue_ram_read_data_enabled;
        if (SCHED_CTRL_ENABLE) begin
            s_axil_rdata_next[1] = queue_ram_read_data_global_enable;
            s_axil_rdata_next[2] = queue_ram_read_data_sched_enable;
        end
        s_axil_rdata_next[16] = queue_ram_read_data_active;
        s_axil_rdata_next[24] = queue_ram_read_data_scheduled;
    end

    // finish transmit operation
    if (s_axis_tx_req_status_valid) begin
        finish_fifo_we = 1'b1;
        finish_fifo_wr_tag = s_axis_tx_req_status_tag;
        finish_fifo_wr_status = s_axis_tx_req_status_len != 0;
        finish_fifo_wr_ptr_next = finish_fifo_wr_ptr_reg + 1;
    end

    if (!finish_valid_reg && finish_fifo_wr_ptr_reg != finish_fifo_rd_ptr_reg) begin
        finish_ptr_next = finish_fifo_tag[finish_fifo_rd_ptr_reg[CL_OP_TABLE_SIZE-1:0]];
        finish_status_next = finish_fifo_status[finish_fifo_rd_ptr_reg[CL_OP_TABLE_SIZE-1:0]];
        finish_valid_next = 1'b1;
        finish_fifo_rd_ptr_next = finish_fifo_rd_ptr_reg + 1;
    end
end

always @(posedge clk) begin
    if (rst) begin
        op_axil_write_pipe_reg <= {PIPELINE{1'b0}};
        op_axil_read_pipe_reg <= {PIPELINE{1'b0}};
        op_doorbell_pipe_reg <= {PIPELINE{1'b0}};
        op_req_pipe_reg <= {PIPELINE{1'b0}};
        op_complete_pipe_reg <= {PIPELINE{1'b0}};
        op_ctrl_pipe_reg <= {PIPELINE{1'b0}};
        op_internal_pipe_reg <= {PIPELINE{1'b0}};

        finish_fifo_rd_ptr_reg <= {CL_OP_TABLE_SIZE+1{1'b0}};
        finish_fifo_wr_ptr_reg <= {CL_OP_TABLE_SIZE+1{1'b0}};

        finish_valid_reg <= 1'b0;

        m_axis_tx_req_valid_reg <= 1'b0;
        timex <=2'b00;
        timey <=2'b00;
        s_axis_sched_ctrl_ready_reg <= 1'b0;

        s_axil_awready_reg <= 1'b0;
        s_axil_wready_reg <= 1'b0;
        s_axil_bvalid_reg <= 1'b0;
        s_axil_arready_reg <= 1'b0;
        s_axil_rvalid_reg <= 1'b0;

        init_reg <= 1'b0;
        init_index_reg <= 0;

        active_queue_count_reg <= 0;

        op_table_active <= 0;
    end else begin
        op_axil_write_pipe_reg <= op_axil_write_pipe_next;
        op_axil_read_pipe_reg <= op_axil_read_pipe_next;
        op_doorbell_pipe_reg <= op_doorbell_pipe_next;
        op_req_pipe_reg <= op_req_pipe_next;
        op_complete_pipe_reg <= op_complete_pipe_next;
        op_ctrl_pipe_reg <= op_ctrl_pipe_next;
        op_internal_pipe_reg <= op_internal_pipe_next;

        finish_fifo_rd_ptr_reg <= finish_fifo_rd_ptr_next;
        finish_fifo_wr_ptr_reg <= finish_fifo_wr_ptr_next;
    
        finish_valid_reg <= finish_valid_next;

        m_axis_tx_req_valid_reg <= m_axis_tx_req_valid_next;

        s_axis_sched_ctrl_ready_reg <= s_axis_sched_ctrl_ready_next;

        s_axil_awready_reg <= s_axil_awready_next;
        s_axil_wready_reg <= s_axil_wready_next;
        s_axil_bvalid_reg <= s_axil_bvalid_next;
        s_axil_arready_reg <= s_axil_arready_next;
        s_axil_rvalid_reg <= s_axil_rvalid_next;

        init_reg <= init_next;
        init_index_reg <= init_index_next;

        active_queue_count_reg <= active_queue_count_next;

        if (op_table_start_en) begin
            op_table_active[op_table_start_ptr] <= 1'b1;
        end
        if (op_table_release_en) begin
            op_table_active[op_table_release_ptr] <= 1'b0;
        end
    end
        
        if(timex!=2'b00)timex <= timex - 2'b01;
        if(timey!=2'b00)timey <= timey - 2'b01;
        
    for (i = 0; i < PIPELINE; i = i + 1) begin
        queue_priority_pipeline_reg[i] <= queue_priority_pipeline_next[i];
        queue_pktlength_pipeline_reg[i] <= queue_pktlength_pipeline_next[i];
        queue_ram_addr_pipeline_reg[i] <= queue_ram_addr_pipeline_next[i];
        write_data_pipeline_reg[i] <= write_data_pipeline_next[i];
        write_strobe_pipeline_reg[i] <= write_strobe_pipeline_next[i];
        req_tag_pipeline_reg[i] <= req_tag_pipeline_next[i];
        op_index_pipeline_reg[i] <= op_index_pipeline_next[i];
    end

    finish_ptr_reg <= finish_ptr_next;
    finish_status_reg <= finish_status_next;

    m_axis_tx_req_queue_reg <= m_axis_tx_req_queue_next;
    m_axis_tx_req_tag_reg <= m_axis_tx_req_tag_next;

    s_axil_rdata_reg <= s_axil_rdata_next;

    if (queue_ram_wr_en) begin
        for (i = 0; i < QUEUE_RAM_BE_WIDTH; i = i + 1) begin
            if (queue_ram_be[i]) begin
                queue_ram[queue_ram_write_ptr][i*8 +: 8] <= queue_ram_write_data[i*8 +: 8];
            end
        end
    end
    queue_ram_read_data_reg <= queue_ram[queue_ram_read_ptr];
    queue_ram_read_data_pipeline_reg[1] <= queue_ram_read_data_reg;
    for (i = 2; i < PIPELINE; i = i + 1) begin
        queue_ram_read_data_pipeline_reg[i] <= queue_ram_read_data_pipeline_reg[i-1];
    end

    if (op_table_start_en) begin
        op_table_queue[op_table_start_ptr] <= op_table_start_queue;
        op_table_doorbell[op_table_start_ptr] <= 1'b0;
    end
    if (op_table_doorbell_en) begin
        op_table_doorbell[op_table_doorbell_ptr] <= 1'b1;
    end
    if (op_table_update_next_en) begin
        op_table_next_index[op_table_update_next_ptr] <= op_table_update_next_index;
    end
    if (op_table_update_prev_en) begin
        op_table_prev_index[op_table_update_prev_ptr] <= op_table_update_prev_index;
        op_table_is_head[op_table_update_prev_ptr] <= op_table_update_prev_is_head;
    end

    if (finish_fifo_we) begin
        finish_fifo_tag[finish_fifo_wr_ptr_reg[CL_OP_TABLE_SIZE-1:0]] <= finish_fifo_wr_tag;
        finish_fifo_status[finish_fifo_wr_ptr_reg[CL_OP_TABLE_SIZE-1:0]] <= finish_fifo_wr_status;
    end
end

endmodule

`resetall
