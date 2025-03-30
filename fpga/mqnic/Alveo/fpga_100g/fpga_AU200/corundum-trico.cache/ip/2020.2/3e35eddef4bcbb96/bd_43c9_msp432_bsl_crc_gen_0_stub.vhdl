-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Jan 15 01:26:06 2025
-- Host        : playmaker-MZ32-AR0-00 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_43c9_msp432_bsl_crc_gen_0_stub.vhdl
-- Design      : bd_43c9_msp432_bsl_crc_gen_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu200-fsgd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    s0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axis_tready : out STD_LOGIC;
    s0_axis_tvalid : in STD_LOGIC;
    s0_axis_tlast : in STD_LOGIC;
    m0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axis_tready : in STD_LOGIC;
    m0_axis_tvalid : out STD_LOGIC;
    m0_axis_tlast : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,s0_axis_tdata[31:0],s0_axis_tready,s0_axis_tvalid,s0_axis_tlast,m0_axis_tdata[31:0],m0_axis_tready,m0_axis_tvalid,m0_axis_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2020.2";
begin
end;
