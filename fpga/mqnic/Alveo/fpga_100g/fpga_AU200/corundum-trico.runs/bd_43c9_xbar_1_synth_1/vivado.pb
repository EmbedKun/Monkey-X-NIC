
�
Command: %s
53*	vivadotcl2c
Osynth_design -top bd_43c9_xbar_1 -part xcu200-fsgd2104-2-e -mode out_of_context2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xcu2002default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xcu2002default:defaultZ17-349h px� 
Z
Loading part %s157*device2'
xcu200-fsgd2104-2-e2default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
b
#Helper process launched with PID %s4824*oasys2
28740082default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:23 . Memory (MB): peak = 2931.539 ; gain = 215.719 ; free physical = 28619 ; free virtual = 42417
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2"
bd_43c9_xbar_12default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_17/synth/bd_43c9_xbar_1.v2default:default2
592default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_23_axi_crossbar2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
48842default:default8@Z8-6157h px� 
f
%s
*synth2N
:	Parameter C_FAMILY bound to: virtexuplus - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_NUM_SLAVE_SLOTS bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_NUM_MASTER_SLOTS bound to: 6 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_NUM_ADDR_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_BASE_ADDR bound to: 384'b000000000000000000000000000000000000000000000010100000000000000000000000000000000000000000000000000000000000001010100000000000000000000000000000000000000000000000000000000000100010000000000000000000000000000000000000000000000000000000000010000100000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_ADDR_WIDTH bound to: 192'b000000000000000000000000000011010000000000000000000000000000110000000000000000000000000000001100000000000000000000000000000011000000000000000000000000000000110000000000000000000000000000010001 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter C_S_AXI_BASE_ID bound to: 0 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_S_AXI_THREAD_ID_WIDTH bound to: 0 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_WRITE_CONNECTIVITY bound to: 192'b000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_READ_CONNECTIVITY bound to: 192'b000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_R_REGISTER bound to: 1 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter C_S_AXI_SINGLE_THREAD bound to: 1 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter C_S_AXI_WRITE_ACCEPTANCE bound to: 1 - type: integer 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter C_S_AXI_READ_ACCEPTANCE bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_WRITE_ISSUING bound to: 192'b000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_READ_ISSUING bound to: 192'b000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_S_AXI_ARB_PRIORITY bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_SECURE bound to: 192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter C_CONNECTIVITY_MODE bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2w
c	Parameter P_ONES bound to: 65'b11111111111111111111111111111111111111111111111111111111111111111 
2default:defaulth p
x
� 
�
%s
*synth2
k	Parameter P_S_AXI_BASE_ID bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2
k	Parameter P_S_AXI_HIGH_ID bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter P_AXILITE_SIZE bound to: 3'b010 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter P_INCR bound to: 2'b01 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_M_AXI_SUPPORTS_WRITE bound to: 6'b111111 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_M_AXI_SUPPORTS_READ bound to: 6'b111111 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter P_S_AXI_SUPPORTS_WRITE bound to: 1'b1 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter P_S_AXI_SUPPORTS_READ bound to: 1'b1 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_DEBUG bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_RANGE_CHECK bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_ADDR_DECODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter P_M_AXI_ERR_MODE bound to: 192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter P_LEN bound to: 8 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter P_LOCK bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter P_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys26
"axi_crossbar_v2_1_23_crossbar_sasd2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
12402default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_NUM_SLAVE_SLOTS bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_NUM_MASTER_SLOTS bound to: 6 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_NUM_ADDR_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_BASE_ADDR bound to: 384'b000000000000000000000000000000000000000000000010100000000000000000000000000000000000000000000000000000000000001010100000000000000000000000000000000000000000000000000000000000100010000000000000000000000000000000000000000000000000000000000010000100000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_HIGH_ADDR bound to: 384'b000000000000000000000000000000000000000000000010100111111111111100000000000000000000000000000000000000000000001010101111111111110000000000000000000000000000000000000000000000100010111111111111000000000000000000000000000000000000000000000010000111111111111100000000000000000000000000000000000000000000001000001111111111110000000000000000000000000000000000000000000000011111111111111111 
2default:defaulth p
x
� 
�
%s
*synth2
k	Parameter C_S_AXI_BASE_ID bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2
k	Parameter C_S_AXI_HIGH_ID bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_S_AXI_SUPPORTS_WRITE bound to: 1'b1 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter C_S_AXI_SUPPORTS_READ bound to: 1'b1 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_M_AXI_SUPPORTS_WRITE bound to: 6'b111111 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_M_AXI_SUPPORTS_READ bound to: 6'b111111 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter C_S_AXI_ARB_PRIORITY bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_SECURE bound to: 192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_M_AXI_ERR_MODE bound to: 192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_R_REGISTER bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_RANGE_CHECK bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ADDR_DECODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_DEBUG bound to: 1 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_NUM_MASTER_SLOTS_DE bound to: 7 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter P_NUM_MASTER_SLOTS_LOG bound to: 3 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter P_NUM_MASTER_SLOTS_DE_LOG bound to: 3 - type: integer 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter P_NUM_SLAVE_SLOTS_LOG bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_AXI_AUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter P_AXI_WID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_AMESG_WIDTH bound to: 50 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter P_BMESG_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_RMESG_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_WMESG_WIDTH bound to: 39 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter P_AXILITE_ERRMODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter P_NONSECURE_BIT bound to: 1 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter P_M_SECURE_MASK bound to: 6'b000000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter P_M_AXILITE_MASK bound to: 6'b000000 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter P_FIXED bound to: 2'b00 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter P_BYPASS bound to: 0 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter P_LIGHTWT bound to: 7 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter P_FULLY_REG bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter P_R_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter P_DECERR bound to: 2'b11 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_23_addr_decoder2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7942default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_NUM_TARGETS bound to: 6 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_NUM_TARGETS_LOG bound to: 3 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_NUM_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_ADDR_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_TARGET_ENC bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_TARGET_HOT bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_REGION_ENC bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_BASE_ADDR bound to: 384'b000000000000000000000000000000000000000000000010100000000000000000000000000000000000000000000000000000000000001010100000000000000000000000000000000000000000000000000000000000100010000000000000000000000000000000000000000000000000000000000010000100000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
� 
�
%s
*synth2�
�	Parameter C_HIGH_ADDR bound to: 384'b000000000000000000000000000000000000000000000010100111111111111100000000000000000000000000000000000000000000001010101111111111110000000000000000000000000000000000000000000000100010111111111111000000000000000000000000000000000000000000000010000111111111111100000000000000000000000000000000000000000000001000001111111111110000000000000000000000000000000000000000000000011111111111111111 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter C_TARGET_QUAL bound to: 7'b0111111 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_RESOLUTION bound to: 2 - type: integer 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter C_COMPARATOR_THRESHOLD bound to: 6 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_VALUE bound to: 16'b0000000000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 3 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
622default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2
12default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
622default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2
22default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized02default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_VALUE bound to: 16'b1000000000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 3 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized02default:default2
 2default:default2
