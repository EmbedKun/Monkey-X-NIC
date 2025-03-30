`timescale 1ns / 1ps

module tb_trico_top;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns
    parameter QUEUE_INDEX_WIDTH = 6;
    parameter PRIORITY_WIDTH = 6;
    parameter PACKET_WIDTH = 7;

    // Clock and Reset
    reg clk;
    reg rst;

    // Doorbell input signals
    reg [QUEUE_INDEX_WIDTH-1:0] s_axis_doorbell_queue;
    reg s_axis_doorbell_valid;
    reg [PRIORITY_WIDTH-1:0] s_axis_doorbell_priority;
    reg [PACKET_WIDTH-1:0] s_axis_doorbell_pkt_length;

    // Metadata Store output signals
    wire [QUEUE_INDEX_WIDTH-1:0] axis_doorbell_fifo_queue;
    wire [PRIORITY_WIDTH/2-1:0] axis_doorbell_fifo_priority;
    wire [PACKET_WIDTH-1:0] axis_doorbell_fifo_pktlength;
    wire axis_doorbell_fifo_valid;

    // AXI-Lite signals (not used in this test)
    reg [31:0] s_axil_awaddr;
    reg [2:0] s_axil_awprot;
    reg s_axil_awvalid;
    wire s_axil_awready;
    reg [31:0] s_axil_wdata;
    reg [3:0] s_axil_wstrb;
    reg s_axil_wvalid;
    wire s_axil_wready;
    wire [1:0] s_axil_bresp;
    wire s_axil_bvalid;
    reg s_axil_bready;
    reg [31:0] s_axil_araddr;
    reg [2:0] s_axil_arprot;
    reg s_axil_arvalid;
    wire s_axil_arready;
    wire [31:0] s_axil_rdata;
    wire [1:0] s_axil_rresp;
    wire s_axil_rvalid;
    reg s_axil_rready;

    // Transmit request signals (not used in this test)
    wire [QUEUE_INDEX_WIDTH-1:0] m_axis_tx_req_queue;
    wire [7:0] m_axis_tx_req_tag;
    wire m_axis_tx_req_valid;
    reg m_axis_tx_req_ready;

    // Transmit request status signals (not used in this test)
    reg [15:0] s_axis_tx_req_status_len;
    reg [7:0] s_axis_tx_req_status_tag;
    reg s_axis_tx_req_status_valid;

    // Scheduler control signals (not used in this test)
    reg [QUEUE_INDEX_WIDTH-1:0] s_axis_sched_ctrl_queue;
    reg s_axis_sched_ctrl_enable;
    reg s_axis_sched_ctrl_valid;
    wire s_axis_sched_ctrl_ready;
    wire out_ready;
    
    // Control signals
    reg enable;
    wire active;
wire [1:0]o_axis_scheduler_pifo_out_treeid    ;
wire [5:0]o_axis_scheduler_pifo_out_queue     ;
wire [6:0]o_axis_scheduler_pifo_out_pktlength ;
wire [2:0]o_axis_scheduler_pifo_out_priority  ;
wire      o_axis_scheduler_pifo_out_valid     ;
wire      o_axis_scheduler_pifo_out_ready     ;
    // Instantiate the test_trico_top module
    test_trico_top #(
        .QUEUE_INDEX_WIDTH(QUEUE_INDEX_WIDTH),
        .PRIORITY_WIDTH(PRIORITY_WIDTH),
        .PACKET_WIDTH(PACKET_WIDTH)
    ) uut (
        .clk(clk),
        .rst(rst),

        .m_axis_tx_req_queue(m_axis_tx_req_queue),
        .m_axis_tx_req_tag(m_axis_tx_req_tag),
        .m_axis_tx_req_valid(m_axis_tx_req_valid),
        .m_axis_tx_req_ready(m_axis_tx_req_ready),

        .s_axis_tx_req_status_len(s_axis_tx_req_status_len),
        .s_axis_tx_req_status_tag(s_axis_tx_req_status_tag),
        .s_axis_tx_req_status_valid(s_axis_tx_req_status_valid),

        .s_axis_doorbell_queue(s_axis_doorbell_queue),
        .s_axis_doorbell_valid(s_axis_doorbell_valid),
        .s_axis_doorbell_priority(s_axis_doorbell_priority),
        .s_axis_doorbell_pkt_length(s_axis_doorbell_pkt_length),

        .s_axis_sched_ctrl_queue(s_axis_sched_ctrl_queue),
        .s_axis_sched_ctrl_enable(s_axis_sched_ctrl_enable),
        .s_axis_sched_ctrl_valid(s_axis_sched_ctrl_valid),
        .s_axis_sched_ctrl_ready(s_axis_sched_ctrl_ready),

        .s_axil_awaddr(s_axil_awaddr),
        .s_axil_awprot(s_axil_awprot),
        .s_axil_awvalid(s_axil_awvalid),
        .s_axil_awready(s_axil_awready),
        .s_axil_wdata(s_axil_wdata),
        .s_axil_wstrb(s_axil_wstrb),
        .s_axil_wvalid(s_axil_wvalid),
        .s_axil_wready(s_axil_wready),
        .s_axil_bresp(s_axil_bresp),
        .s_axil_bvalid(s_axil_bvalid),
        .s_axil_bready(s_axil_bready),
        .s_axil_araddr(s_axil_araddr),
        .s_axil_arprot(s_axil_arprot),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_arready(s_axil_arready),
        .s_axil_rdata(s_axil_rdata),
        .s_axil_rresp(s_axil_rresp),
        .s_axil_rvalid(s_axil_rvalid),
        .s_axil_rready(s_axil_rready),

        .enable(enable),
        .active(active),

        .axis_doorbell_fifo_queue(axis_doorbell_fifo_queue),
        .axis_doorbell_fifo_priority(axis_doorbell_fifo_priority),
        .axis_doorbell_fifo_pktlength(axis_doorbell_fifo_pktlength),
        .axis_doorbell_fifo_valid(axis_doorbell_fifo_valid),
        .store_out_ready(out_ready),
        .o_axis_scheduler_pifo_out_treeid   (o_axis_scheduler_pifo_out_treeid   ),
        .o_axis_scheduler_pifo_out_queue    (o_axis_scheduler_pifo_out_queue    ),
        .o_axis_scheduler_pifo_out_pktlength(o_axis_scheduler_pifo_out_pktlength),
        .o_axis_scheduler_pifo_out_priority (o_axis_scheduler_pifo_out_priority ),
        .o_axis_scheduler_pifo_out_valid    (o_axis_scheduler_pifo_out_valid    ),
        .o_axis_scheduler_pifo_out_ready    (o_axis_scheduler_pifo_out_ready)
    );

    // Clock generation
    initial clk = 0;
    always #(CLK_PERIOD/2) clk = ~clk;

    // Test sequence
    initial begin
        // Initialize signals
        rst = 1;
        s_axis_doorbell_valid = 0;
        enable = 1; // Enable the module
        m_axis_tx_req_ready = 0;
        // Reset the module
        #(CLK_PERIOD*20);
        rst = 0;
        #(CLK_PERIOD*2);

        // Generate doorbell events
        $display("Starting doorbell events...");
        repeat (10) begin
            s_axis_doorbell_queue = $random % (1 << QUEUE_INDEX_WIDTH);
            s_axis_doorbell_priority = $random % (1 << PRIORITY_WIDTH);
            s_axis_doorbell_pkt_length = $random % (1 << PACKET_WIDTH);
            s_axis_doorbell_valid = 1;
            #(CLK_PERIOD);
            s_axis_doorbell_valid = 0;
            #(CLK_PERIOD*2); // Wait for metadata to propagate
        end

        // Wait for a few cycles
        #(CLK_PERIOD*1000);
            s_axis_doorbell_queue = 52;
            s_axis_doorbell_priority = $random % (1 << PRIORITY_WIDTH);
            s_axis_doorbell_pkt_length = $random % (1 << PACKET_WIDTH);
            s_axis_doorbell_valid = 1;
            #(CLK_PERIOD);
            s_axis_doorbell_valid = 0;
            #(CLK_PERIOD*2); // Wait for metadata to propagate
        // Finish simulation
        #(CLK_PERIOD*1000);
        $finish;
    end

    // Monitor metadata_store output
    always @(posedge clk) begin
        if (axis_doorbell_fifo_valid) begin
            $display("Metadata Store Output: Queue=%d, Priority=%d, PktLength=%d",
                     axis_doorbell_fifo_queue, axis_doorbell_fifo_priority, axis_doorbell_fifo_pktlength);
        end
    end

endmodule