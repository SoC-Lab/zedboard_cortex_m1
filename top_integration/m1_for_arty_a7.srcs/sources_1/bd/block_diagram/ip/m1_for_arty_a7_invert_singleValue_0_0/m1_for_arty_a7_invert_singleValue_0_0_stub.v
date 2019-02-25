// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Feb 25 15:12:26 2019
// Host        : DESKTOP-LCBAU67 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Projects/zedboard_cortex_m1_wrapper/m1_for_arty_a7.srcs/sources_1/bd/block_diagram/ip/m1_for_arty_a7_invert_singleValue_0_0/m1_for_arty_a7_invert_singleValue_0_0_stub.v
// Design      : m1_for_arty_a7_invert_singleValue_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "invert_singleValue,Vivado 2018.2" *)
module m1_for_arty_a7_invert_singleValue_0_0(i_signal, o_signal)
/* synthesis syn_black_box black_box_pad_pin="i_signal,o_signal" */;
  input i_signal;
  output o_signal;
endmodule