22default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized12default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_VALUE bound to: 16'b1000010000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 3 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized12default:default2
 2default:default2
22default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized22default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_VALUE bound to: 16'b1000100000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 3 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized22default:default2
 2default:default2
22default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized32default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_VALUE bound to: 16'b1010100000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 3 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized32default:default2
 2default:default2
22default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized42default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter C_VALUE bound to: 16'b1010000000000000 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 3 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized42default:default2
 2default:default2
22default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_23_addr_decoder2default:default2
 2default:default2
32default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7942default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_23_decerr_slave2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35012default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter C_RESP bound to: 3 - type: integer 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter P_WRITE_IDLE bound to: 2'b00 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter P_WRITE_DATA bound to: 2'b01 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter P_WRITE_RESP bound to: 2'b10 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter P_READ_IDLE bound to: 1'b0 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter P_READ_DATA bound to: 1'b1 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_23_decerr_slave2default:default2
 2default:default2
42default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35012default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2:
&axi_crossbar_v2_1_23_addr_arbiter_sasd2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
652default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_NUM_S bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_NUM_S_LOG bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_AMESG_WIDTH bound to: 50 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_GRANT_ENC bound to: 1 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter C_ARB_PRIORITY bound to: 0 - type: integer 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter P_PRIO_MASK bound to: 1'b0 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&axi_crossbar_v2_1_23_addr_arbiter_sasd2default:default2
 2default:default2
52default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
652default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys21
axi_crossbar_v2_1_23_splitter2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44612default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter C_NUM_M bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
axi_crossbar_v2_1_23_splitter2default:default2
 2default:default2
62default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44612default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2A
-axi_crossbar_v2_1_23_splitter__parameterized02default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44612default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter C_NUM_M bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_crossbar_v2_1_23_splitter__parameterized02default:default2
 2default:default2
62default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44612default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys25
!generic_baseblocks_v2_1_0_mux_enc2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 7 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!generic_baseblocks_v2_1_0_mux_enc2default:default2
 2default:default2
72default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized02default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized02default:default2
 2default:default2
72default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized12default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 7 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized12default:default2
 2default:default2
72default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2B
.axi_register_slice_v2_1_22_axic_register_slice2default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.axi_register_slice_v2_1_22_axic_register_slice2default:default2
 2default:default2
82default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14982default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized22default:default2
 2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 7 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized22default:default2
 2default:default2
82default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"axi_crossbar_v2_1_23_crossbar_sasd2default:default2
 2default:default2
92default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
12402default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_23_axi_crossbar2default:default2
 2default:default2
102default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
48842default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
bd_43c9_xbar_12default:default2
 2default:default2
