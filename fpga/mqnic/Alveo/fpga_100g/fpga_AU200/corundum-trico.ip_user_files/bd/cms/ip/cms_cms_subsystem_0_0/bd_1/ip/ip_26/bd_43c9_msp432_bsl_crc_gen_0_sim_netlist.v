// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jan 15 01:26:08 2025
// Host        : playmaker-MZ32-AR0-00 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_26/bd_43c9_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_43c9_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_43c9_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bd_43c9_msp432_bsl_crc_gen_0
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
  bd_43c9_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10400)
`pragma protect data_block
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
6906AyBXuQYXzpepJM39jQLnpJVfFCyr0oM=
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
