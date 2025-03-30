// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jan 15 01:29:02 2025
// Host        : playmaker-MZ32-AR0-00 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_47/bd_43c9_and_gate_0_stub.v
// Design      : bd_43c9_and_gate_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *)
module bd_43c9_and_gate_0(Op1, Op2, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Op2[0:0],Res[0:0]" */;
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;
endmodule