112default:default2
12default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_17/synth/bd_43c9_xbar_1.v2default:default2
592default:default8@Z8-6155h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:45 . Memory (MB): peak = 3081.414 ; gain = 365.594 ; free physical = 37618 ; free virtual = 51399
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:45 . Memory (MB): peak = 3096.258 ; gain = 380.438 ; free physical = 37597 ; free virtual = 51378
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:45 . Memory (MB): peak = 3096.258 ; gain = 380.438 ; free physical = 37597 ; free virtual = 51378
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.022default:default2
3096.2582default:default2
0.0002default:default2
375892default:default2
513702default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_17/bd_43c9_xbar_1_ooc.xdc2default:default2
inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_1/ip/ip_17/bd_43c9_xbar_1_ooc.xdc2default:default2
inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_xbar_1_synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_xbar_1_synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3259.9452default:default2
0.0002default:default2
385402default:default2
524032default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.062default:default2
00:00:00.052default:default2
3259.9452default:default2
0.0002default:default2
385402default:default2
524022default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:57 . Memory (MB): peak = 3259.945 ; gain = 544.125 ; free physical = 38664 ; free virtual = 52475
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
N
%s
*synth26
"Loading part: xcu200-fsgd2104-2-e
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:57 . Memory (MB): peak = 3259.945 ; gain = 544.125 ; free physical = 38664 ; free virtual = 52475
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:57 . Memory (MB): peak = 3259.945 ; gain = 544.125 ; free physical = 38664 ; free virtual = 52475
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:21 ; elapsed = 00:00:58 . Memory (MB): peak = 3259.945 ; gain = 544.125 ; free physical = 38643 ; free virtual = 52460
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               50 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               36 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 14    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   50 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   36 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 57    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2p
\Part Resources:
DSPs: 6840 (col length:120)
BRAMs: 4320 (col length: RAMB18 360 RAMB36 180)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:59 . Memory (MB): peak = 3259.945 ; gain = 544.125 ; free physical = 38598 ; free virtual = 52431
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:01:34 . Memory (MB): peak = 3419.523 ; gain = 703.703 ; free physical = 41412 ; free virtual = 55075
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:35 ; elapsed = 00:01:34 . Memory (MB): peak = 3451.555 ; gain = 735.734 ; free physical = 41360 ; free virtual = 55023
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:35 ; elapsed = 00:01:34 . Memory (MB): peak = 3467.570 ; gain = 751.750 ; free physical = 41308 ; free virtual = 54971
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:38 ; elapsed = 00:01:37 . Memory (MB): peak = 3467.570 ; gain = 751.750 ; free physical = 41110 ; free virtual = 54773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:38 ; elapsed = 00:01:37 . Memory (MB): peak = 3467.570 ; gain = 751.750 ; free physical = 41110 ; free virtual = 54773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:38 ; elapsed = 00:01:37 . Memory (MB): peak = 3467.570 ; gain = 751.750 ; free physical = 41109 ; free virtual = 54772
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:38 ; elapsed = 00:01:37 . Memory (MB): peak = 3467.570 ; gain = 751.750 ; free physical = 41109 ; free virtual = 54772
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:38 ; elapsed = 00:01:37 . Memory (MB): peak = 3467.570 ; gain = 751.750 ; free physical = 41106 ; free virtual = 54769
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:38 ; elapsed = 00:01:37 . Memory (MB): peak = 3467.570 ; gain = 751.750 ; free physical = 41106 ; free virtual = 54769
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|1     |LUT1 |     2|
2default:defaulth px� 
B
%s*synth2*
|2     |LUT2 |    13|
2default:defaulth px� 
B
%s*synth2*
|3     |LUT3 |    10|
2default:defaulth px� 
B
%s*synth2*
|4     |LUT4 |    43|
2default:defaulth px� 
B
%s*synth2*
|5     |LUT5 |    40|
2default:defaulth px� 
B
%s*synth2*
|6     |LUT6 |   127|
2default:defaulth px� 
B
%s*synth2*
|7     |FDRE |   121|
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:38 ; elapsed = 00:01:37 . Memory (MB): peak = 3467.570 ; gain = 751.750 ; free physical = 41106 ; free virtual = 54769
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:32 ; elapsed = 00:01:30 . Memory (MB): peak = 3467.570 ; gain = 588.062 ; free physical = 41130 ; free virtual = 54793
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:38 ; elapsed = 00:01:37 . Memory (MB): peak = 3467.578 ; gain = 751.750 ; free physical = 41130 ; free virtual = 54793
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3475.5702default:default2
0.0002default:default2
411862default:default2
548492default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
3555.2732default:default2
0.0002default:default2
409772default:default2
546402default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:532default:default2
00:01:592default:default2
3555.2732default:default2
1183.3522default:default2
411072default:default2
547702default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_xbar_1_synth_1/bd_43c9_xbar_1.dcp2default:defaultZ17-1381h px� 
�
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2"
bd_43c9_xbar_12default:default2$
09540ba8931c68512default:defaultZ2-1648h px� 
P
Renamed %s cell refs.
330*coretcl2
72default:defaultZ2-1174h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/playmaker/Desktop/mkxue/corundum/fpga/mqnic/Alveo/fpga_100g/fpga_AU200/corundum-trico.runs/bd_43c9_xbar_1_synth_1/bd_43c9_xbar_1.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
rExecuting : report_utilization -file bd_43c9_xbar_1_utilization_synth.rpt -pb bd_43c9_xbar_1_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jan 15 01:24:56 20252default:defaultZ17-206h px� 


End Record