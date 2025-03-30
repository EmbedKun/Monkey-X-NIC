// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jan 15 01:33:27 2025
// Host        : playmaker-MZ32-AR0-00 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_build_info_cmc_0_sim_netlist.v
// Design      : bd_43c9_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17408)
`pragma protect data_block
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
LIxkpvaELTZgVpVIurCNn6/8mqZnm3o=
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
