// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jan 15 01:33:27 2025
// Host        : playmaker-MZ32-AR0-00 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_43c9_build_info_host_0 -prefix
//               bd_43c9_build_info_host_0_ bd_43c9_build_info_cmc_0_sim_netlist.v
// Design      : bd_43c9_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_43c9_build_info_host_0_address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    start2,
    IP2Bus_WrAck,
    Q,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    bus2ip_rnw_i,
    \Scratch_reg[0] );
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input start2;
  input IP2Bus_WrAck;
  input [4:0]Q;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input bus2ip_rnw_i;
  input [2:0]\Scratch_reg[0] ;

  wire Bus2IP_CS;
  wire [0:0]E;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire [4:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire [2:0]\Scratch_reg[0] ;
  wire bus2ip_rnw_i;
  wire start2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Ack[1]_i_1 
       (.I0(Bus2IP_CS),
        .I1(S_AXI_ARESETN),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(Bus2IP_CS),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h0000000000005400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .I1(Bus2IP_CS),
        .I2(start2),
        .I3(S_AXI_ARESETN),
        .I4(IP2Bus_WrAck),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(Bus2IP_CS),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \Scratch[31]_i_1 
       (.I0(bus2ip_rnw_i),
        .I1(Bus2IP_CS),
        .I2(\Scratch_reg[0] [2]),
        .I3(\Scratch_reg[0] [0]),
        .I4(\Scratch_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_bvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_rvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ));
endmodule

module bd_43c9_build_info_host_0_axi_lite_ipif
   (SR,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    D,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output [31:0]D;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire s_axi_bvalid_i_reg;
  wire s_axi_rvalid_i_reg;

  bd_43c9_build_info_host_0_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .SR(SR),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg));
endmodule

(* CHECK_LICENSE_TYPE = "bd_43c9_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bd_43c9_build_info_host_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]NLW_U0_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CORE_REVISION = "0" *) 
  (* C_MAJOR_VERSION = "2" *) 
  (* C_MINOR_VERSION = "2" *) 
  (* C_PATCH_VERSION = "0" *) 
  (* C_PERFORCE_CL = "3064653" *) 
  (* C_RESERVED_TAG = "0" *) 
  (* C_SUBSYSTEM_ID = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_VIV_VERSION = "2105360" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* is_du_within_envelope = "true" *) 
  bd_43c9_build_info_host_0_shell_utils_build_info_v1_0_0 U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[4:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[4:2],1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_U0_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_U0_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

module bd_43c9_build_info_host_0_slave_attachment
   (SR,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    D,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output [31:0]D;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [4:2]Bus2IP_Addr;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire I_DECODER_n_1;
  wire I_DECODER_n_2;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY;
  wire S_AXI_WREADY_INST_0_i_1_n_0;
  wire S_AXI_WVALID;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire bus2ip_rnw_i;
  wire clear;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire [1:0]p_0_out;
  wire [4:0]plusOp;
  wire rst;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;
  wire \state[1]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'hFFFF007000700070)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(S_AXI_ARVALID),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(I_DECODER_n_1),
        .I3(IP2Bus_WrAck),
        .I4(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_ARVALID),
        .I3(I_DECODER_n_2),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEEEEEAEA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(s_axi_bresp_i),
        .I2(I_DECODER_n_2),
        .I3(I_DECODER_n_1),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(s_axi_rvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_bvalid_i_reg_0),
        .I4(S_AXI_BREADY),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [0]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \IP2Bus_Data[12]_i_1 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(\IP2Bus_Data_reg[31] [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[13]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [14]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[15]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [15]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2F00)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [17]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [18]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [19]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h080F)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [1]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4909)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(\IP2Bus_Data_reg[31] [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(Bus2IP_Addr[3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[4]),
        .I3(\IP2Bus_Data_reg[31] [29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [2]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [6]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(Bus2IP_Addr[4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [8]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [9]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[9]));
  bd_43c9_build_info_host_0_address_decoder I_DECODER
       (.E(E),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] (I_DECODER_n_1),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 (I_DECODER_n_2),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (is_read_reg_n_0),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (is_write_reg_n_0),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .\Scratch_reg[0] (Bus2IP_Addr),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .start2(start2));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_ARREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_read_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_ARREADY));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_WREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_write_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_WREADY));
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(S_AXI_WREADY_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Bus2IP_Addr[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Bus2IP_Addr[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Bus2IP_Addr[4]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(S_AXI_ARVALID),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    is_read_i_1
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    is_write_i_1
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(is_write));
  FDRE is_write_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  FDRE rst_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_bvalid_i_i_1
       (.I0(I_DECODER_n_2),
        .I1(IP2Bus_WrAck),
        .I2(state[1]),
        .I3(state[0]),
        .I4(S_AXI_BREADY),
        .I5(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(S_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[10]),
        .Q(S_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[11]),
        .Q(S_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[12]),
        .Q(S_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[13]),
        .Q(S_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[14]),
        .Q(S_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[15]),
        .Q(S_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[16]),
        .Q(S_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[17]),
        .Q(S_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[18]),
        .Q(S_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[19]),
        .Q(S_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(S_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[20]),
        .Q(S_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[21]),
        .Q(S_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[22]),
        .Q(S_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[23]),
        .Q(S_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[24]),
        .Q(S_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[25]),
        .Q(S_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[26]),
        .Q(S_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[27]),
        .Q(S_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[28]),
        .Q(S_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[29]),
        .Q(S_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(S_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[30]),
        .Q(S_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[31]),
        .Q(S_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(S_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(S_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(S_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(S_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(S_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[8]),
        .Q(S_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[9]),
        .Q(S_AXI_RDATA[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_rvalid_i_i_1
       (.I0(I_DECODER_n_1),
        .I1(IP2Bus_WrAck),
        .I2(state[0]),
        .I3(state[1]),
        .I4(S_AXI_RREADY),
        .I5(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT6 #(
    .INIT(64'h0FEEFFFF0FEEFF00)) 
    \state[0]_i_1 
       (.I0(IP2Bus_WrAck),
        .I1(I_DECODER_n_2),
        .I2(state1__2),
        .I3(state[0]),
        .I4(state[1]),
        .I5(S_AXI_ARVALID),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4440EEEA)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(IP2Bus_WrAck),
        .I3(I_DECODER_n_1),
        .I4(state1__2),
        .I5(\state[1]_i_2_n_0 ),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF0008)) 
    \state[1]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(state[0]),
        .I4(state[1]),
        .O(\state[1]_i_2_n_0 ));
  FDRE \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(rst));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
eQemDSd2oOgt3ZaWxjIu20Pvye5LbXhaDbdWfju4PUnsAhtiZY7XgOC7JR6npG//n7MfwdGOVecP
P9kzogZmeA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C6XBEU4ySeeOrse5EQ00qx5rUimPe9PwjTQ9ArCQ9g3eAoDT529qt3liimX0SztYUPkwunEZQBjH
LIZAYw03UZrBF0hBgwO1JyE68M2lxg6eH2mIjELI798s5q29Eb4Xx1GDAem3KbGLGzMRvMG/l3hR
t8t7y6EnMUoLZDkvyyc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YnDzaQAALIapXwws261GDhlsolnMP2bMW6UNdGGg+xOWFeC+UOCNQYMg08DXFynb4uccizKDa9lf
lzVkV77dfSd7Smeqfz1Q5l6tWsijySxkc1A4LuTpm5NsVi6Rukn7Z+ZuudYUDj0kDzO2tykdttZs
08SsyfNy+sO4xPVRvnGcQ4La5lpFoXAaBbRVbM9qyNwKpd2PLNz+kqzLsR0D5RgdkMUJkIJK0+fU
/8IWlVRcPCm5NSApeISS4566RIXz4e6DjotE690i3kAUgGJWKbtcgYLlQEGvmbVX+kq/87QW3iWP
lV7rZToUM7JTEqzJM0yvQvtiEKClAY/4R5GqEw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xgiv8tF3ZKSn2ubYsbjJUmvVSFNDf2pcfUHE9/NhPOFuq4Ii/vbtgVcImMd51avyll8v2bTik2L1
slfiAwmPPcCviN6paSCDOZFOw/3uB+MR+wOl0GcgdIFL33jnMtlzCKJRrYq/pSkBYHVfW9ez7For
2ng02GmJKAeoa+/nxz1j8B/4iU60uWGwfdZFq6VZyhECDUHCSEeL5ODqfQTzGs+V0gPRB0f7B3MU
afYG4PwjaphJnPMP0YGlOY5UETjm5VsUXeUrc4WtahJAjQafwwZ+8jwhQAnDhNs4eKsr6gjxqN5R
+MGWw/EQGxXWq2NTiQ1kH2xMw/ZnvAjiBvfRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h09fQxpeMOgtRWnULt7RnjnDCsqiLGiwqYhD7B0cPlt/Kd4HWwoxX1P2zWLzj2dPrrga55ps/6ch
VBSdDlDXGmcRfK6eY+jaTaHTVrZ1OoUmRTvWsZluDEM2/1Eu+luao9UPRdY+HNDGiFQu/wcBM6sv
aYB7WoVBLdKR6GZjJYM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DWyFZ9oDTaw6aB9ROLBRifxc04MTWVtNOL5OuYl0IKZCkjFRcl75jPV2LMlNlWyc6jNbqtco2kci
WB7ZFdVmJACBYCNzJ1MajU1Dx8GZ6ZfwFanSxj8qLURm9wE/opF8HdkQsBQUh5hSvv+++JAKbOTy
miIxG4WDLxDLCc3ZxxMRfEDSQpinkpU8XIf+ANMhimnmafzJmkGC189eS9OUfYN/q8i1BiGDwurb
4z/P/cvJXLCTC1R34azVsvfWMil/U/j7mQwvU+/qPVMjEdiMt8vtvrXDAQC850z7i52xcTdrpm/B
Qql+4EOukPmt+GXfxI41672LBE6aKzogMpuTQg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U2P4zdHLmBdxZgbpZiCvtU3wocXv7fuA5WB1pd7dkQ1Ow9u4QNnI8qQcHG75g3VQfodmqt7tBdKg
b4Pb+6LA3PXayxU7N9eDIY5gGhHZQbCvQDriRwxex0tsuRlewzOoOLOq0Q56erl/6lF++kCChYUm
0qkuwIWJZPwO1oBaB4nlL8C9s8Gh042ATQwl/XoB10O0aU0vNvKJtCo/7PRqhmEWnrlpuk9CVzpT
gHWRkMyj4P1Pd0D4Sdc10LTeELL+jBWTGATltoD5GBRwgO/FbAokglJVl++zlUHXZ8CFB+LZMlS8
3RyN9QhjhN02JhCZyNe9L/pPtvTxg4eWzwpPsQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oQziUYfKs6rphpZ5TBdnasu61LQ6vV5AVbIF7HO3J1fIIyypEI4ae2CJZTd4rg+CMHN4NNk5BS2U
C+mXS0PcP6YDhnNeToOcvnRASl2yKHjzZDE3ASYxgBTy3Du+XUrboUYOw0rQt0vrWEacA4+FELg5
0RLxmt03BbeZN+H7UqUa9PekIRuQ1fT2RcSQ3KP4chRGOT5YzswTC8FyaIo9DyDnwLqTmR5wGyjC
h3yidypdrDEIyhCqbgBnhDlAwmChWoSuZQUJATR3ohEpEJZGBwVxIcy1IVF5fnX5s+7e/vCXokHZ
F41rdczuR52BDFPPNMWGOTwSZNxjNdr46WHA4w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rdU/ltXX759c//UcCOAEaPY+Q2Ybi97wIInsATyy/DPbLPcEK3JYniuzpNUnEMt6vhRO0I+s4nKJ
VoxQ85BfxVT86h1S9l1rS6HnkVRvkBhARVWbbMqMSi9YsSezJYUhAp2vZchrtgywsmfyMLwf5kjK
vlpxr/sezLYW3Icyrp96825h+hU9XOnAU/QTbPgdsmp+eyvUQhDOKlHUVEJvWNWcS9/oBRH9kR4D
jU5P//5W5RNQmtwfnKznwWiAIf262HIkDmcJ+ctQpUEnVRGroM8i1zVvEbXPA6BevW8k51mLCXtF
gh77W5NeE86b1HrYUWZbIntrLqA8vDsT6IVlJQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17376)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
