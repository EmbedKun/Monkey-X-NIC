// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jan 15 01:26:06 2025
// Host        : playmaker-MZ32-AR0-00 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_43c9_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset_n,
    s0_axis_tdata,
    s0_axis_tready,
    s0_axis_tvalid,
    s0_axis_tlast,
    m0_axis_tdata,
    m0_axis_tready,
    m0_axis_tvalid,
    m0_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s0_axis:m0_axis, ASSOCIATED_RESET reset_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) input [31:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) output s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) input s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s0_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TDATA" *) output [31:0]m0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TREADY" *) input m0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TVALID" *) output m0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN cms_aclk_ctrl_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m0_axis_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [15:0]\^m0_axis_tdata ;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire reset_n;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tvalid;
  wire NLW_inst_m0_axis_tlast_UNCONNECTED;
  wire NLW_inst_s0_axis_tready_UNCONNECTED;
  wire [31:16]NLW_inst_m0_axis_tdata_UNCONNECTED;

  assign m0_axis_tdata[31] = \<const0> ;
  assign m0_axis_tdata[30] = \<const0> ;
  assign m0_axis_tdata[29] = \<const0> ;
  assign m0_axis_tdata[28] = \<const0> ;
  assign m0_axis_tdata[27] = \<const0> ;
  assign m0_axis_tdata[26] = \<const0> ;
  assign m0_axis_tdata[25] = \<const0> ;
  assign m0_axis_tdata[24] = \<const0> ;
  assign m0_axis_tdata[23] = \<const0> ;
  assign m0_axis_tdata[22] = \<const0> ;
  assign m0_axis_tdata[21] = \<const0> ;
  assign m0_axis_tdata[20] = \<const0> ;
  assign m0_axis_tdata[19] = \<const0> ;
  assign m0_axis_tdata[18] = \<const0> ;
  assign m0_axis_tdata[17] = \<const0> ;
  assign m0_axis_tdata[16] = \<const0> ;
  assign m0_axis_tdata[15:0] = \^m0_axis_tdata [15:0];
  assign m0_axis_tlast = \<const0> ;
  assign s0_axis_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* IDLE = "1'b0" *) 
  (* PROC = "1'b1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
       (.clk(clk),
        .m0_axis_tdata({NLW_inst_m0_axis_tdata_UNCONNECTED[31:16],\^m0_axis_tdata }),
        .m0_axis_tlast(NLW_inst_m0_axis_tlast_UNCONNECTED),
        .m0_axis_tready(m0_axis_tready),
        .m0_axis_tvalid(m0_axis_tvalid),
        .reset_n(reset_n),
        .s0_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s0_axis_tdata[15:0]}),
        .s0_axis_tlast(s0_axis_tlast),
        .s0_axis_tready(NLW_inst_s0_axis_tready_UNCONNECTED),
        .s0_axis_tvalid(s0_axis_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Tav2HCRbKSdQvj0AATo0a70QcBYdoyGanJFbCId8hgJ5JFwee8p06t9pZUUef7/UP62+hCa0sMHm
SMe8uGSBbw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GjTD5xxRMoG/QtM2Am+kLirAWTp3w9IKbflaeaQq46RdmtZjdYPMUwKUvCwMPYkdi7JT6eod42j3
n59qaoMvhmApQnRhMPx2SxOv4jsWDTD9rasjbj/0IVukJQ8zF/kkYjsgXYpmEjGZvWhJNpVSUiLZ
UvEHJQhcG74B2lBD/LE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
REvEOjHzmXaNkcxbVYOicf66ucFA+JdWkyJu75wDeXJgfZ5x97N5xDtu30+ZeAm3qoYZKQbo57bj
izEstFRK3WkNvXBRliN/8bOlbHUklikmDBEfpqc1zYVGrD/wka0/VZqI7lJ+UfWJrw+vpZUQHo56
51Ctd7CCcpOsokKZPZ7NGG4XMcA42sFmwQkcwPYu/RQaya6bg4zjjJp2CSlzx5xWtc+Y5Dm8PVT7
cyqlM6WVBVkRopdxKHi2hgE+e8iHo1iJmJKDiwhWyREQ7ahmZqw1/hyuJTnBQidbtEcdt6lchuv3
y+Pd33YXrj1tqQTUm0suDwAmUz2ckc4zkm+EOg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fBAqL4r+7qXqyWh4bRyVdPFUDRTY9W8bdQXdJalgTxEFYu7ZTIk6wY8bxfbp6jHrlSj6cPOmTAxl
Ge2JijaT4YOoIh0xWDMsulrY6dKeS9I6sDEQkvER6+keOVNZi4Sa1Knqdpe6MbeQCT57f7I93k6d
aTZ5irAqH+b99Qwd5XBC8MBdpTPUelIjuFpls06Nxh/46KHUYMoVT2DpxrJa22mD4j8cnnfuTOh7
DSc+9peZJOLArv2X9y2pmqJsQXfbfLwy1kOGQz1HyS0GvlsQ8Xb1WvvDc1UR5XpioRF2cZ8ES45h
B5CrgA69L4FoNwf7nCWajq9+Dp2ySETcGHYKEw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Kg6QsGLsZ5Gks3YHs1GeTgQtNkyf6Ae4cJqoaULJp2UgrFD3AOwlbtX2wpUy2BlVBLIws9jyGXwA
cMTFZF1jOGEoGy/RGhQuHim1hJbT5Vnh+PM1ksN4kXnuMDNzWkWJ3Sd2FMZEYtpiKE7Tyr07UxE2
oYZEBMU0FIdDjTNRv7A=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qR/nS5b3JIKyjQeHTD7Sb+TfmryG0mzcINIJSNdtiHXZLoKOclUOO/6bEVxRCMDnefxFXI370bcv
RcmCJmxGPnGbmvJL6nQPYMXFnhTiIPbGiQuRlT2xO6nWQ+ck7t0+Ka0lFdwWMAdPosbFMRI21yZK
2LyKontjGdbQBbG/NveSIMQGcIk0VtmiRgXnSA6CGrcxvVLVONodjE+JCGZeYkuGJArXll5Il9/p
csUCHY/OpZU7XaZZfKZ8d4RiVhpmcGYFmoXZI0RbPs1GBeqek040D0duI9KD/nxALbDkli9VOPd3
a8iOmHQKGvSqwwHhw75v1lOdZ0ZCB9BqmsB5TQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pl5HoQP33Tyv5RbAEXkI4zuJyaYPp7PZKGeUpHuHQRwPaRktUy+ps52hVUHdiU2BPob6Nujhcd3A
zKgd4QSTACeumKdLe748cy/8trvfZLSXW5oHybTzgq5x74mq50Vq/9Pl+QLDY+QSALUXbf+5I2+S
GLlN9o7sQlNsFfOYsydUYBhPTkuzZF0uHxEVVXA1YLn3cGWcYJj3I1BK/wl+HncL7K0Vz2mi8VV/
u57v7InkcLcavutDtJr9szz4z1JDy6X1BWdfZYnEK0snNiUVZYQ0YqN22oPr1xsMjVw1jxkRNTPL
86yhiDZG9NXwC23IcbsAZmRV8yz8Sbrbzi5o5A==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZcHu7VUldFDLvQrJLEUFgIVhka3cW8RjeWe4kh83D2gng4/NOvcBTq2rWUygIhIu76YAzpsCgbtD
I4kEk+LzNxPL8720afXuzuOOz8ExKObQH4A6SZqx9z7ntruYT3PotvjnRE6R2/LSbDD3UyGJNnVX
Sd1H5nPgIPjfECENK579Imvqn4ifRkPTolN1zBzzXW73hZ5JKraoDx5bGo0mrd9krxbURbZRCMzH
cWuvhnmN60gp+jI+zIo9/7Aj0wBCw1An9HZDFgMuBWOO5vf+2njL6vAcUP7amYUtYEJj9zcwE7CS
OT1TVTSY8fenZjOAFAA+HHi0UrI6/BGN34EDkA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DEWPcB5DDyGIfSAwnBhfExrexYI8WGlsGpekLhDhhjNZ+CbGsXEJf5yB0FD83kln1c7CFAJOECOd
SkUi9uHXoFMcxgHkUJgf0FmLO/mk3Nq6iF0qItTBAh6oBswA/PKS9QoIRyI/wx75v+BLOlrMxfGD
DdopxYim2kTCA6gOr+HlySZJTD50BTJbYaYnBKEGqoaXVORIHYK7TcHrFq64/kQsG++BOdt5yv0I
PW8VSpZRGZj+2EvUYr8zyj+a/HraWxm0xhew4SXrRF3aRVm9FiYR/WXW27BxSBQqjsbpAMRu7vlK
ue/LUN0MK0cVsCbM01Db9C2ekwAVYMopzAp6eA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10352)
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
