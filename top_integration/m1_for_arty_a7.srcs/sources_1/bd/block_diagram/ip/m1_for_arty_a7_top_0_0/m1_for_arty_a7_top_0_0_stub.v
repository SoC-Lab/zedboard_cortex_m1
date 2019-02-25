// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 25 18:10:34 2019
// Host        : consti-002 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/consti/2018WS/Lab_SoC/Abgabe/zedboard_cortex_m1/top_integration/m1_for_arty_a7.srcs/sources_1/bd/block_diagram/ip/m1_for_arty_a7_top_0_0/m1_for_arty_a7_top_0_0_stub.v
// Design      : m1_for_arty_a7_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top,Vivado 2018.3" *)
module m1_for_arty_a7_top_0_0(CLK, RST, EN, UART_RX_EXT, UART_TX_EXT, 
  UART_RX_INT, UART_TX_INT, RECFG)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,EN,UART_RX_EXT,UART_TX_EXT,UART_RX_INT,UART_TX_INT,RECFG[1:0]" */;
  input CLK;
  input RST;
  input EN;
  input UART_RX_EXT;
  output UART_TX_EXT;
  output UART_RX_INT;
  input UART_TX_INT;
  output [1:0]RECFG;
endmodule
