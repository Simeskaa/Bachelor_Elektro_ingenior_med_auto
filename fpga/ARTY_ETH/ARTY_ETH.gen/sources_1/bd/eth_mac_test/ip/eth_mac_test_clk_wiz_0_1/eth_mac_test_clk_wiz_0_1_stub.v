// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Apr 26 12:37:16 2023
// Host        : DESKTOP-T99OIQI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top eth_mac_test_clk_wiz_0_1 -prefix
//               eth_mac_test_clk_wiz_0_1_ eth_mac_test_clk_wiz_0_1_stub.v
// Design      : eth_mac_test_clk_wiz_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module eth_mac_test_clk_wiz_0_1(clk_out25, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out25,resetn,locked,clk_in1" */;
  output clk_out25;
  input resetn;
  output locked;
  input clk_in1;
endmodule