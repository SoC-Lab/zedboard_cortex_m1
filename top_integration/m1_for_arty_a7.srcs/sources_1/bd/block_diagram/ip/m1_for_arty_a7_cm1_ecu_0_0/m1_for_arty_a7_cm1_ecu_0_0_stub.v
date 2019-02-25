// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 25 18:13:15 2019
// Host        : consti-002 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/consti/2018WS/Lab_SoC/Abgabe/zedboard_cortex_m1/top_integration/m1_for_arty_a7.srcs/sources_1/bd/block_diagram/ip/m1_for_arty_a7_cm1_ecu_0_0/m1_for_arty_a7_cm1_ecu_0_0_stub.v
// Design      : m1_for_arty_a7_cm1_ecu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cm1_ecu_wrapper,Vivado 2018.3" *)
module m1_for_arty_a7_cm1_ecu_0_0(DEBUG, ENGINE, I2C_SCL, I2C_SDA_RX, I2C_SDA_TX, 
  RESET_INTERCONNECT, RESET_PERIPHERAL, RESET_TIMER, SYS_CLOCK, THROTTLE, TIMER_CLOCK, UART_RX, 
  UART_TX)
/* synthesis syn_black_box black_box_pad_pin="DEBUG[3:0],ENGINE[0:0],I2C_SCL,I2C_SDA_RX,I2C_SDA_TX,RESET_INTERCONNECT,RESET_PERIPHERAL,RESET_TIMER,SYS_CLOCK,THROTTLE,TIMER_CLOCK,UART_RX,UART_TX" */;
  output [3:0]DEBUG;
  output [0:0]ENGINE;
  output I2C_SCL;
  input I2C_SDA_RX;
  output I2C_SDA_TX;
  input RESET_INTERCONNECT;
  input RESET_PERIPHERAL;
  input RESET_TIMER;
  input SYS_CLOCK;
  input THROTTLE;
  input TIMER_CLOCK;
  input UART_RX;
  output UART_TX;
endmodule
