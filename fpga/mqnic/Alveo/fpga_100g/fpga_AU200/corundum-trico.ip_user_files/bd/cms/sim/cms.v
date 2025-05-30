//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Wed Jan 15 01:16:59 2025
//Host        : playmaker-MZ32-AR0-00 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target cms.bd
//Design      : cms
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cms,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cms,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "cms.hwdef" *) 
module cms
   (aclk_ctrl_0,
    aresetn_ctrl_0,
    interrupt_host_0,
    qsfp0_int_l_0,
    qsfp0_lpmode_0,
    qsfp0_modprs_l_0,
    qsfp0_modsel_l_0,
    qsfp0_reset_l_0,
    qsfp1_int_l_0,
    qsfp1_lpmode_0,
    qsfp1_modprs_l_0,
    qsfp1_modsel_l_0,
    qsfp1_reset_l_0,
    s_axi_ctrl_0_araddr,
    s_axi_ctrl_0_arprot,
    s_axi_ctrl_0_arready,
    s_axi_ctrl_0_arvalid,
    s_axi_ctrl_0_awaddr,
    s_axi_ctrl_0_awprot,
    s_axi_ctrl_0_awready,
    s_axi_ctrl_0_awvalid,
    s_axi_ctrl_0_bready,
    s_axi_ctrl_0_bresp,
    s_axi_ctrl_0_bvalid,
    s_axi_ctrl_0_rdata,
    s_axi_ctrl_0_rready,
    s_axi_ctrl_0_rresp,
    s_axi_ctrl_0_rvalid,
    s_axi_ctrl_0_wdata,
    s_axi_ctrl_0_wready,
    s_axi_ctrl_0_wstrb,
    s_axi_ctrl_0_wvalid,
    satellite_gpio_0,
    satellite_uart_0_rxd,
    satellite_uart_0_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_CTRL_0, ASSOCIATED_BUSIF s_axi_ctrl_0, ASSOCIATED_RESET aresetn_ctrl_0, CLK_DOMAIN cms_aclk_ctrl_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk_ctrl_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_CTRL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_ctrl_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_HOST_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_HOST_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_host_0;
  input [0:0]qsfp0_int_l_0;
  output [0:0]qsfp0_lpmode_0;
  input [0:0]qsfp0_modprs_l_0;
  output [0:0]qsfp0_modsel_l_0;
  output [0:0]qsfp0_reset_l_0;
  input [0:0]qsfp1_int_l_0;
  output [0:0]qsfp1_lpmode_0;
  input [0:0]qsfp1_modprs_l_0;
  output [0:0]qsfp1_modsel_l_0;
  output [0:0]qsfp1_reset_l_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl_0, ADDR_WIDTH 18, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cms_aclk_ctrl_0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 1, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [17:0]s_axi_ctrl_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 ARPROT" *) input [2:0]s_axi_ctrl_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 ARREADY" *) output [0:0]s_axi_ctrl_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 ARVALID" *) input [0:0]s_axi_ctrl_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 AWADDR" *) input [17:0]s_axi_ctrl_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 AWPROT" *) input [2:0]s_axi_ctrl_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 AWREADY" *) output [0:0]s_axi_ctrl_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 AWVALID" *) input [0:0]s_axi_ctrl_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 BREADY" *) input [0:0]s_axi_ctrl_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 BRESP" *) output [1:0]s_axi_ctrl_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 BVALID" *) output [0:0]s_axi_ctrl_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 RDATA" *) output [31:0]s_axi_ctrl_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 RREADY" *) input [0:0]s_axi_ctrl_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 RRESP" *) output [1:0]s_axi_ctrl_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 RVALID" *) output [0:0]s_axi_ctrl_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 WDATA" *) input [31:0]s_axi_ctrl_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 WREADY" *) output [0:0]s_axi_ctrl_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 WSTRB" *) input [3:0]s_axi_ctrl_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl_0 WVALID" *) input [0:0]s_axi_ctrl_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.SATELLITE_GPIO_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.SATELLITE_GPIO_0, PortWidth 4, SENSITIVITY EDGE_RISING" *) input [3:0]satellite_gpio_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart_0 RxD" *) input satellite_uart_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 satellite_uart_0 TxD" *) output satellite_uart_0_txd;

  wire aclk_ctrl_0_1;
  wire aresetn_ctrl_0_1;
  wire cms_subsystem_0_interrupt_host;
  wire [0:0]cms_subsystem_0_qsfp0_lpmode;
  wire [0:0]cms_subsystem_0_qsfp0_modsel_l;
  wire [0:0]cms_subsystem_0_qsfp0_reset_l;
  wire [0:0]cms_subsystem_0_qsfp1_lpmode;
  wire [0:0]cms_subsystem_0_qsfp1_modsel_l;
  wire [0:0]cms_subsystem_0_qsfp1_reset_l;
  wire cms_subsystem_0_satellite_uart_RxD;
  wire cms_subsystem_0_satellite_uart_TxD;
  wire [0:0]qsfp0_int_l_0_1;
  wire [0:0]qsfp0_modprs_l_0_1;
  wire [0:0]qsfp1_int_l_0_1;
  wire [0:0]qsfp1_modprs_l_0_1;
  wire [17:0]s_axi_ctrl_0_1_ARADDR;
  wire [2:0]s_axi_ctrl_0_1_ARPROT;
  wire [0:0]s_axi_ctrl_0_1_ARREADY;
  wire [0:0]s_axi_ctrl_0_1_ARVALID;
  wire [17:0]s_axi_ctrl_0_1_AWADDR;
  wire [2:0]s_axi_ctrl_0_1_AWPROT;
  wire [0:0]s_axi_ctrl_0_1_AWREADY;
  wire [0:0]s_axi_ctrl_0_1_AWVALID;
  wire [0:0]s_axi_ctrl_0_1_BREADY;
  wire [1:0]s_axi_ctrl_0_1_BRESP;
  wire [0:0]s_axi_ctrl_0_1_BVALID;
  wire [31:0]s_axi_ctrl_0_1_RDATA;
  wire [0:0]s_axi_ctrl_0_1_RREADY;
  wire [1:0]s_axi_ctrl_0_1_RRESP;
  wire [0:0]s_axi_ctrl_0_1_RVALID;
  wire [31:0]s_axi_ctrl_0_1_WDATA;
  wire [0:0]s_axi_ctrl_0_1_WREADY;
  wire [3:0]s_axi_ctrl_0_1_WSTRB;
  wire [0:0]s_axi_ctrl_0_1_WVALID;
  wire [3:0]satellite_gpio_0_1;

  assign aclk_ctrl_0_1 = aclk_ctrl_0;
  assign aresetn_ctrl_0_1 = aresetn_ctrl_0;
  assign cms_subsystem_0_satellite_uart_RxD = satellite_uart_0_rxd;
  assign interrupt_host_0 = cms_subsystem_0_interrupt_host;
  assign qsfp0_int_l_0_1 = qsfp0_int_l_0[0];
  assign qsfp0_lpmode_0[0] = cms_subsystem_0_qsfp0_lpmode;
  assign qsfp0_modprs_l_0_1 = qsfp0_modprs_l_0[0];
  assign qsfp0_modsel_l_0[0] = cms_subsystem_0_qsfp0_modsel_l;
  assign qsfp0_reset_l_0[0] = cms_subsystem_0_qsfp0_reset_l;
  assign qsfp1_int_l_0_1 = qsfp1_int_l_0[0];
  assign qsfp1_lpmode_0[0] = cms_subsystem_0_qsfp1_lpmode;
  assign qsfp1_modprs_l_0_1 = qsfp1_modprs_l_0[0];
  assign qsfp1_modsel_l_0[0] = cms_subsystem_0_qsfp1_modsel_l;
  assign qsfp1_reset_l_0[0] = cms_subsystem_0_qsfp1_reset_l;
  assign s_axi_ctrl_0_1_ARADDR = s_axi_ctrl_0_araddr[17:0];
  assign s_axi_ctrl_0_1_ARPROT = s_axi_ctrl_0_arprot[2:0];
  assign s_axi_ctrl_0_1_ARVALID = s_axi_ctrl_0_arvalid[0];
  assign s_axi_ctrl_0_1_AWADDR = s_axi_ctrl_0_awaddr[17:0];
  assign s_axi_ctrl_0_1_AWPROT = s_axi_ctrl_0_awprot[2:0];
  assign s_axi_ctrl_0_1_AWVALID = s_axi_ctrl_0_awvalid[0];
  assign s_axi_ctrl_0_1_BREADY = s_axi_ctrl_0_bready[0];
  assign s_axi_ctrl_0_1_RREADY = s_axi_ctrl_0_rready[0];
  assign s_axi_ctrl_0_1_WDATA = s_axi_ctrl_0_wdata[31:0];
  assign s_axi_ctrl_0_1_WSTRB = s_axi_ctrl_0_wstrb[3:0];
  assign s_axi_ctrl_0_1_WVALID = s_axi_ctrl_0_wvalid[0];
  assign s_axi_ctrl_0_arready[0] = s_axi_ctrl_0_1_ARREADY;
  assign s_axi_ctrl_0_awready[0] = s_axi_ctrl_0_1_AWREADY;
  assign s_axi_ctrl_0_bresp[1:0] = s_axi_ctrl_0_1_BRESP;
  assign s_axi_ctrl_0_bvalid[0] = s_axi_ctrl_0_1_BVALID;
  assign s_axi_ctrl_0_rdata[31:0] = s_axi_ctrl_0_1_RDATA;
  assign s_axi_ctrl_0_rresp[1:0] = s_axi_ctrl_0_1_RRESP;
  assign s_axi_ctrl_0_rvalid[0] = s_axi_ctrl_0_1_RVALID;
  assign s_axi_ctrl_0_wready[0] = s_axi_ctrl_0_1_WREADY;
  assign satellite_gpio_0_1 = satellite_gpio_0[3:0];
  assign satellite_uart_0_txd = cms_subsystem_0_satellite_uart_TxD;
  cms_cms_subsystem_0_0 cms_subsystem_0
       (.aclk_ctrl(aclk_ctrl_0_1),
        .aresetn_ctrl(aresetn_ctrl_0_1),
        .interrupt_host(cms_subsystem_0_interrupt_host),
        .qsfp0_int_l(qsfp0_int_l_0_1),
        .qsfp0_lpmode(cms_subsystem_0_qsfp0_lpmode),
        .qsfp0_modprs_l(qsfp0_modprs_l_0_1),
        .qsfp0_modsel_l(cms_subsystem_0_qsfp0_modsel_l),
        .qsfp0_reset_l(cms_subsystem_0_qsfp0_reset_l),
        .qsfp1_int_l(qsfp1_int_l_0_1),
        .qsfp1_lpmode(cms_subsystem_0_qsfp1_lpmode),
        .qsfp1_modprs_l(qsfp1_modprs_l_0_1),
        .qsfp1_modsel_l(cms_subsystem_0_qsfp1_modsel_l),
        .qsfp1_reset_l(cms_subsystem_0_qsfp1_reset_l),
        .s_axi_ctrl_araddr(s_axi_ctrl_0_1_ARADDR),
        .s_axi_ctrl_arprot(s_axi_ctrl_0_1_ARPROT),
        .s_axi_ctrl_arready(s_axi_ctrl_0_1_ARREADY),
        .s_axi_ctrl_arvalid(s_axi_ctrl_0_1_ARVALID),
        .s_axi_ctrl_awaddr(s_axi_ctrl_0_1_AWADDR),
        .s_axi_ctrl_awprot(s_axi_ctrl_0_1_AWPROT),
        .s_axi_ctrl_awready(s_axi_ctrl_0_1_AWREADY),
        .s_axi_ctrl_awvalid(s_axi_ctrl_0_1_AWVALID),
        .s_axi_ctrl_bready(s_axi_ctrl_0_1_BREADY),
        .s_axi_ctrl_bresp(s_axi_ctrl_0_1_BRESP),
        .s_axi_ctrl_bvalid(s_axi_ctrl_0_1_BVALID),
        .s_axi_ctrl_rdata(s_axi_ctrl_0_1_RDATA),
        .s_axi_ctrl_rready(s_axi_ctrl_0_1_RREADY),
        .s_axi_ctrl_rresp(s_axi_ctrl_0_1_RRESP),
        .s_axi_ctrl_rvalid(s_axi_ctrl_0_1_RVALID),
        .s_axi_ctrl_wdata(s_axi_ctrl_0_1_WDATA),
        .s_axi_ctrl_wready(s_axi_ctrl_0_1_WREADY),
        .s_axi_ctrl_wstrb(s_axi_ctrl_0_1_WSTRB),
        .s_axi_ctrl_wvalid(s_axi_ctrl_0_1_WVALID),
        .satellite_gpio(satellite_gpio_0_1),
        .satellite_uart_rxd(cms_subsystem_0_satellite_uart_RxD),
        .satellite_uart_txd(cms_subsystem_0_satellite_uart_TxD));
endmodule
