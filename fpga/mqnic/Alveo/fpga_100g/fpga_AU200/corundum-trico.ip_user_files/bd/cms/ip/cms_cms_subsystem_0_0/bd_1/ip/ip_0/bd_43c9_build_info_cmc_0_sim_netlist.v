// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jan 15 01:33:29 2025
// Host        : playmaker-MZ32-AR0-00 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_0/bd_43c9_build_info_cmc_0_sim_netlist.v
// Design      : bd_43c9_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bd_43c9_build_info_cmc_0
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
  bd_43c9_build_info_cmc_0_shell_utils_build_info_v1_0_0 U0
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

(* ORIG_REF_NAME = "address_decoder" *) 
module bd_43c9_build_info_cmc_0_address_decoder
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

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module bd_43c9_build_info_cmc_0_axi_lite_ipif
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

  bd_43c9_build_info_cmc_0_slave_attachment I_SLAVE_ATTACHMENT
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

(* ORIG_REF_NAME = "slave_attachment" *) 
module bd_43c9_build_info_cmc_0_slave_attachment
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
  bd_43c9_build_info_cmc_0_address_decoder I_DECODER
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17424)
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
