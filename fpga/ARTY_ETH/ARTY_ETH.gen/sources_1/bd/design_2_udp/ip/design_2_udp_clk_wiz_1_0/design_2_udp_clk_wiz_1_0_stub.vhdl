-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Apr 25 14:21:58 2023
-- Host        : DESKTOP-T99OIQI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Bruker/Documents/Bachelor_Elektro_ingenior_med_auto/fpga/ARTY_ETH/ARTY_ETH.gen/sources_1/bd/design_2_udp/ip/design_2_udp_clk_wiz_1_0/design_2_udp_clk_wiz_1_0_stub.vhdl
-- Design      : design_2_udp_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_2_udp_clk_wiz_1_0 is
  Port ( 
    clk_out125 : out STD_LOGIC;
    clk_out25 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end design_2_udp_clk_wiz_1_0;

architecture stub of design_2_udp_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out125,clk_out25,resetn,locked,clk_in1";
begin
end;