// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Feb 25 18:10:34 2019
// Host        : consti-002 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/consti/2018WS/Lab_SoC/Abgabe/zedboard_cortex_m1/top_integration/m1_for_arty_a7.srcs/sources_1/bd/block_diagram/ip/m1_for_arty_a7_top_0_0/m1_for_arty_a7_top_0_0_sim_netlist.v
// Design      : m1_for_arty_a7_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "m1_for_arty_a7_top_0_0,top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module m1_for_arty_a7_top_0_0
   (CLK,
    RST,
    EN,
    UART_RX_EXT,
    UART_TX_EXT,
    UART_RX_INT,
    UART_TX_INT,
    RECFG);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RST;
  input EN;
  input UART_RX_EXT;
  output UART_TX_EXT;
  output UART_RX_INT;
  input UART_TX_INT;
  output [1:0]RECFG;

  wire CLK;
  wire EN;
  wire [1:0]RECFG;
  wire RST;
  wire UART_RX_EXT;
  wire UART_RX_INT;
  wire UART_TX_EXT;
  wire UART_TX_INT;

  m1_for_arty_a7_top_0_0_top U0
       (.CLK(CLK),
        .EN(EN),
        .RECFG(RECFG),
        .RST(RST),
        .UART_RX_EXT(UART_RX_EXT),
        .UART_RX_INT(UART_RX_INT),
        .UART_TX_EXT(UART_TX_EXT),
        .UART_TX_INT(UART_TX_INT));
endmodule

(* ORIG_REF_NAME = "bus_monitor_error" *) 
module m1_for_arty_a7_top_0_0_bus_monitor_error
   (\FSM_sequential_bm_error_state_reg[0]_0 ,
    Q,
    \FSM_sequential_bm_error_state_reg[2]_0 ,
    \slave_address_reg[0]_0 ,
    \FSM_sequential_bm_error_state_reg[3]_0 ,
    \slave_address_reg[1]_0 ,
    \FSM_sequential_bm_error_state_reg[0]_1 ,
    \FSM_sequential_bm_error_state_reg[2]_1 ,
    \FSM_sequential_bm_error_state_reg[0]_2 ,
    reconfiguration_device,
    \reconfiguration_device[1]_i_4 ,
    \reconfiguration_device[1]_i_4_0 ,
    \reconfiguration_device[1]_i_4_1 ,
    \slave_address_reg[1]_1 ,
    data_ready,
    \slave_address_reg[0]_1 ,
    p_1_in,
    \reconfiguration_device_reg[0]_0 ,
    \reconfiguration_device_reg[0]_1 ,
    \reconfiguration_device_reg[1]_0 ,
    \reconfiguration_device[1]_i_4_2 ,
    \reconfiguration_device[1]_i_4_3 ,
    CLK,
    RST,
    \reconfiguration_device_reg[1]_1 );
  output \FSM_sequential_bm_error_state_reg[0]_0 ;
  output [2:0]Q;
  output \FSM_sequential_bm_error_state_reg[2]_0 ;
  output \slave_address_reg[0]_0 ;
  output \FSM_sequential_bm_error_state_reg[3]_0 ;
  output \slave_address_reg[1]_0 ;
  output \FSM_sequential_bm_error_state_reg[0]_1 ;
  output \FSM_sequential_bm_error_state_reg[2]_1 ;
  output \FSM_sequential_bm_error_state_reg[0]_2 ;
  output [1:0]reconfiguration_device;
  input \reconfiguration_device[1]_i_4 ;
  input \reconfiguration_device[1]_i_4_0 ;
  input \reconfiguration_device[1]_i_4_1 ;
  input [4:0]\slave_address_reg[1]_1 ;
  input data_ready;
  input \slave_address_reg[0]_1 ;
  input p_1_in;
  input \reconfiguration_device_reg[0]_0 ;
  input \reconfiguration_device_reg[0]_1 ;
  input \reconfiguration_device_reg[1]_0 ;
  input \reconfiguration_device[1]_i_4_2 ;
  input \reconfiguration_device[1]_i_4_3 ;
  input CLK;
  input RST;
  input \reconfiguration_device_reg[1]_1 ;

  wire CLK;
  wire \FSM_sequential_bm_error_state[3]_i_1_n_0 ;
  wire \FSM_sequential_bm_error_state_reg[0]_0 ;
  wire \FSM_sequential_bm_error_state_reg[0]_1 ;
  wire \FSM_sequential_bm_error_state_reg[0]_2 ;
  wire \FSM_sequential_bm_error_state_reg[2]_0 ;
  wire \FSM_sequential_bm_error_state_reg[2]_1 ;
  wire \FSM_sequential_bm_error_state_reg[3]_0 ;
  wire [2:0]Q;
  wire RST;
  wire [0:0]bm_error_state;
  wire [3:0]bm_error_state_next__0;
  wire data_ready;
  wire p_1_in;
  wire [1:0]reconfiguration_device;
  wire \reconfiguration_device[0]_i_1_n_0 ;
  wire \reconfiguration_device[0]_i_2_n_0 ;
  wire \reconfiguration_device[0]_i_3_n_0 ;
  wire \reconfiguration_device[0]_i_4_n_0 ;
  wire \reconfiguration_device[0]_i_5_n_0 ;
  wire \reconfiguration_device[1]_i_14_n_0 ;
  wire \reconfiguration_device[1]_i_17_n_0 ;
  wire \reconfiguration_device[1]_i_19_n_0 ;
  wire \reconfiguration_device[1]_i_1_n_0 ;
  wire \reconfiguration_device[1]_i_26_n_0 ;
  wire \reconfiguration_device[1]_i_2_n_0 ;
  wire \reconfiguration_device[1]_i_3_n_0 ;
  wire \reconfiguration_device[1]_i_4 ;
  wire \reconfiguration_device[1]_i_4_0 ;
  wire \reconfiguration_device[1]_i_4_1 ;
  wire \reconfiguration_device[1]_i_4_2 ;
  wire \reconfiguration_device[1]_i_4_3 ;
  wire \reconfiguration_device_reg[0]_0 ;
  wire \reconfiguration_device_reg[0]_1 ;
  wire \reconfiguration_device_reg[1]_0 ;
  wire \reconfiguration_device_reg[1]_1 ;
  wire \slave_address[0]_i_1_n_0 ;
  wire \slave_address[1]_i_1_n_0 ;
  wire \slave_address[1]_i_2__0_n_0 ;
  wire \slave_address_reg[0]_0 ;
  wire \slave_address_reg[0]_1 ;
  wire \slave_address_reg[1]_0 ;
  wire [4:0]\slave_address_reg[1]_1 ;

  LUT6 #(
    .INIT(64'h0001111111111111)) 
    \FSM_sequential_bm_error_state[0]_i_1 
       (.I0(Q[2]),
        .I1(bm_error_state),
        .I2(\slave_address_reg[1]_1 [3]),
        .I3(\slave_address_reg[1]_1 [4]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(bm_error_state_next__0[0]));
  LUT6 #(
    .INIT(64'h4444111555552222)) 
    \FSM_sequential_bm_error_state[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\slave_address_reg[1]_1 [4]),
        .I3(\slave_address_reg[1]_1 [3]),
        .I4(bm_error_state),
        .I5(Q[0]),
        .O(bm_error_state_next__0[1]));
  LUT6 #(
    .INIT(64'h0000FFF0000F1F00)) 
    \FSM_sequential_bm_error_state[2]_i_1 
       (.I0(\slave_address_reg[1]_1 [3]),
        .I1(\slave_address_reg[1]_1 [4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(bm_error_state),
        .O(bm_error_state_next__0[2]));
  LUT5 #(
    .INIT(32'h55570000)) 
    \FSM_sequential_bm_error_state[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(bm_error_state),
        .I4(data_ready),
        .O(\FSM_sequential_bm_error_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0054000000000000)) 
    \FSM_sequential_bm_error_state[3]_i_2 
       (.I0(Q[2]),
        .I1(\slave_address_reg[1]_1 [3]),
        .I2(\slave_address_reg[1]_1 [4]),
        .I3(bm_error_state),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(bm_error_state_next__0[3]));
  (* FSM_ENCODED_STATES = "error_state_init_slave_2_data_1:0011,error_state_init_slave_2_data_2:0100,error_state_init_slave_1_finished:0010,error_state_init_slave_1_data_2:0001,error_state_init_slave_1_data_1:0000,error_state_slave_data_received:0111,error_state_slave_ack_received:1000,error_state_master_data_received:0110,error_state_init_slave_2_finished:0101" *) 
  FDCE \FSM_sequential_bm_error_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_bm_error_state[3]_i_1_n_0 ),
        .CLR(RST),
        .D(bm_error_state_next__0[0]),
        .Q(bm_error_state));
  (* FSM_ENCODED_STATES = "error_state_init_slave_2_data_1:0011,error_state_init_slave_2_data_2:0100,error_state_init_slave_1_finished:0010,error_state_init_slave_1_data_2:0001,error_state_init_slave_1_data_1:0000,error_state_slave_data_received:0111,error_state_slave_ack_received:1000,error_state_master_data_received:0110,error_state_init_slave_2_finished:0101" *) 
  FDCE \FSM_sequential_bm_error_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_bm_error_state[3]_i_1_n_0 ),
        .CLR(RST),
        .D(bm_error_state_next__0[1]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "error_state_init_slave_2_data_1:0011,error_state_init_slave_2_data_2:0100,error_state_init_slave_1_finished:0010,error_state_init_slave_1_data_2:0001,error_state_init_slave_1_data_1:0000,error_state_slave_data_received:0111,error_state_slave_ack_received:1000,error_state_master_data_received:0110,error_state_init_slave_2_finished:0101" *) 
  FDCE \FSM_sequential_bm_error_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_bm_error_state[3]_i_1_n_0 ),
        .CLR(RST),
        .D(bm_error_state_next__0[2]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "error_state_init_slave_2_data_1:0011,error_state_init_slave_2_data_2:0100,error_state_init_slave_1_finished:0010,error_state_init_slave_1_data_2:0001,error_state_init_slave_1_data_1:0000,error_state_slave_data_received:0111,error_state_slave_ack_received:1000,error_state_master_data_received:0110,error_state_init_slave_2_finished:0101" *) 
  FDCE \FSM_sequential_bm_error_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_sequential_bm_error_state[3]_i_1_n_0 ),
        .CLR(RST),
        .D(bm_error_state_next__0[3]),
        .Q(Q[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \reconfiguration_device[0]_i_1 
       (.I0(\reconfiguration_device[0]_i_2_n_0 ),
        .I1(\reconfiguration_device[0]_i_3_n_0 ),
        .I2(\reconfiguration_device[0]_i_4_n_0 ),
        .I3(\reconfiguration_device_reg[1]_1 ),
        .I4(reconfiguration_device[0]),
        .O(\reconfiguration_device[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB88B888888888)) 
    \reconfiguration_device[0]_i_2 
       (.I0(\slave_address_reg[0]_0 ),
        .I1(\reconfiguration_device[0]_i_5_n_0 ),
        .I2(p_1_in),
        .I3(\slave_address_reg[1]_1 [4]),
        .I4(\slave_address_reg[1]_1 [3]),
        .I5(\FSM_sequential_bm_error_state_reg[3]_0 ),
        .O(\reconfiguration_device[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h01E0)) 
    \reconfiguration_device[0]_i_3 
       (.I0(bm_error_state),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\reconfiguration_device[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAFFACFACAA)) 
    \reconfiguration_device[0]_i_4 
       (.I0(\reconfiguration_device_reg[0]_0 ),
        .I1(\reconfiguration_device_reg[0]_1 ),
        .I2(bm_error_state),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\reconfiguration_device[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h01B4)) 
    \reconfiguration_device[0]_i_5 
       (.I0(bm_error_state),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\reconfiguration_device[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1145)) 
    \reconfiguration_device[0]_i_7 
       (.I0(Q[2]),
        .I1(bm_error_state),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\FSM_sequential_bm_error_state_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \reconfiguration_device[1]_i_1 
       (.I0(\reconfiguration_device[1]_i_2_n_0 ),
        .I1(\reconfiguration_device[1]_i_3_n_0 ),
        .I2(\reconfiguration_device_reg[1]_1 ),
        .I3(reconfiguration_device[1]),
        .O(\reconfiguration_device[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101000101)) 
    \reconfiguration_device[1]_i_12 
       (.I0(\reconfiguration_device[1]_i_26_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\reconfiguration_device[1]_i_4_2 ),
        .I4(\slave_address_reg[1]_1 [0]),
        .I5(\reconfiguration_device[1]_i_4_3 ),
        .O(\FSM_sequential_bm_error_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0004001400100014)) 
    \reconfiguration_device[1]_i_14 
       (.I0(bm_error_state),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\slave_address_reg[1]_1 [4]),
        .I5(\slave_address_reg[1]_1 [3]),
        .O(\reconfiguration_device[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reconfiguration_device[1]_i_17 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\reconfiguration_device[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reconfiguration_device[1]_i_19 
       (.I0(bm_error_state),
        .I1(Q[2]),
        .O(\reconfiguration_device[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0A0C00000C0000A0)) 
    \reconfiguration_device[1]_i_2 
       (.I0(\slave_address_reg[1]_0 ),
        .I1(\reconfiguration_device_reg[1]_0 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(bm_error_state),
        .O(\reconfiguration_device[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \reconfiguration_device[1]_i_20 
       (.I0(bm_error_state),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\FSM_sequential_bm_error_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reconfiguration_device[1]_i_23 
       (.I0(bm_error_state),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\FSM_sequential_bm_error_state_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \reconfiguration_device[1]_i_25 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(bm_error_state),
        .O(\FSM_sequential_bm_error_state_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \reconfiguration_device[1]_i_26 
       (.I0(bm_error_state),
        .I1(Q[0]),
        .O(\reconfiguration_device[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC082F00000820)) 
    \reconfiguration_device[1]_i_3 
       (.I0(\reconfiguration_device_reg[0]_1 ),
        .I1(bm_error_state),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\reconfiguration_device_reg[0]_0 ),
        .O(\reconfiguration_device[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAAAAAAAAAA)) 
    \reconfiguration_device[1]_i_8 
       (.I0(\reconfiguration_device[1]_i_14_n_0 ),
        .I1(\reconfiguration_device[1]_i_4 ),
        .I2(\reconfiguration_device[1]_i_4_0 ),
        .I3(\reconfiguration_device[1]_i_17_n_0 ),
        .I4(\reconfiguration_device[1]_i_4_1 ),
        .I5(\reconfiguration_device[1]_i_19_n_0 ),
        .O(\FSM_sequential_bm_error_state_reg[0]_0 ));
  FDCE \reconfiguration_device_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\reconfiguration_device[0]_i_1_n_0 ),
        .Q(reconfiguration_device[0]));
  FDCE \reconfiguration_device_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\reconfiguration_device[1]_i_1_n_0 ),
        .Q(reconfiguration_device[1]));
  LUT5 #(
    .INIT(32'hCEFFCE00)) 
    \slave_address[0]_i_1 
       (.I0(\slave_address_reg[1]_1 [1]),
        .I1(\slave_address_reg[1]_1 [3]),
        .I2(\slave_address_reg[1]_1 [4]),
        .I3(\slave_address[1]_i_2__0_n_0 ),
        .I4(\slave_address_reg[0]_0 ),
        .O(\slave_address[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDCFFDC00)) 
    \slave_address[1]_i_1 
       (.I0(\slave_address_reg[1]_1 [3]),
        .I1(\slave_address_reg[1]_1 [4]),
        .I2(\slave_address_reg[1]_1 [2]),
        .I3(\slave_address[1]_i_2__0_n_0 ),
        .I4(\slave_address_reg[1]_0 ),
        .O(\slave_address[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slave_address[1]_i_2__0 
       (.I0(Q[2]),
        .I1(data_ready),
        .I2(\slave_address_reg[0]_1 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(bm_error_state),
        .O(\slave_address[1]_i_2__0_n_0 ));
  FDCE \slave_address_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\slave_address[0]_i_1_n_0 ),
        .Q(\slave_address_reg[0]_0 ));
  FDCE \slave_address_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\slave_address[1]_i_1_n_0 ),
        .Q(\slave_address_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "bus_monitor_timeout" *) 
module m1_for_arty_a7_top_0_0_bus_monitor_timeout
   (Q,
    reconfiguration_device,
    enable_master_watchdog_next,
    CLK,
    RST,
    data_ready,
    \slave_address_reg[1]_0 );
  output [0:0]Q;
  output [1:0]reconfiguration_device;
  input enable_master_watchdog_next;
  input CLK;
  input RST;
  input data_ready;
  input [3:0]\slave_address_reg[1]_0 ;

  wire CLK;
  wire [0:0]Q;
  wire RST;
  wire [2:0]bm_timeout_state;
  wire \bm_timeout_state[3]_i_1_n_0 ;
  wire data_ready;
  wire enable_master_watchdog;
  wire enable_master_watchdog_i_1_n_0;
  wire enable_master_watchdog_next;
  wire enable_slave_watchdog;
  wire enable_slave_watchdog_i_1_n_0;
  wire master_counter1;
  wire master_counter1_carry__0_i_1_n_0;
  wire master_counter1_carry__0_i_2_n_0;
  wire master_counter1_carry__0_i_3_n_0;
  wire master_counter1_carry__0_i_4_n_0;
  wire master_counter1_carry__0_i_5_n_0;
  wire master_counter1_carry__0_i_6_n_0;
  wire master_counter1_carry__0_n_0;
  wire master_counter1_carry__0_n_1;
  wire master_counter1_carry__0_n_2;
  wire master_counter1_carry__0_n_3;
  wire master_counter1_carry__1_i_1_n_0;
  wire master_counter1_carry__1_i_2_n_0;
  wire master_counter1_carry__1_i_3_n_0;
  wire master_counter1_carry__1_i_4_n_0;
  wire master_counter1_carry__1_n_0;
  wire master_counter1_carry__1_n_1;
  wire master_counter1_carry__1_n_2;
  wire master_counter1_carry__1_n_3;
  wire master_counter1_carry__2_i_1_n_0;
  wire master_counter1_carry__2_n_3;
  wire master_counter1_carry_i_1_n_0;
  wire master_counter1_carry_i_2_n_0;
  wire master_counter1_carry_i_3_n_0;
  wire master_counter1_carry_i_4_n_0;
  wire master_counter1_carry_i_5_n_0;
  wire master_counter1_carry_i_6_n_0;
  wire master_counter1_carry_i_7_n_0;
  wire master_counter1_carry_i_8_n_0;
  wire master_counter1_carry_n_0;
  wire master_counter1_carry_n_1;
  wire master_counter1_carry_n_2;
  wire master_counter1_carry_n_3;
  wire \master_counter[0]_i_1_n_0 ;
  wire \master_counter[0]_i_4_n_0 ;
  wire \master_counter[0]_i_5_n_0 ;
  wire \master_counter[0]_i_6_n_0 ;
  wire \master_counter[0]_i_7_n_0 ;
  wire \master_counter[12]_i_2_n_0 ;
  wire \master_counter[12]_i_3_n_0 ;
  wire \master_counter[12]_i_4_n_0 ;
  wire \master_counter[12]_i_5_n_0 ;
  wire \master_counter[16]_i_2_n_0 ;
  wire \master_counter[16]_i_3_n_0 ;
  wire \master_counter[16]_i_4_n_0 ;
  wire \master_counter[16]_i_5_n_0 ;
  wire \master_counter[20]_i_2_n_0 ;
  wire \master_counter[20]_i_3_n_0 ;
  wire \master_counter[20]_i_4_n_0 ;
  wire \master_counter[20]_i_5_n_0 ;
  wire \master_counter[24]_i_2_n_0 ;
  wire \master_counter[24]_i_3_n_0 ;
  wire \master_counter[24]_i_4_n_0 ;
  wire \master_counter[4]_i_2_n_0 ;
  wire \master_counter[4]_i_3_n_0 ;
  wire \master_counter[4]_i_4_n_0 ;
  wire \master_counter[4]_i_5_n_0 ;
  wire \master_counter[8]_i_2_n_0 ;
  wire \master_counter[8]_i_3_n_0 ;
  wire \master_counter[8]_i_4_n_0 ;
  wire \master_counter[8]_i_5_n_0 ;
  wire [26:0]master_counter_reg;
  wire \master_counter_reg[0]_i_2_n_0 ;
  wire \master_counter_reg[0]_i_2_n_1 ;
  wire \master_counter_reg[0]_i_2_n_2 ;
  wire \master_counter_reg[0]_i_2_n_3 ;
  wire \master_counter_reg[0]_i_2_n_4 ;
  wire \master_counter_reg[0]_i_2_n_5 ;
  wire \master_counter_reg[0]_i_2_n_6 ;
  wire \master_counter_reg[0]_i_2_n_7 ;
  wire \master_counter_reg[12]_i_1_n_0 ;
  wire \master_counter_reg[12]_i_1_n_1 ;
  wire \master_counter_reg[12]_i_1_n_2 ;
  wire \master_counter_reg[12]_i_1_n_3 ;
  wire \master_counter_reg[12]_i_1_n_4 ;
  wire \master_counter_reg[12]_i_1_n_5 ;
  wire \master_counter_reg[12]_i_1_n_6 ;
  wire \master_counter_reg[12]_i_1_n_7 ;
  wire \master_counter_reg[16]_i_1_n_0 ;
  wire \master_counter_reg[16]_i_1_n_1 ;
  wire \master_counter_reg[16]_i_1_n_2 ;
  wire \master_counter_reg[16]_i_1_n_3 ;
  wire \master_counter_reg[16]_i_1_n_4 ;
  wire \master_counter_reg[16]_i_1_n_5 ;
  wire \master_counter_reg[16]_i_1_n_6 ;
  wire \master_counter_reg[16]_i_1_n_7 ;
  wire \master_counter_reg[20]_i_1_n_0 ;
  wire \master_counter_reg[20]_i_1_n_1 ;
  wire \master_counter_reg[20]_i_1_n_2 ;
  wire \master_counter_reg[20]_i_1_n_3 ;
  wire \master_counter_reg[20]_i_1_n_4 ;
  wire \master_counter_reg[20]_i_1_n_5 ;
  wire \master_counter_reg[20]_i_1_n_6 ;
  wire \master_counter_reg[20]_i_1_n_7 ;
  wire \master_counter_reg[24]_i_1_n_2 ;
  wire \master_counter_reg[24]_i_1_n_3 ;
  wire \master_counter_reg[24]_i_1_n_5 ;
  wire \master_counter_reg[24]_i_1_n_6 ;
  wire \master_counter_reg[24]_i_1_n_7 ;
  wire \master_counter_reg[4]_i_1_n_0 ;
  wire \master_counter_reg[4]_i_1_n_1 ;
  wire \master_counter_reg[4]_i_1_n_2 ;
  wire \master_counter_reg[4]_i_1_n_3 ;
  wire \master_counter_reg[4]_i_1_n_4 ;
  wire \master_counter_reg[4]_i_1_n_5 ;
  wire \master_counter_reg[4]_i_1_n_6 ;
  wire \master_counter_reg[4]_i_1_n_7 ;
  wire \master_counter_reg[8]_i_1_n_0 ;
  wire \master_counter_reg[8]_i_1_n_1 ;
  wire \master_counter_reg[8]_i_1_n_2 ;
  wire \master_counter_reg[8]_i_1_n_3 ;
  wire \master_counter_reg[8]_i_1_n_4 ;
  wire \master_counter_reg[8]_i_1_n_5 ;
  wire \master_counter_reg[8]_i_1_n_6 ;
  wire \master_counter_reg[8]_i_1_n_7 ;
  wire master_watchdog_overflow_i_1_n_0;
  wire master_watchdog_overflow_reg_n_0;
  wire p_0_in;
  wire [3:0]p_0_out;
  wire [1:0]reconfiguration_device;
  wire \reconfiguration_device[0]_i_1_n_0 ;
  wire \reconfiguration_device[1]_i_1_n_0 ;
  wire reset_watchdog;
  wire [1:0]slave_address;
  wire \slave_address[0]_i_1_n_0 ;
  wire \slave_address[1]_i_1_n_0 ;
  wire \slave_address[1]_i_2_n_0 ;
  wire [3:0]\slave_address_reg[1]_0 ;
  wire slave_counter1;
  wire slave_counter1_carry__0_i_1_n_0;
  wire slave_counter1_carry__0_i_2_n_0;
  wire slave_counter1_carry__0_i_3_n_0;
  wire slave_counter1_carry__0_i_4_n_0;
  wire slave_counter1_carry__0_i_5_n_0;
  wire slave_counter1_carry__0_i_6_n_0;
  wire slave_counter1_carry__0_n_0;
  wire slave_counter1_carry__0_n_1;
  wire slave_counter1_carry__0_n_2;
  wire slave_counter1_carry__0_n_3;
  wire slave_counter1_carry__1_i_1_n_0;
  wire slave_counter1_carry__1_i_2_n_0;
  wire slave_counter1_carry__1_i_3_n_0;
  wire slave_counter1_carry__1_i_4_n_0;
  wire slave_counter1_carry__1_i_5_n_0;
  wire slave_counter1_carry__1_i_6_n_0;
  wire slave_counter1_carry__1_n_0;
  wire slave_counter1_carry__1_n_1;
  wire slave_counter1_carry__1_n_2;
  wire slave_counter1_carry__1_n_3;
  wire slave_counter1_carry__2_i_1_n_0;
  wire slave_counter1_carry__2_i_2_n_0;
  wire slave_counter1_carry_i_1_n_0;
  wire slave_counter1_carry_i_2_n_0;
  wire slave_counter1_carry_i_3_n_0;
  wire slave_counter1_carry_i_4_n_0;
  wire slave_counter1_carry_i_5_n_0;
  wire slave_counter1_carry_i_6_n_0;
  wire slave_counter1_carry_i_7_n_0;
  wire slave_counter1_carry_i_8_n_0;
  wire slave_counter1_carry_n_0;
  wire slave_counter1_carry_n_1;
  wire slave_counter1_carry_n_2;
  wire slave_counter1_carry_n_3;
  wire \slave_counter[0]_i_1_n_0 ;
  wire \slave_counter[0]_i_3_n_0 ;
  wire \slave_counter[0]_i_4_n_0 ;
  wire \slave_counter[0]_i_5_n_0 ;
  wire \slave_counter[0]_i_6_n_0 ;
  wire \slave_counter[0]_i_7_n_0 ;
  wire \slave_counter[12]_i_2_n_0 ;
  wire \slave_counter[12]_i_3_n_0 ;
  wire \slave_counter[12]_i_4_n_0 ;
  wire \slave_counter[12]_i_5_n_0 ;
  wire \slave_counter[16]_i_2_n_0 ;
  wire \slave_counter[16]_i_3_n_0 ;
  wire \slave_counter[16]_i_4_n_0 ;
  wire \slave_counter[16]_i_5_n_0 ;
  wire \slave_counter[20]_i_2_n_0 ;
  wire \slave_counter[20]_i_3_n_0 ;
  wire \slave_counter[20]_i_4_n_0 ;
  wire \slave_counter[20]_i_5_n_0 ;
  wire \slave_counter[24]_i_2_n_0 ;
  wire \slave_counter[24]_i_3_n_0 ;
  wire \slave_counter[4]_i_2_n_0 ;
  wire \slave_counter[4]_i_3_n_0 ;
  wire \slave_counter[4]_i_4_n_0 ;
  wire \slave_counter[4]_i_5_n_0 ;
  wire \slave_counter[8]_i_2_n_0 ;
  wire \slave_counter[8]_i_3_n_0 ;
  wire \slave_counter[8]_i_4_n_0 ;
  wire \slave_counter[8]_i_5_n_0 ;
  wire [25:0]slave_counter_reg;
  wire \slave_counter_reg[0]_i_2_n_0 ;
  wire \slave_counter_reg[0]_i_2_n_1 ;
  wire \slave_counter_reg[0]_i_2_n_2 ;
  wire \slave_counter_reg[0]_i_2_n_3 ;
  wire \slave_counter_reg[0]_i_2_n_4 ;
  wire \slave_counter_reg[0]_i_2_n_5 ;
  wire \slave_counter_reg[0]_i_2_n_6 ;
  wire \slave_counter_reg[0]_i_2_n_7 ;
  wire \slave_counter_reg[12]_i_1_n_0 ;
  wire \slave_counter_reg[12]_i_1_n_1 ;
  wire \slave_counter_reg[12]_i_1_n_2 ;
  wire \slave_counter_reg[12]_i_1_n_3 ;
  wire \slave_counter_reg[12]_i_1_n_4 ;
  wire \slave_counter_reg[12]_i_1_n_5 ;
  wire \slave_counter_reg[12]_i_1_n_6 ;
  wire \slave_counter_reg[12]_i_1_n_7 ;
  wire \slave_counter_reg[16]_i_1_n_0 ;
  wire \slave_counter_reg[16]_i_1_n_1 ;
  wire \slave_counter_reg[16]_i_1_n_2 ;
  wire \slave_counter_reg[16]_i_1_n_3 ;
  wire \slave_counter_reg[16]_i_1_n_4 ;
  wire \slave_counter_reg[16]_i_1_n_5 ;
  wire \slave_counter_reg[16]_i_1_n_6 ;
  wire \slave_counter_reg[16]_i_1_n_7 ;
  wire \slave_counter_reg[20]_i_1_n_0 ;
  wire \slave_counter_reg[20]_i_1_n_1 ;
  wire \slave_counter_reg[20]_i_1_n_2 ;
  wire \slave_counter_reg[20]_i_1_n_3 ;
  wire \slave_counter_reg[20]_i_1_n_4 ;
  wire \slave_counter_reg[20]_i_1_n_5 ;
  wire \slave_counter_reg[20]_i_1_n_6 ;
  wire \slave_counter_reg[20]_i_1_n_7 ;
  wire \slave_counter_reg[24]_i_1_n_3 ;
  wire \slave_counter_reg[24]_i_1_n_6 ;
  wire \slave_counter_reg[24]_i_1_n_7 ;
  wire \slave_counter_reg[4]_i_1_n_0 ;
  wire \slave_counter_reg[4]_i_1_n_1 ;
  wire \slave_counter_reg[4]_i_1_n_2 ;
  wire \slave_counter_reg[4]_i_1_n_3 ;
  wire \slave_counter_reg[4]_i_1_n_4 ;
  wire \slave_counter_reg[4]_i_1_n_5 ;
  wire \slave_counter_reg[4]_i_1_n_6 ;
  wire \slave_counter_reg[4]_i_1_n_7 ;
  wire \slave_counter_reg[8]_i_1_n_0 ;
  wire \slave_counter_reg[8]_i_1_n_1 ;
  wire \slave_counter_reg[8]_i_1_n_2 ;
  wire \slave_counter_reg[8]_i_1_n_3 ;
  wire \slave_counter_reg[8]_i_1_n_4 ;
  wire \slave_counter_reg[8]_i_1_n_5 ;
  wire \slave_counter_reg[8]_i_1_n_6 ;
  wire \slave_counter_reg[8]_i_1_n_7 ;
  wire slave_watchdog_overflow_i_1_n_0;
  wire slave_watchdog_overflow_reg_n_0;
  wire [3:0]NLW_master_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_master_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_master_counter1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_master_counter1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_master_counter1_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_master_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_master_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_slave_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_slave_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_slave_counter1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_slave_counter1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_slave_counter1_carry__2_O_UNCONNECTED;
  wire [3:1]\NLW_slave_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_slave_counter_reg[24]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF10)) 
    \bm_timeout_state[0]_i_1 
       (.I0(bm_timeout_state[0]),
        .I1(Q),
        .I2(data_ready),
        .I3(slave_watchdog_overflow_reg_n_0),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000E600)) 
    \bm_timeout_state[1]_i_1 
       (.I0(bm_timeout_state[0]),
        .I1(bm_timeout_state[1]),
        .I2(bm_timeout_state[2]),
        .I3(data_ready),
        .I4(Q),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0F000800)) 
    \bm_timeout_state[2]_i_1 
       (.I0(bm_timeout_state[0]),
        .I1(bm_timeout_state[1]),
        .I2(Q),
        .I3(data_ready),
        .I4(bm_timeout_state[2]),
        .O(p_0_out[2]));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \bm_timeout_state[3]_i_1 
       (.I0(master_watchdog_overflow_reg_n_0),
        .I1(slave_watchdog_overflow_reg_n_0),
        .I2(data_ready),
        .I3(Q),
        .O(\bm_timeout_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bm_timeout_state[3]_i_2 
       (.I0(Q),
        .I1(data_ready),
        .O(p_0_out[3]));
  FDCE \bm_timeout_state_reg[0] 
       (.C(CLK),
        .CE(\bm_timeout_state[3]_i_1_n_0 ),
        .CLR(RST),
        .D(p_0_out[0]),
        .Q(bm_timeout_state[0]));
  FDCE \bm_timeout_state_reg[1] 
       (.C(CLK),
        .CE(\bm_timeout_state[3]_i_1_n_0 ),
        .CLR(RST),
        .D(p_0_out[1]),
        .Q(bm_timeout_state[1]));
  FDCE \bm_timeout_state_reg[2] 
       (.C(CLK),
        .CE(\bm_timeout_state[3]_i_1_n_0 ),
        .CLR(RST),
        .D(p_0_out[2]),
        .Q(bm_timeout_state[2]));
  FDCE \bm_timeout_state_reg[3] 
       (.C(CLK),
        .CE(\bm_timeout_state[3]_i_1_n_0 ),
        .CLR(RST),
        .D(p_0_out[3]),
        .Q(Q));
  LUT6 #(
    .INIT(64'hFFFFCBFF0000CB00)) 
    enable_master_watchdog_i_1
       (.I0(bm_timeout_state[1]),
        .I1(bm_timeout_state[0]),
        .I2(bm_timeout_state[2]),
        .I3(data_ready),
        .I4(Q),
        .I5(enable_master_watchdog),
        .O(enable_master_watchdog_i_1_n_0));
  FDPE enable_master_watchdog_reg
       (.C(CLK),
        .CE(1'b1),
        .D(enable_master_watchdog_i_1_n_0),
        .PRE(RST),
        .Q(enable_master_watchdog));
  LUT6 #(
    .INIT(64'hFFFF26FF00002600)) 
    enable_slave_watchdog_i_1
       (.I0(bm_timeout_state[2]),
        .I1(bm_timeout_state[0]),
        .I2(bm_timeout_state[1]),
        .I3(data_ready),
        .I4(Q),
        .I5(enable_slave_watchdog),
        .O(enable_slave_watchdog_i_1_n_0));
  FDCE enable_slave_watchdog_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(enable_slave_watchdog_i_1_n_0),
        .Q(enable_slave_watchdog));
  CARRY4 master_counter1_carry
       (.CI(1'b0),
        .CO({master_counter1_carry_n_0,master_counter1_carry_n_1,master_counter1_carry_n_2,master_counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({master_counter1_carry_i_1_n_0,master_counter1_carry_i_2_n_0,master_counter1_carry_i_3_n_0,master_counter1_carry_i_4_n_0}),
        .O(NLW_master_counter1_carry_O_UNCONNECTED[3:0]),
        .S({master_counter1_carry_i_5_n_0,master_counter1_carry_i_6_n_0,master_counter1_carry_i_7_n_0,master_counter1_carry_i_8_n_0}));
  CARRY4 master_counter1_carry__0
       (.CI(master_counter1_carry_n_0),
        .CO({master_counter1_carry__0_n_0,master_counter1_carry__0_n_1,master_counter1_carry__0_n_2,master_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,master_counter1_carry__0_i_1_n_0,master_counter1_carry__0_i_2_n_0,master_counter_reg[9]}),
        .O(NLW_master_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({master_counter1_carry__0_i_3_n_0,master_counter1_carry__0_i_4_n_0,master_counter1_carry__0_i_5_n_0,master_counter1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    master_counter1_carry__0_i_1
       (.I0(master_counter_reg[13]),
        .I1(master_counter_reg[12]),
        .O(master_counter1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    master_counter1_carry__0_i_2
       (.I0(master_counter_reg[10]),
        .I1(master_counter_reg[11]),
        .O(master_counter1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    master_counter1_carry__0_i_3
       (.I0(master_counter_reg[15]),
        .I1(master_counter_reg[14]),
        .O(master_counter1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    master_counter1_carry__0_i_4
       (.I0(master_counter_reg[13]),
        .I1(master_counter_reg[12]),
        .O(master_counter1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    master_counter1_carry__0_i_5
       (.I0(master_counter_reg[11]),
        .I1(master_counter_reg[10]),
        .O(master_counter1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    master_counter1_carry__0_i_6
       (.I0(master_counter_reg[8]),
        .I1(master_counter_reg[9]),
        .O(master_counter1_carry__0_i_6_n_0));
  CARRY4 master_counter1_carry__1
       (.CI(master_counter1_carry__0_n_0),
        .CO({master_counter1_carry__1_n_0,master_counter1_carry__1_n_1,master_counter1_carry__1_n_2,master_counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,master_counter_reg[19],master_counter_reg[17]}),
        .O(NLW_master_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({master_counter1_carry__1_i_1_n_0,master_counter1_carry__1_i_2_n_0,master_counter1_carry__1_i_3_n_0,master_counter1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    master_counter1_carry__1_i_1
       (.I0(master_counter_reg[23]),
        .I1(master_counter_reg[22]),
        .O(master_counter1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    master_counter1_carry__1_i_2
       (.I0(master_counter_reg[21]),
        .I1(master_counter_reg[20]),
        .O(master_counter1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    master_counter1_carry__1_i_3
       (.I0(master_counter_reg[18]),
        .I1(master_counter_reg[19]),
        .O(master_counter1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    master_counter1_carry__1_i_4
       (.I0(master_counter_reg[16]),
        .I1(master_counter_reg[17]),
        .O(master_counter1_carry__1_i_4_n_0));
  CARRY4 master_counter1_carry__2
       (.CI(master_counter1_carry__1_n_0),
        .CO({NLW_master_counter1_carry__2_CO_UNCONNECTED[3:2],master_counter1,master_counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,master_counter_reg[25]}),
        .O(NLW_master_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,master_counter_reg[26],master_counter1_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    master_counter1_carry__2_i_1
       (.I0(master_counter_reg[24]),
        .I1(master_counter_reg[25]),
        .O(master_counter1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    master_counter1_carry_i_1
       (.I0(master_counter_reg[6]),
        .I1(master_counter_reg[7]),
        .O(master_counter1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    master_counter1_carry_i_2
       (.I0(master_counter_reg[4]),
        .I1(master_counter_reg[5]),
        .O(master_counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    master_counter1_carry_i_3
       (.I0(master_counter_reg[2]),
        .I1(master_counter_reg[3]),
        .O(master_counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    master_counter1_carry_i_4
       (.I0(master_counter_reg[0]),
        .I1(master_counter_reg[1]),
        .O(master_counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    master_counter1_carry_i_5
       (.I0(master_counter_reg[7]),
        .I1(master_counter_reg[6]),
        .O(master_counter1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    master_counter1_carry_i_6
       (.I0(master_counter_reg[5]),
        .I1(master_counter_reg[4]),
        .O(master_counter1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    master_counter1_carry_i_7
       (.I0(master_counter_reg[3]),
        .I1(master_counter_reg[2]),
        .O(master_counter1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    master_counter1_carry_i_8
       (.I0(master_counter_reg[1]),
        .I1(master_counter_reg[0]),
        .O(master_counter1_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    \master_counter[0]_i_1 
       (.I0(reset_watchdog),
        .I1(master_counter1),
        .I2(enable_master_watchdog),
        .O(\master_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \master_counter[0]_i_3 
       (.I0(reset_watchdog),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[0]_i_4 
       (.I0(master_counter_reg[3]),
        .I1(reset_watchdog),
        .O(\master_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[0]_i_5 
       (.I0(master_counter_reg[2]),
        .I1(reset_watchdog),
        .O(\master_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[0]_i_6 
       (.I0(master_counter_reg[1]),
        .I1(reset_watchdog),
        .O(\master_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \master_counter[0]_i_7 
       (.I0(master_counter_reg[0]),
        .I1(reset_watchdog),
        .O(\master_counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[12]_i_2 
       (.I0(master_counter_reg[15]),
        .I1(reset_watchdog),
        .O(\master_counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[12]_i_3 
       (.I0(master_counter_reg[14]),
        .I1(reset_watchdog),
        .O(\master_counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[12]_i_4 
       (.I0(master_counter_reg[13]),
        .I1(reset_watchdog),
        .O(\master_counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[12]_i_5 
       (.I0(master_counter_reg[12]),
        .I1(reset_watchdog),
        .O(\master_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[16]_i_2 
       (.I0(master_counter_reg[19]),
        .I1(reset_watchdog),
        .O(\master_counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[16]_i_3 
       (.I0(master_counter_reg[18]),
        .I1(reset_watchdog),
        .O(\master_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[16]_i_4 
       (.I0(master_counter_reg[17]),
        .I1(reset_watchdog),
        .O(\master_counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[16]_i_5 
       (.I0(master_counter_reg[16]),
        .I1(reset_watchdog),
        .O(\master_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[20]_i_2 
       (.I0(master_counter_reg[23]),
        .I1(reset_watchdog),
        .O(\master_counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[20]_i_3 
       (.I0(master_counter_reg[22]),
        .I1(reset_watchdog),
        .O(\master_counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[20]_i_4 
       (.I0(master_counter_reg[21]),
        .I1(reset_watchdog),
        .O(\master_counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[20]_i_5 
       (.I0(master_counter_reg[20]),
        .I1(reset_watchdog),
        .O(\master_counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[24]_i_2 
       (.I0(master_counter_reg[26]),
        .I1(reset_watchdog),
        .O(\master_counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[24]_i_3 
       (.I0(master_counter_reg[25]),
        .I1(reset_watchdog),
        .O(\master_counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[24]_i_4 
       (.I0(master_counter_reg[24]),
        .I1(reset_watchdog),
        .O(\master_counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[4]_i_2 
       (.I0(master_counter_reg[7]),
        .I1(reset_watchdog),
        .O(\master_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[4]_i_3 
       (.I0(master_counter_reg[6]),
        .I1(reset_watchdog),
        .O(\master_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[4]_i_4 
       (.I0(master_counter_reg[5]),
        .I1(reset_watchdog),
        .O(\master_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[4]_i_5 
       (.I0(master_counter_reg[4]),
        .I1(reset_watchdog),
        .O(\master_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[8]_i_2 
       (.I0(master_counter_reg[11]),
        .I1(reset_watchdog),
        .O(\master_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[8]_i_3 
       (.I0(master_counter_reg[10]),
        .I1(reset_watchdog),
        .O(\master_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[8]_i_4 
       (.I0(master_counter_reg[9]),
        .I1(reset_watchdog),
        .O(\master_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \master_counter[8]_i_5 
       (.I0(master_counter_reg[8]),
        .I1(reset_watchdog),
        .O(\master_counter[8]_i_5_n_0 ));
  FDCE \master_counter_reg[0] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[0]_i_2_n_7 ),
        .Q(master_counter_reg[0]));
  CARRY4 \master_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\master_counter_reg[0]_i_2_n_0 ,\master_counter_reg[0]_i_2_n_1 ,\master_counter_reg[0]_i_2_n_2 ,\master_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O({\master_counter_reg[0]_i_2_n_4 ,\master_counter_reg[0]_i_2_n_5 ,\master_counter_reg[0]_i_2_n_6 ,\master_counter_reg[0]_i_2_n_7 }),
        .S({\master_counter[0]_i_4_n_0 ,\master_counter[0]_i_5_n_0 ,\master_counter[0]_i_6_n_0 ,\master_counter[0]_i_7_n_0 }));
  FDCE \master_counter_reg[10] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[8]_i_1_n_5 ),
        .Q(master_counter_reg[10]));
  FDCE \master_counter_reg[11] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[8]_i_1_n_4 ),
        .Q(master_counter_reg[11]));
  FDCE \master_counter_reg[12] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[12]_i_1_n_7 ),
        .Q(master_counter_reg[12]));
  CARRY4 \master_counter_reg[12]_i_1 
       (.CI(\master_counter_reg[8]_i_1_n_0 ),
        .CO({\master_counter_reg[12]_i_1_n_0 ,\master_counter_reg[12]_i_1_n_1 ,\master_counter_reg[12]_i_1_n_2 ,\master_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\master_counter_reg[12]_i_1_n_4 ,\master_counter_reg[12]_i_1_n_5 ,\master_counter_reg[12]_i_1_n_6 ,\master_counter_reg[12]_i_1_n_7 }),
        .S({\master_counter[12]_i_2_n_0 ,\master_counter[12]_i_3_n_0 ,\master_counter[12]_i_4_n_0 ,\master_counter[12]_i_5_n_0 }));
  FDCE \master_counter_reg[13] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[12]_i_1_n_6 ),
        .Q(master_counter_reg[13]));
  FDCE \master_counter_reg[14] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[12]_i_1_n_5 ),
        .Q(master_counter_reg[14]));
  FDCE \master_counter_reg[15] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[12]_i_1_n_4 ),
        .Q(master_counter_reg[15]));
  FDCE \master_counter_reg[16] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[16]_i_1_n_7 ),
        .Q(master_counter_reg[16]));
  CARRY4 \master_counter_reg[16]_i_1 
       (.CI(\master_counter_reg[12]_i_1_n_0 ),
        .CO({\master_counter_reg[16]_i_1_n_0 ,\master_counter_reg[16]_i_1_n_1 ,\master_counter_reg[16]_i_1_n_2 ,\master_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\master_counter_reg[16]_i_1_n_4 ,\master_counter_reg[16]_i_1_n_5 ,\master_counter_reg[16]_i_1_n_6 ,\master_counter_reg[16]_i_1_n_7 }),
        .S({\master_counter[16]_i_2_n_0 ,\master_counter[16]_i_3_n_0 ,\master_counter[16]_i_4_n_0 ,\master_counter[16]_i_5_n_0 }));
  FDCE \master_counter_reg[17] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[16]_i_1_n_6 ),
        .Q(master_counter_reg[17]));
  FDCE \master_counter_reg[18] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[16]_i_1_n_5 ),
        .Q(master_counter_reg[18]));
  FDCE \master_counter_reg[19] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[16]_i_1_n_4 ),
        .Q(master_counter_reg[19]));
  FDCE \master_counter_reg[1] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[0]_i_2_n_6 ),
        .Q(master_counter_reg[1]));
  FDCE \master_counter_reg[20] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[20]_i_1_n_7 ),
        .Q(master_counter_reg[20]));
  CARRY4 \master_counter_reg[20]_i_1 
       (.CI(\master_counter_reg[16]_i_1_n_0 ),
        .CO({\master_counter_reg[20]_i_1_n_0 ,\master_counter_reg[20]_i_1_n_1 ,\master_counter_reg[20]_i_1_n_2 ,\master_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\master_counter_reg[20]_i_1_n_4 ,\master_counter_reg[20]_i_1_n_5 ,\master_counter_reg[20]_i_1_n_6 ,\master_counter_reg[20]_i_1_n_7 }),
        .S({\master_counter[20]_i_2_n_0 ,\master_counter[20]_i_3_n_0 ,\master_counter[20]_i_4_n_0 ,\master_counter[20]_i_5_n_0 }));
  FDCE \master_counter_reg[21] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[20]_i_1_n_6 ),
        .Q(master_counter_reg[21]));
  FDCE \master_counter_reg[22] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[20]_i_1_n_5 ),
        .Q(master_counter_reg[22]));
  FDCE \master_counter_reg[23] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[20]_i_1_n_4 ),
        .Q(master_counter_reg[23]));
  FDCE \master_counter_reg[24] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[24]_i_1_n_7 ),
        .Q(master_counter_reg[24]));
  CARRY4 \master_counter_reg[24]_i_1 
       (.CI(\master_counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_master_counter_reg[24]_i_1_CO_UNCONNECTED [3:2],\master_counter_reg[24]_i_1_n_2 ,\master_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_master_counter_reg[24]_i_1_O_UNCONNECTED [3],\master_counter_reg[24]_i_1_n_5 ,\master_counter_reg[24]_i_1_n_6 ,\master_counter_reg[24]_i_1_n_7 }),
        .S({1'b0,\master_counter[24]_i_2_n_0 ,\master_counter[24]_i_3_n_0 ,\master_counter[24]_i_4_n_0 }));
  FDCE \master_counter_reg[25] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[24]_i_1_n_6 ),
        .Q(master_counter_reg[25]));
  FDCE \master_counter_reg[26] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[24]_i_1_n_5 ),
        .Q(master_counter_reg[26]));
  FDCE \master_counter_reg[2] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[0]_i_2_n_5 ),
        .Q(master_counter_reg[2]));
  FDCE \master_counter_reg[3] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[0]_i_2_n_4 ),
        .Q(master_counter_reg[3]));
  FDCE \master_counter_reg[4] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[4]_i_1_n_7 ),
        .Q(master_counter_reg[4]));
  CARRY4 \master_counter_reg[4]_i_1 
       (.CI(\master_counter_reg[0]_i_2_n_0 ),
        .CO({\master_counter_reg[4]_i_1_n_0 ,\master_counter_reg[4]_i_1_n_1 ,\master_counter_reg[4]_i_1_n_2 ,\master_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\master_counter_reg[4]_i_1_n_4 ,\master_counter_reg[4]_i_1_n_5 ,\master_counter_reg[4]_i_1_n_6 ,\master_counter_reg[4]_i_1_n_7 }),
        .S({\master_counter[4]_i_2_n_0 ,\master_counter[4]_i_3_n_0 ,\master_counter[4]_i_4_n_0 ,\master_counter[4]_i_5_n_0 }));
  FDCE \master_counter_reg[5] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[4]_i_1_n_6 ),
        .Q(master_counter_reg[5]));
  FDCE \master_counter_reg[6] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[4]_i_1_n_5 ),
        .Q(master_counter_reg[6]));
  FDCE \master_counter_reg[7] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[4]_i_1_n_4 ),
        .Q(master_counter_reg[7]));
  FDCE \master_counter_reg[8] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[8]_i_1_n_7 ),
        .Q(master_counter_reg[8]));
  CARRY4 \master_counter_reg[8]_i_1 
       (.CI(\master_counter_reg[4]_i_1_n_0 ),
        .CO({\master_counter_reg[8]_i_1_n_0 ,\master_counter_reg[8]_i_1_n_1 ,\master_counter_reg[8]_i_1_n_2 ,\master_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\master_counter_reg[8]_i_1_n_4 ,\master_counter_reg[8]_i_1_n_5 ,\master_counter_reg[8]_i_1_n_6 ,\master_counter_reg[8]_i_1_n_7 }),
        .S({\master_counter[8]_i_2_n_0 ,\master_counter[8]_i_3_n_0 ,\master_counter[8]_i_4_n_0 ,\master_counter[8]_i_5_n_0 }));
  FDCE \master_counter_reg[9] 
       (.C(CLK),
        .CE(\master_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\master_counter_reg[8]_i_1_n_6 ),
        .Q(master_counter_reg[9]));
  LUT4 #(
    .INIT(16'hFF40)) 
    master_watchdog_overflow_i_1
       (.I0(reset_watchdog),
        .I1(enable_master_watchdog),
        .I2(master_counter1),
        .I3(master_watchdog_overflow_reg_n_0),
        .O(master_watchdog_overflow_i_1_n_0));
  FDCE master_watchdog_overflow_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(master_watchdog_overflow_i_1_n_0),
        .Q(master_watchdog_overflow_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBF000000B0)) 
    \reconfiguration_device[0]_i_1 
       (.I0(slave_address[0]),
        .I1(bm_timeout_state[0]),
        .I2(Q),
        .I3(bm_timeout_state[1]),
        .I4(bm_timeout_state[2]),
        .I5(reconfiguration_device[0]),
        .O(\reconfiguration_device[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF000000B0)) 
    \reconfiguration_device[1]_i_1 
       (.I0(slave_address[1]),
        .I1(bm_timeout_state[0]),
        .I2(Q),
        .I3(bm_timeout_state[1]),
        .I4(bm_timeout_state[2]),
        .I5(reconfiguration_device[1]),
        .O(\reconfiguration_device[1]_i_1_n_0 ));
  FDCE \reconfiguration_device_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\reconfiguration_device[0]_i_1_n_0 ),
        .Q(reconfiguration_device[0]));
  FDCE \reconfiguration_device_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\reconfiguration_device[1]_i_1_n_0 ),
        .Q(reconfiguration_device[1]));
  FDCE reset_watchdog_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(enable_master_watchdog_next),
        .Q(reset_watchdog));
  LUT6 #(
    .INIT(64'hFFFFFFCE000000CE)) 
    \slave_address[0]_i_1 
       (.I0(\slave_address_reg[1]_0 [0]),
        .I1(\slave_address_reg[1]_0 [2]),
        .I2(\slave_address_reg[1]_0 [3]),
        .I3(p_0_out[3]),
        .I4(\slave_address[1]_i_2_n_0 ),
        .I5(slave_address[0]),
        .O(\slave_address[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDC000000DC)) 
    \slave_address[1]_i_1 
       (.I0(\slave_address_reg[1]_0 [2]),
        .I1(\slave_address_reg[1]_0 [3]),
        .I2(\slave_address_reg[1]_0 [1]),
        .I3(p_0_out[3]),
        .I4(\slave_address[1]_i_2_n_0 ),
        .I5(slave_address[1]),
        .O(\slave_address[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hCB)) 
    \slave_address[1]_i_2 
       (.I0(bm_timeout_state[1]),
        .I1(bm_timeout_state[0]),
        .I2(bm_timeout_state[2]),
        .O(\slave_address[1]_i_2_n_0 ));
  FDCE \slave_address_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\slave_address[0]_i_1_n_0 ),
        .Q(slave_address[0]));
  FDCE \slave_address_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\slave_address[1]_i_1_n_0 ),
        .Q(slave_address[1]));
  CARRY4 slave_counter1_carry
       (.CI(1'b0),
        .CO({slave_counter1_carry_n_0,slave_counter1_carry_n_1,slave_counter1_carry_n_2,slave_counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({slave_counter1_carry_i_1_n_0,slave_counter1_carry_i_2_n_0,slave_counter1_carry_i_3_n_0,slave_counter1_carry_i_4_n_0}),
        .O(NLW_slave_counter1_carry_O_UNCONNECTED[3:0]),
        .S({slave_counter1_carry_i_5_n_0,slave_counter1_carry_i_6_n_0,slave_counter1_carry_i_7_n_0,slave_counter1_carry_i_8_n_0}));
  CARRY4 slave_counter1_carry__0
       (.CI(slave_counter1_carry_n_0),
        .CO({slave_counter1_carry__0_n_0,slave_counter1_carry__0_n_1,slave_counter1_carry__0_n_2,slave_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,slave_counter1_carry__0_i_1_n_0,slave_counter1_carry__0_i_2_n_0}),
        .O(NLW_slave_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({slave_counter1_carry__0_i_3_n_0,slave_counter1_carry__0_i_4_n_0,slave_counter1_carry__0_i_5_n_0,slave_counter1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    slave_counter1_carry__0_i_1
       (.I0(slave_counter_reg[10]),
        .I1(slave_counter_reg[11]),
        .O(slave_counter1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slave_counter1_carry__0_i_2
       (.I0(slave_counter_reg[8]),
        .I1(slave_counter_reg[9]),
        .O(slave_counter1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slave_counter1_carry__0_i_3
       (.I0(slave_counter_reg[15]),
        .I1(slave_counter_reg[14]),
        .O(slave_counter1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slave_counter1_carry__0_i_4
       (.I0(slave_counter_reg[13]),
        .I1(slave_counter_reg[12]),
        .O(slave_counter1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slave_counter1_carry__0_i_5
       (.I0(slave_counter_reg[11]),
        .I1(slave_counter_reg[10]),
        .O(slave_counter1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slave_counter1_carry__0_i_6
       (.I0(slave_counter_reg[9]),
        .I1(slave_counter_reg[8]),
        .O(slave_counter1_carry__0_i_6_n_0));
  CARRY4 slave_counter1_carry__1
       (.CI(slave_counter1_carry__0_n_0),
        .CO({slave_counter1_carry__1_n_0,slave_counter1_carry__1_n_1,slave_counter1_carry__1_n_2,slave_counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,slave_counter1_carry__1_i_1_n_0,slave_counter1_carry__1_i_2_n_0}),
        .O(NLW_slave_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({slave_counter1_carry__1_i_3_n_0,slave_counter1_carry__1_i_4_n_0,slave_counter1_carry__1_i_5_n_0,slave_counter1_carry__1_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    slave_counter1_carry__1_i_1
       (.I0(slave_counter_reg[19]),
        .I1(slave_counter_reg[18]),
        .O(slave_counter1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slave_counter1_carry__1_i_2
       (.I0(slave_counter_reg[17]),
        .I1(slave_counter_reg[16]),
        .O(slave_counter1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slave_counter1_carry__1_i_3
       (.I0(slave_counter_reg[23]),
        .I1(slave_counter_reg[22]),
        .O(slave_counter1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slave_counter1_carry__1_i_4
       (.I0(slave_counter_reg[21]),
        .I1(slave_counter_reg[20]),
        .O(slave_counter1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slave_counter1_carry__1_i_5
       (.I0(slave_counter_reg[19]),
        .I1(slave_counter_reg[18]),
        .O(slave_counter1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slave_counter1_carry__1_i_6
       (.I0(slave_counter_reg[17]),
        .I1(slave_counter_reg[16]),
        .O(slave_counter1_carry__1_i_6_n_0));
  CARRY4 slave_counter1_carry__2
       (.CI(slave_counter1_carry__1_n_0),
        .CO({NLW_slave_counter1_carry__2_CO_UNCONNECTED[3:1],slave_counter1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,slave_counter1_carry__2_i_1_n_0}),
        .O(NLW_slave_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,slave_counter1_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    slave_counter1_carry__2_i_1
       (.I0(slave_counter_reg[25]),
        .I1(slave_counter_reg[24]),
        .O(slave_counter1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slave_counter1_carry__2_i_2
       (.I0(slave_counter_reg[25]),
        .I1(slave_counter_reg[24]),
        .O(slave_counter1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slave_counter1_carry_i_1
       (.I0(slave_counter_reg[7]),
        .I1(slave_counter_reg[6]),
        .O(slave_counter1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slave_counter1_carry_i_2
       (.I0(slave_counter_reg[4]),
        .I1(slave_counter_reg[5]),
        .O(slave_counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slave_counter1_carry_i_3
       (.I0(slave_counter_reg[2]),
        .I1(slave_counter_reg[3]),
        .O(slave_counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slave_counter1_carry_i_4
       (.I0(slave_counter_reg[0]),
        .I1(slave_counter_reg[1]),
        .O(slave_counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slave_counter1_carry_i_5
       (.I0(slave_counter_reg[7]),
        .I1(slave_counter_reg[6]),
        .O(slave_counter1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slave_counter1_carry_i_6
       (.I0(slave_counter_reg[5]),
        .I1(slave_counter_reg[4]),
        .O(slave_counter1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slave_counter1_carry_i_7
       (.I0(slave_counter_reg[3]),
        .I1(slave_counter_reg[2]),
        .O(slave_counter1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slave_counter1_carry_i_8
       (.I0(slave_counter_reg[1]),
        .I1(slave_counter_reg[0]),
        .O(slave_counter1_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    \slave_counter[0]_i_1 
       (.I0(reset_watchdog),
        .I1(slave_counter1),
        .I2(enable_slave_watchdog),
        .O(\slave_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \slave_counter[0]_i_3 
       (.I0(reset_watchdog),
        .O(\slave_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[0]_i_4 
       (.I0(slave_counter_reg[3]),
        .I1(reset_watchdog),
        .O(\slave_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[0]_i_5 
       (.I0(slave_counter_reg[2]),
        .I1(reset_watchdog),
        .O(\slave_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[0]_i_6 
       (.I0(slave_counter_reg[1]),
        .I1(reset_watchdog),
        .O(\slave_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \slave_counter[0]_i_7 
       (.I0(slave_counter_reg[0]),
        .I1(reset_watchdog),
        .O(\slave_counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[12]_i_2 
       (.I0(slave_counter_reg[15]),
        .I1(reset_watchdog),
        .O(\slave_counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[12]_i_3 
       (.I0(slave_counter_reg[14]),
        .I1(reset_watchdog),
        .O(\slave_counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[12]_i_4 
       (.I0(slave_counter_reg[13]),
        .I1(reset_watchdog),
        .O(\slave_counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[12]_i_5 
       (.I0(slave_counter_reg[12]),
        .I1(reset_watchdog),
        .O(\slave_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[16]_i_2 
       (.I0(slave_counter_reg[19]),
        .I1(reset_watchdog),
        .O(\slave_counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[16]_i_3 
       (.I0(slave_counter_reg[18]),
        .I1(reset_watchdog),
        .O(\slave_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[16]_i_4 
       (.I0(slave_counter_reg[17]),
        .I1(reset_watchdog),
        .O(\slave_counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[16]_i_5 
       (.I0(slave_counter_reg[16]),
        .I1(reset_watchdog),
        .O(\slave_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[20]_i_2 
       (.I0(slave_counter_reg[23]),
        .I1(reset_watchdog),
        .O(\slave_counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[20]_i_3 
       (.I0(slave_counter_reg[22]),
        .I1(reset_watchdog),
        .O(\slave_counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[20]_i_4 
       (.I0(slave_counter_reg[21]),
        .I1(reset_watchdog),
        .O(\slave_counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[20]_i_5 
       (.I0(slave_counter_reg[20]),
        .I1(reset_watchdog),
        .O(\slave_counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[24]_i_2 
       (.I0(slave_counter_reg[25]),
        .I1(reset_watchdog),
        .O(\slave_counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[24]_i_3 
       (.I0(slave_counter_reg[24]),
        .I1(reset_watchdog),
        .O(\slave_counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[4]_i_2 
       (.I0(slave_counter_reg[7]),
        .I1(reset_watchdog),
        .O(\slave_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[4]_i_3 
       (.I0(slave_counter_reg[6]),
        .I1(reset_watchdog),
        .O(\slave_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[4]_i_4 
       (.I0(slave_counter_reg[5]),
        .I1(reset_watchdog),
        .O(\slave_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[4]_i_5 
       (.I0(slave_counter_reg[4]),
        .I1(reset_watchdog),
        .O(\slave_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[8]_i_2 
       (.I0(slave_counter_reg[11]),
        .I1(reset_watchdog),
        .O(\slave_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[8]_i_3 
       (.I0(slave_counter_reg[10]),
        .I1(reset_watchdog),
        .O(\slave_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[8]_i_4 
       (.I0(slave_counter_reg[9]),
        .I1(reset_watchdog),
        .O(\slave_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \slave_counter[8]_i_5 
       (.I0(slave_counter_reg[8]),
        .I1(reset_watchdog),
        .O(\slave_counter[8]_i_5_n_0 ));
  FDCE \slave_counter_reg[0] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[0]_i_2_n_7 ),
        .Q(slave_counter_reg[0]));
  CARRY4 \slave_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\slave_counter_reg[0]_i_2_n_0 ,\slave_counter_reg[0]_i_2_n_1 ,\slave_counter_reg[0]_i_2_n_2 ,\slave_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\slave_counter[0]_i_3_n_0 }),
        .O({\slave_counter_reg[0]_i_2_n_4 ,\slave_counter_reg[0]_i_2_n_5 ,\slave_counter_reg[0]_i_2_n_6 ,\slave_counter_reg[0]_i_2_n_7 }),
        .S({\slave_counter[0]_i_4_n_0 ,\slave_counter[0]_i_5_n_0 ,\slave_counter[0]_i_6_n_0 ,\slave_counter[0]_i_7_n_0 }));
  FDCE \slave_counter_reg[10] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[8]_i_1_n_5 ),
        .Q(slave_counter_reg[10]));
  FDCE \slave_counter_reg[11] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[8]_i_1_n_4 ),
        .Q(slave_counter_reg[11]));
  FDCE \slave_counter_reg[12] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[12]_i_1_n_7 ),
        .Q(slave_counter_reg[12]));
  CARRY4 \slave_counter_reg[12]_i_1 
       (.CI(\slave_counter_reg[8]_i_1_n_0 ),
        .CO({\slave_counter_reg[12]_i_1_n_0 ,\slave_counter_reg[12]_i_1_n_1 ,\slave_counter_reg[12]_i_1_n_2 ,\slave_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slave_counter_reg[12]_i_1_n_4 ,\slave_counter_reg[12]_i_1_n_5 ,\slave_counter_reg[12]_i_1_n_6 ,\slave_counter_reg[12]_i_1_n_7 }),
        .S({\slave_counter[12]_i_2_n_0 ,\slave_counter[12]_i_3_n_0 ,\slave_counter[12]_i_4_n_0 ,\slave_counter[12]_i_5_n_0 }));
  FDCE \slave_counter_reg[13] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[12]_i_1_n_6 ),
        .Q(slave_counter_reg[13]));
  FDCE \slave_counter_reg[14] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[12]_i_1_n_5 ),
        .Q(slave_counter_reg[14]));
  FDCE \slave_counter_reg[15] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[12]_i_1_n_4 ),
        .Q(slave_counter_reg[15]));
  FDCE \slave_counter_reg[16] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[16]_i_1_n_7 ),
        .Q(slave_counter_reg[16]));
  CARRY4 \slave_counter_reg[16]_i_1 
       (.CI(\slave_counter_reg[12]_i_1_n_0 ),
        .CO({\slave_counter_reg[16]_i_1_n_0 ,\slave_counter_reg[16]_i_1_n_1 ,\slave_counter_reg[16]_i_1_n_2 ,\slave_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slave_counter_reg[16]_i_1_n_4 ,\slave_counter_reg[16]_i_1_n_5 ,\slave_counter_reg[16]_i_1_n_6 ,\slave_counter_reg[16]_i_1_n_7 }),
        .S({\slave_counter[16]_i_2_n_0 ,\slave_counter[16]_i_3_n_0 ,\slave_counter[16]_i_4_n_0 ,\slave_counter[16]_i_5_n_0 }));
  FDCE \slave_counter_reg[17] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[16]_i_1_n_6 ),
        .Q(slave_counter_reg[17]));
  FDCE \slave_counter_reg[18] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[16]_i_1_n_5 ),
        .Q(slave_counter_reg[18]));
  FDCE \slave_counter_reg[19] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[16]_i_1_n_4 ),
        .Q(slave_counter_reg[19]));
  FDCE \slave_counter_reg[1] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[0]_i_2_n_6 ),
        .Q(slave_counter_reg[1]));
  FDCE \slave_counter_reg[20] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[20]_i_1_n_7 ),
        .Q(slave_counter_reg[20]));
  CARRY4 \slave_counter_reg[20]_i_1 
       (.CI(\slave_counter_reg[16]_i_1_n_0 ),
        .CO({\slave_counter_reg[20]_i_1_n_0 ,\slave_counter_reg[20]_i_1_n_1 ,\slave_counter_reg[20]_i_1_n_2 ,\slave_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slave_counter_reg[20]_i_1_n_4 ,\slave_counter_reg[20]_i_1_n_5 ,\slave_counter_reg[20]_i_1_n_6 ,\slave_counter_reg[20]_i_1_n_7 }),
        .S({\slave_counter[20]_i_2_n_0 ,\slave_counter[20]_i_3_n_0 ,\slave_counter[20]_i_4_n_0 ,\slave_counter[20]_i_5_n_0 }));
  FDCE \slave_counter_reg[21] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[20]_i_1_n_6 ),
        .Q(slave_counter_reg[21]));
  FDCE \slave_counter_reg[22] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[20]_i_1_n_5 ),
        .Q(slave_counter_reg[22]));
  FDCE \slave_counter_reg[23] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[20]_i_1_n_4 ),
        .Q(slave_counter_reg[23]));
  FDCE \slave_counter_reg[24] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[24]_i_1_n_7 ),
        .Q(slave_counter_reg[24]));
  CARRY4 \slave_counter_reg[24]_i_1 
       (.CI(\slave_counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_slave_counter_reg[24]_i_1_CO_UNCONNECTED [3:1],\slave_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_slave_counter_reg[24]_i_1_O_UNCONNECTED [3:2],\slave_counter_reg[24]_i_1_n_6 ,\slave_counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,\slave_counter[24]_i_2_n_0 ,\slave_counter[24]_i_3_n_0 }));
  FDCE \slave_counter_reg[25] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[24]_i_1_n_6 ),
        .Q(slave_counter_reg[25]));
  FDCE \slave_counter_reg[2] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[0]_i_2_n_5 ),
        .Q(slave_counter_reg[2]));
  FDCE \slave_counter_reg[3] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[0]_i_2_n_4 ),
        .Q(slave_counter_reg[3]));
  FDCE \slave_counter_reg[4] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[4]_i_1_n_7 ),
        .Q(slave_counter_reg[4]));
  CARRY4 \slave_counter_reg[4]_i_1 
       (.CI(\slave_counter_reg[0]_i_2_n_0 ),
        .CO({\slave_counter_reg[4]_i_1_n_0 ,\slave_counter_reg[4]_i_1_n_1 ,\slave_counter_reg[4]_i_1_n_2 ,\slave_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slave_counter_reg[4]_i_1_n_4 ,\slave_counter_reg[4]_i_1_n_5 ,\slave_counter_reg[4]_i_1_n_6 ,\slave_counter_reg[4]_i_1_n_7 }),
        .S({\slave_counter[4]_i_2_n_0 ,\slave_counter[4]_i_3_n_0 ,\slave_counter[4]_i_4_n_0 ,\slave_counter[4]_i_5_n_0 }));
  FDCE \slave_counter_reg[5] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[4]_i_1_n_6 ),
        .Q(slave_counter_reg[5]));
  FDCE \slave_counter_reg[6] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[4]_i_1_n_5 ),
        .Q(slave_counter_reg[6]));
  FDCE \slave_counter_reg[7] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[4]_i_1_n_4 ),
        .Q(slave_counter_reg[7]));
  FDCE \slave_counter_reg[8] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[8]_i_1_n_7 ),
        .Q(slave_counter_reg[8]));
  CARRY4 \slave_counter_reg[8]_i_1 
       (.CI(\slave_counter_reg[4]_i_1_n_0 ),
        .CO({\slave_counter_reg[8]_i_1_n_0 ,\slave_counter_reg[8]_i_1_n_1 ,\slave_counter_reg[8]_i_1_n_2 ,\slave_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\slave_counter_reg[8]_i_1_n_4 ,\slave_counter_reg[8]_i_1_n_5 ,\slave_counter_reg[8]_i_1_n_6 ,\slave_counter_reg[8]_i_1_n_7 }),
        .S({\slave_counter[8]_i_2_n_0 ,\slave_counter[8]_i_3_n_0 ,\slave_counter[8]_i_4_n_0 ,\slave_counter[8]_i_5_n_0 }));
  FDCE \slave_counter_reg[9] 
       (.C(CLK),
        .CE(\slave_counter[0]_i_1_n_0 ),
        .CLR(RST),
        .D(\slave_counter_reg[8]_i_1_n_6 ),
        .Q(slave_counter_reg[9]));
  LUT4 #(
    .INIT(16'hFF40)) 
    slave_watchdog_overflow_i_1
       (.I0(reset_watchdog),
        .I1(enable_slave_watchdog),
        .I2(slave_counter1),
        .I3(slave_watchdog_overflow_reg_n_0),
        .O(slave_watchdog_overflow_i_1_n_0));
  FDCE slave_watchdog_overflow_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(slave_watchdog_overflow_i_1_n_0),
        .Q(slave_watchdog_overflow_reg_n_0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module m1_for_arty_a7_top_0_0_top
   (RECFG,
    UART_RX_INT,
    UART_TX_EXT,
    UART_RX_EXT,
    CLK,
    RST,
    UART_TX_INT,
    EN);
  output [1:0]RECFG;
  output UART_RX_INT;
  output UART_TX_EXT;
  input UART_RX_EXT;
  input CLK;
  input RST;
  input UART_TX_INT;
  input EN;

  wire CLK;
  wire EN;
  wire [1:0]RECFG;
  wire RST;
  wire UART_RX_EXT;
  wire UART_RX_INT;
  wire UART_TX_EXT;
  wire UART_TX_INT;
  wire [3:1]bm_error_state;
  wire [3:3]bm_timeout_state;
  wire bus_monitor_error_n_0;
  wire bus_monitor_error_n_10;
  wire bus_monitor_error_n_4;
  wire bus_monitor_error_n_5;
  wire bus_monitor_error_n_6;
  wire bus_monitor_error_n_7;
  wire bus_monitor_error_n_8;
  wire bus_monitor_error_n_9;
  wire [7:2]data_in;
  wire data_ready;
  wire enable_master_watchdog_next;
  wire p_1_in;
  wire [1:0]reconfiguration_device;
  wire [1:0]reconfiguration_device_0;
  wire [1:0]reconfigured_device_next;
  wire uart_receive_n_10;
  wire uart_receive_n_11;
  wire uart_receive_n_12;
  wire uart_receive_n_13;
  wire uart_receive_n_14;
  wire uart_receive_n_15;
  wire uart_receive_n_16;
  wire uart_receive_n_17;
  wire uart_receive_n_2;
  wire uart_receive_n_3;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    UART_RX_INT_INST_0
       (.I0(UART_RX_EXT),
        .I1(RECFG[1]),
        .I2(RECFG[0]),
        .O(UART_RX_INT));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    UART_TX_EXT_INST_0
       (.I0(UART_TX_INT),
        .I1(RECFG[1]),
        .I2(RECFG[0]),
        .O(UART_TX_EXT));
  m1_for_arty_a7_top_0_0_bus_monitor_error bus_monitor_error
       (.CLK(CLK),
        .\FSM_sequential_bm_error_state_reg[0]_0 (bus_monitor_error_n_0),
        .\FSM_sequential_bm_error_state_reg[0]_1 (bus_monitor_error_n_8),
        .\FSM_sequential_bm_error_state_reg[0]_2 (bus_monitor_error_n_10),
        .\FSM_sequential_bm_error_state_reg[2]_0 (bus_monitor_error_n_4),
        .\FSM_sequential_bm_error_state_reg[2]_1 (bus_monitor_error_n_9),
        .\FSM_sequential_bm_error_state_reg[3]_0 (bus_monitor_error_n_6),
        .Q(bm_error_state),
        .RST(RST),
        .data_ready(data_ready),
        .p_1_in(p_1_in),
        .reconfiguration_device(reconfiguration_device),
        .\reconfiguration_device[1]_i_4 (uart_receive_n_17),
        .\reconfiguration_device[1]_i_4_0 (uart_receive_n_16),
        .\reconfiguration_device[1]_i_4_1 (uart_receive_n_3),
        .\reconfiguration_device[1]_i_4_2 (uart_receive_n_12),
        .\reconfiguration_device[1]_i_4_3 (uart_receive_n_13),
        .\reconfiguration_device_reg[0]_0 (uart_receive_n_15),
        .\reconfiguration_device_reg[0]_1 (uart_receive_n_14),
        .\reconfiguration_device_reg[1]_0 (uart_receive_n_11),
        .\reconfiguration_device_reg[1]_1 (uart_receive_n_2),
        .\slave_address_reg[0]_0 (bus_monitor_error_n_5),
        .\slave_address_reg[0]_1 (uart_receive_n_10),
        .\slave_address_reg[1]_0 (bus_monitor_error_n_7),
        .\slave_address_reg[1]_1 ({data_in[7:4],data_in[2]}));
  m1_for_arty_a7_top_0_0_bus_monitor_timeout bus_monitor_timeout
       (.CLK(CLK),
        .Q(bm_timeout_state),
        .RST(RST),
        .data_ready(data_ready),
        .enable_master_watchdog_next(enable_master_watchdog_next),
        .reconfiguration_device(reconfiguration_device_0),
        .\slave_address_reg[1]_0 (data_in[7:4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hD0C0)) 
    \reconfigured_device[0]_i_1 
       (.I0(reconfiguration_device[1]),
        .I1(reconfiguration_device[0]),
        .I2(EN),
        .I3(reconfiguration_device_0[0]),
        .O(reconfigured_device_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB0A0)) 
    \reconfigured_device[1]_i_1 
       (.I0(reconfiguration_device[1]),
        .I1(reconfiguration_device[0]),
        .I2(EN),
        .I3(reconfiguration_device_0[1]),
        .O(reconfigured_device_next[1]));
  FDCE \reconfigured_device_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(reconfigured_device_next[0]),
        .Q(RECFG[0]));
  FDCE \reconfigured_device_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(reconfigured_device_next[1]),
        .Q(RECFG[1]));
  m1_for_arty_a7_top_0_0_uart_rx uart_receive
       (.CLK(CLK),
        .Q(bm_timeout_state),
        .RST(RST),
        .UART_RX_EXT(UART_RX_EXT),
        .data_new_reg_0(uart_receive_n_2),
        .\data_out_reg[0]_0 (uart_receive_n_15),
        .\data_out_reg[4]_0 (uart_receive_n_16),
        .\data_out_reg[5]_0 (uart_receive_n_13),
        .\data_out_reg[5]_1 (uart_receive_n_17),
        .\data_out_reg[6]_0 (uart_receive_n_10),
        .\data_out_reg[6]_1 (uart_receive_n_11),
        .\data_out_reg[6]_2 (uart_receive_n_14),
        .\data_out_reg[7]_0 (uart_receive_n_3),
        .\data_out_reg[7]_1 ({data_in[7:4],data_in[2]}),
        .\data_out_reg[7]_2 (uart_receive_n_12),
        .data_ready(data_ready),
        .enable_master_watchdog_next(enable_master_watchdog_next),
        .p_1_in(p_1_in),
        .\reconfiguration_device[1]_i_2 (bus_monitor_error_n_6),
        .\reconfiguration_device[1]_i_4_0 (bm_error_state),
        .\reconfiguration_device[1]_i_4_1 (bus_monitor_error_n_4),
        .\reconfiguration_device[1]_i_4_2 (bus_monitor_error_n_8),
        .\reconfiguration_device[1]_i_4_3 (bus_monitor_error_n_5),
        .\reconfiguration_device[1]_i_4_4 (bus_monitor_error_n_10),
        .\reconfiguration_device[1]_i_9_0 (bus_monitor_error_n_7),
        .\reconfiguration_device_reg[1] (bus_monitor_error_n_0),
        .\reconfiguration_device_reg[1]_0 (bus_monitor_error_n_9));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module m1_for_arty_a7_top_0_0_uart_rx
   (data_ready,
    enable_master_watchdog_next,
    data_new_reg_0,
    \data_out_reg[7]_0 ,
    \data_out_reg[7]_1 ,
    p_1_in,
    \data_out_reg[6]_0 ,
    \data_out_reg[6]_1 ,
    \data_out_reg[7]_2 ,
    \data_out_reg[5]_0 ,
    \data_out_reg[6]_2 ,
    \data_out_reg[0]_0 ,
    \data_out_reg[4]_0 ,
    \data_out_reg[5]_1 ,
    CLK,
    RST,
    UART_RX_EXT,
    Q,
    \reconfiguration_device_reg[1] ,
    \reconfiguration_device_reg[1]_0 ,
    \reconfiguration_device[1]_i_4_0 ,
    \reconfiguration_device[1]_i_4_1 ,
    \reconfiguration_device[1]_i_4_2 ,
    \reconfiguration_device[1]_i_4_3 ,
    \reconfiguration_device[1]_i_2 ,
    \reconfiguration_device[1]_i_4_4 ,
    \reconfiguration_device[1]_i_9_0 );
  output data_ready;
  output enable_master_watchdog_next;
  output data_new_reg_0;
  output \data_out_reg[7]_0 ;
  output [4:0]\data_out_reg[7]_1 ;
  output p_1_in;
  output \data_out_reg[6]_0 ;
  output \data_out_reg[6]_1 ;
  output \data_out_reg[7]_2 ;
  output \data_out_reg[5]_0 ;
  output \data_out_reg[6]_2 ;
  output \data_out_reg[0]_0 ;
  output \data_out_reg[4]_0 ;
  output \data_out_reg[5]_1 ;
  input CLK;
  input RST;
  input UART_RX_EXT;
  input [0:0]Q;
  input \reconfiguration_device_reg[1] ;
  input \reconfiguration_device_reg[1]_0 ;
  input [2:0]\reconfiguration_device[1]_i_4_0 ;
  input \reconfiguration_device[1]_i_4_1 ;
  input \reconfiguration_device[1]_i_4_2 ;
  input \reconfiguration_device[1]_i_4_3 ;
  input \reconfiguration_device[1]_i_2 ;
  input \reconfiguration_device[1]_i_4_4 ;
  input \reconfiguration_device[1]_i_9_0 ;

  wire CLK;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire [0:0]Q;
  wire RST;
  wire UART_RX_EXT;
  wire [3:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[3]_i_2_n_0 ;
  wire \bit_cnt[3]_i_3_n_0 ;
  wire \bit_cnt[3]_i_4_n_0 ;
  wire bit_cnt_next;
  wire [11:0]clk_cnt;
  wire \clk_cnt[11]_i_3_n_0 ;
  wire \clk_cnt[11]_i_4_n_0 ;
  wire \clk_cnt[11]_i_6_n_0 ;
  wire \clk_cnt[11]_i_7_n_0 ;
  wire [11:0]clk_cnt_next;
  wire clk_cnt_next_0;
  wire \clk_cnt_reg[11]_i_5_n_2 ;
  wire \clk_cnt_reg[11]_i_5_n_3 ;
  wire \clk_cnt_reg[11]_i_5_n_5 ;
  wire \clk_cnt_reg[11]_i_5_n_6 ;
  wire \clk_cnt_reg[11]_i_5_n_7 ;
  wire \clk_cnt_reg[4]_i_2_n_0 ;
  wire \clk_cnt_reg[4]_i_2_n_1 ;
  wire \clk_cnt_reg[4]_i_2_n_2 ;
  wire \clk_cnt_reg[4]_i_2_n_3 ;
  wire \clk_cnt_reg[4]_i_2_n_4 ;
  wire \clk_cnt_reg[4]_i_2_n_5 ;
  wire \clk_cnt_reg[4]_i_2_n_6 ;
  wire \clk_cnt_reg[4]_i_2_n_7 ;
  wire \clk_cnt_reg[8]_i_2_n_0 ;
  wire \clk_cnt_reg[8]_i_2_n_1 ;
  wire \clk_cnt_reg[8]_i_2_n_2 ;
  wire \clk_cnt_reg[8]_i_2_n_3 ;
  wire \clk_cnt_reg[8]_i_2_n_4 ;
  wire \clk_cnt_reg[8]_i_2_n_5 ;
  wire \clk_cnt_reg[8]_i_2_n_6 ;
  wire \clk_cnt_reg[8]_i_2_n_7 ;
  wire [3:0]data_in;
  wire data_int0;
  wire \data_int_reg_n_0_[0] ;
  wire data_new_next;
  wire data_new_reg_0;
  wire data_out0;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[4]_0 ;
  wire \data_out_reg[5]_0 ;
  wire \data_out_reg[5]_1 ;
  wire \data_out_reg[6]_0 ;
  wire \data_out_reg[6]_1 ;
  wire \data_out_reg[6]_2 ;
  wire \data_out_reg[7]_0 ;
  wire [4:0]\data_out_reg[7]_1 ;
  wire \data_out_reg[7]_2 ;
  wire data_ready;
  wire enable_master_watchdog_next;
  wire [6:0]p_0_in;
  wire p_1_in;
  wire \reconfiguration_device[1]_i_10_n_0 ;
  wire \reconfiguration_device[1]_i_11_n_0 ;
  wire \reconfiguration_device[1]_i_2 ;
  wire \reconfiguration_device[1]_i_22_n_0 ;
  wire [2:0]\reconfiguration_device[1]_i_4_0 ;
  wire \reconfiguration_device[1]_i_4_1 ;
  wire \reconfiguration_device[1]_i_4_2 ;
  wire \reconfiguration_device[1]_i_4_3 ;
  wire \reconfiguration_device[1]_i_4_4 ;
  wire \reconfiguration_device[1]_i_9_0 ;
  wire \reconfiguration_device[1]_i_9_n_0 ;
  wire reconfiguration_device_next42_in;
  wire \reconfiguration_device_reg[1] ;
  wire \reconfiguration_device_reg[1]_0 ;
  wire [1:0]state;
  wire [3:2]\NLW_clk_cnt_reg[11]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_cnt_reg[11]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF0FF000003550355)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(UART_RX_EXT),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(state[1]),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(bit_cnt[3]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[2]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB030B434)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(UART_RX_EXT),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(clk_cnt[2]),
        .I3(clk_cnt[5]),
        .I4(clk_cnt[0]),
        .I5(clk_cnt[3]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(clk_cnt[4]),
        .I1(clk_cnt[10]),
        .I2(clk_cnt[2]),
        .I3(clk_cnt[1]),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(\FSM_sequential_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(clk_cnt[11]),
        .I1(clk_cnt[4]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[8]),
        .I4(\FSM_sequential_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(clk_cnt[6]),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[9]),
        .I3(clk_cnt[0]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(clk_cnt[11]),
        .I1(clk_cnt[5]),
        .I2(clk_cnt[3]),
        .I3(clk_cnt[8]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(clk_cnt[6]),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[10]),
        .I3(clk_cnt[9]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "state_start_bit:01,state_stop_bit:11,state_idle:00,state_data_bit:10" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "state_start_bit:01,state_stop_bit:11,state_idle:00,state_data_bit:10" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cnt[0]_i_1 
       (.I0(state[1]),
        .I1(bit_cnt[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bit_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(bit_cnt[0]),
        .I2(bit_cnt[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bit_cnt[2]_i_1 
       (.I0(state[1]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[2]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBBBBBBBBBBBB)) 
    \bit_cnt[3]_i_1 
       (.I0(\bit_cnt[3]_i_3_n_0 ),
        .I1(\bit_cnt[3]_i_4_n_0 ),
        .I2(bit_cnt[3]),
        .I3(bit_cnt[1]),
        .I4(bit_cnt[0]),
        .I5(bit_cnt[2]),
        .O(bit_cnt_next));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bit_cnt[3]_i_2 
       (.I0(state[1]),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(bit_cnt[3]),
        .O(\bit_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bit_cnt[3]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\bit_cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_cnt[3]_i_4 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\bit_cnt[3]_i_4_n_0 ));
  FDCE \bit_cnt_reg[0] 
       (.C(CLK),
        .CE(bit_cnt_next),
        .CLR(RST),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(bit_cnt[0]));
  FDCE \bit_cnt_reg[1] 
       (.C(CLK),
        .CE(bit_cnt_next),
        .CLR(RST),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(bit_cnt[1]));
  FDCE \bit_cnt_reg[2] 
       (.C(CLK),
        .CE(bit_cnt_next),
        .CLR(RST),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(bit_cnt[2]));
  FDCE \bit_cnt_reg[3] 
       (.C(CLK),
        .CE(bit_cnt_next),
        .CLR(RST),
        .D(\bit_cnt[3]_i_2_n_0 ),
        .Q(bit_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h44FF00F0)) 
    \clk_cnt[0]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(UART_RX_EXT),
        .I2(state[1]),
        .I3(clk_cnt[0]),
        .I4(state[0]),
        .O(clk_cnt_next[0]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[10]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[11]_i_5_n_6 ),
        .O(clk_cnt_next[10]));
  LUT5 #(
    .INIT(32'hF333F7F7)) 
    \clk_cnt[11]_i_1 
       (.I0(UART_RX_EXT),
        .I1(state[0]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state[1]),
        .O(clk_cnt_next_0));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[11]_i_2 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[11]_i_5_n_5 ),
        .O(clk_cnt_next[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \clk_cnt[11]_i_3 
       (.I0(clk_cnt[11]),
        .I1(clk_cnt[3]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[9]),
        .I4(\clk_cnt[11]_i_6_n_0 ),
        .I5(\clk_cnt[11]_i_7_n_0 ),
        .O(\clk_cnt[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFC8888)) 
    \clk_cnt[11]_i_4 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(state[1]),
        .I2(UART_RX_EXT),
        .I3(\clk_cnt[11]_i_3_n_0 ),
        .I4(state[0]),
        .O(\clk_cnt[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \clk_cnt[11]_i_6 
       (.I0(clk_cnt[6]),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[10]),
        .I3(clk_cnt[5]),
        .O(\clk_cnt[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \clk_cnt[11]_i_7 
       (.I0(clk_cnt[4]),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[8]),
        .I3(clk_cnt[0]),
        .O(\clk_cnt[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[1]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[4]_i_2_n_7 ),
        .O(clk_cnt_next[1]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[2]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[4]_i_2_n_6 ),
        .O(clk_cnt_next[2]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[3]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[4]_i_2_n_5 ),
        .O(clk_cnt_next[3]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[4]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[4]_i_2_n_4 ),
        .O(clk_cnt_next[4]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[5]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[8]_i_2_n_7 ),
        .O(clk_cnt_next[5]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[6]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[8]_i_2_n_6 ),
        .O(clk_cnt_next[6]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[7]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[8]_i_2_n_5 ),
        .O(clk_cnt_next[7]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[8]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[8]_i_2_n_4 ),
        .O(clk_cnt_next[8]));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \clk_cnt[9]_i_1 
       (.I0(state[1]),
        .I1(UART_RX_EXT),
        .I2(\clk_cnt[11]_i_3_n_0 ),
        .I3(\clk_cnt[11]_i_4_n_0 ),
        .I4(\clk_cnt_reg[11]_i_5_n_7 ),
        .O(clk_cnt_next[9]));
  FDCE \clk_cnt_reg[0] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[0]),
        .Q(clk_cnt[0]));
  FDCE \clk_cnt_reg[10] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[10]),
        .Q(clk_cnt[10]));
  FDCE \clk_cnt_reg[11] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[11]),
        .Q(clk_cnt[11]));
  CARRY4 \clk_cnt_reg[11]_i_5 
       (.CI(\clk_cnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_clk_cnt_reg[11]_i_5_CO_UNCONNECTED [3:2],\clk_cnt_reg[11]_i_5_n_2 ,\clk_cnt_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_cnt_reg[11]_i_5_O_UNCONNECTED [3],\clk_cnt_reg[11]_i_5_n_5 ,\clk_cnt_reg[11]_i_5_n_6 ,\clk_cnt_reg[11]_i_5_n_7 }),
        .S({1'b0,clk_cnt[11:9]}));
  FDCE \clk_cnt_reg[1] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[1]),
        .Q(clk_cnt[1]));
  FDCE \clk_cnt_reg[2] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[2]),
        .Q(clk_cnt[2]));
  FDCE \clk_cnt_reg[3] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[3]),
        .Q(clk_cnt[3]));
  FDCE \clk_cnt_reg[4] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[4]),
        .Q(clk_cnt[4]));
  CARRY4 \clk_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\clk_cnt_reg[4]_i_2_n_0 ,\clk_cnt_reg[4]_i_2_n_1 ,\clk_cnt_reg[4]_i_2_n_2 ,\clk_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(clk_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[4]_i_2_n_4 ,\clk_cnt_reg[4]_i_2_n_5 ,\clk_cnt_reg[4]_i_2_n_6 ,\clk_cnt_reg[4]_i_2_n_7 }),
        .S(clk_cnt[4:1]));
  FDCE \clk_cnt_reg[5] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[5]),
        .Q(clk_cnt[5]));
  FDCE \clk_cnt_reg[6] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[6]),
        .Q(clk_cnt[6]));
  FDCE \clk_cnt_reg[7] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[7]),
        .Q(clk_cnt[7]));
  FDCE \clk_cnt_reg[8] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[8]),
        .Q(clk_cnt[8]));
  CARRY4 \clk_cnt_reg[8]_i_2 
       (.CI(\clk_cnt_reg[4]_i_2_n_0 ),
        .CO({\clk_cnt_reg[8]_i_2_n_0 ,\clk_cnt_reg[8]_i_2_n_1 ,\clk_cnt_reg[8]_i_2_n_2 ,\clk_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[8]_i_2_n_4 ,\clk_cnt_reg[8]_i_2_n_5 ,\clk_cnt_reg[8]_i_2_n_6 ,\clk_cnt_reg[8]_i_2_n_7 }),
        .S(clk_cnt[8:5]));
  FDCE \clk_cnt_reg[9] 
       (.C(CLK),
        .CE(clk_cnt_next_0),
        .CLR(RST),
        .D(clk_cnt_next[9]),
        .Q(clk_cnt[9]));
  LUT4 #(
    .INIT(16'h0004)) 
    \data_int[7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(RST),
        .O(data_int0));
  FDRE \data_int_reg[0] 
       (.C(CLK),
        .CE(data_int0),
        .D(p_0_in[0]),
        .Q(\data_int_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_int_reg[1] 
       (.C(CLK),
        .CE(data_int0),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \data_int_reg[2] 
       (.C(CLK),
        .CE(data_int0),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \data_int_reg[3] 
       (.C(CLK),
        .CE(data_int0),
        .D(p_0_in[3]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \data_int_reg[4] 
       (.C(CLK),
        .CE(data_int0),
        .D(p_0_in[4]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \data_int_reg[5] 
       (.C(CLK),
        .CE(data_int0),
        .D(p_0_in[5]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \data_int_reg[6] 
       (.C(CLK),
        .CE(data_int0),
        .D(p_0_in[6]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \data_int_reg[7] 
       (.C(CLK),
        .CE(data_int0),
        .D(UART_RX_EXT),
        .Q(p_0_in[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    data_new_i_1
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .O(data_new_next));
  FDCE data_new_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(data_new_next),
        .Q(data_ready));
  LUT4 #(
    .INIT(16'h0040)) 
    \data_out[7]_i_1 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(RST),
        .O(data_out0));
  FDRE \data_out_reg[0] 
       (.C(CLK),
        .CE(data_out0),
        .D(\data_int_reg_n_0_[0] ),
        .Q(data_in[0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(CLK),
        .CE(data_out0),
        .D(p_0_in[0]),
        .Q(data_in[1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(CLK),
        .CE(data_out0),
        .D(p_0_in[1]),
        .Q(\data_out_reg[7]_1 [0]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(CLK),
        .CE(data_out0),
        .D(p_0_in[2]),
        .Q(data_in[3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(CLK),
        .CE(data_out0),
        .D(p_0_in[3]),
        .Q(\data_out_reg[7]_1 [1]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(CLK),
        .CE(data_out0),
        .D(p_0_in[4]),
        .Q(\data_out_reg[7]_1 [2]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(CLK),
        .CE(data_out0),
        .D(p_0_in[5]),
        .Q(\data_out_reg[7]_1 [3]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(CLK),
        .CE(data_out0),
        .D(p_0_in[6]),
        .Q(\data_out_reg[7]_1 [4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF6FFF6FFFFFFF)) 
    \reconfiguration_device[0]_i_6 
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[3]),
        .I3(\data_out_reg[7]_1 [0]),
        .I4(\data_out_reg[7]_1 [1]),
        .I5(\data_out_reg[7]_1 [2]),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hAAAAAA8A0000AA8A)) 
    \reconfiguration_device[1]_i_10 
       (.I0(\reconfiguration_device[1]_i_4_4 ),
        .I1(\data_out_reg[7]_2 ),
        .I2(\data_out_reg[7]_1 [0]),
        .I3(\data_out_reg[5]_0 ),
        .I4(\reconfiguration_device[1]_i_4_0 [0]),
        .I5(\data_out_reg[6]_2 ),
        .O(\reconfiguration_device[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h10011000)) 
    \reconfiguration_device[1]_i_11 
       (.I0(\reconfiguration_device[1]_i_4_0 [2]),
        .I1(\reconfiguration_device[1]_i_4_1 ),
        .I2(\data_out_reg[7]_1 [3]),
        .I3(\data_out_reg[7]_1 [4]),
        .I4(p_1_in),
        .O(\reconfiguration_device[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \reconfiguration_device[1]_i_13 
       (.I0(\data_out_reg[7]_1 [4]),
        .I1(\data_out_reg[7]_1 [3]),
        .I2(\data_out_reg[7]_1 [1]),
        .O(\data_out_reg[7]_2 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \reconfiguration_device[1]_i_15 
       (.I0(\data_out_reg[7]_1 [2]),
        .I1(\data_out_reg[7]_1 [0]),
        .I2(data_in[1]),
        .I3(data_in[0]),
        .O(\data_out_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \reconfiguration_device[1]_i_16 
       (.I0(\data_out_reg[7]_1 [1]),
        .I1(\data_out_reg[7]_1 [3]),
        .I2(\data_out_reg[7]_1 [4]),
        .I3(data_in[3]),
        .O(\data_out_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \reconfiguration_device[1]_i_18 
       (.I0(\data_out_reg[7]_1 [4]),
        .I1(\data_out_reg[7]_1 [3]),
        .I2(\reconfiguration_device[1]_i_4_0 [1]),
        .I3(\reconfiguration_device[1]_i_4_0 [0]),
        .O(\data_out_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reconfiguration_device[1]_i_21 
       (.I0(\data_out_reg[7]_1 [3]),
        .I1(\data_out_reg[7]_1 [4]),
        .O(reconfiguration_device_next42_in));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7DFFFF7D)) 
    \reconfiguration_device[1]_i_22 
       (.I0(\data_out_reg[7]_1 [2]),
        .I1(data_in[1]),
        .I2(data_in[0]),
        .I3(data_in[3]),
        .I4(\reconfiguration_device[1]_i_9_0 ),
        .O(\reconfiguration_device[1]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \reconfiguration_device[1]_i_24 
       (.I0(\data_out_reg[7]_1 [2]),
        .I1(data_in[1]),
        .I2(data_in[3]),
        .I3(data_in[0]),
        .O(\data_out_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \reconfiguration_device[1]_i_4 
       (.I0(data_ready),
        .I1(\reconfiguration_device_reg[1] ),
        .I2(\reconfiguration_device[1]_i_9_n_0 ),
        .I3(\reconfiguration_device[1]_i_10_n_0 ),
        .I4(\reconfiguration_device[1]_i_11_n_0 ),
        .I5(\reconfiguration_device_reg[1]_0 ),
        .O(data_new_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF7F5)) 
    \reconfiguration_device[1]_i_5 
       (.I0(\reconfiguration_device[1]_i_2 ),
        .I1(\data_out_reg[7]_1 [3]),
        .I2(\data_out_reg[7]_1 [4]),
        .I3(p_1_in),
        .O(\data_out_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reconfiguration_device[1]_i_6 
       (.I0(\data_out_reg[7]_1 [3]),
        .I1(\data_out_reg[7]_1 [4]),
        .O(\data_out_reg[6]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \reconfiguration_device[1]_i_7 
       (.I0(data_in[0]),
        .I1(data_in[3]),
        .I2(data_in[1]),
        .I3(\data_out_reg[7]_1 [2]),
        .I4(\data_out_reg[7]_1 [0]),
        .I5(\data_out_reg[7]_2 ),
        .O(\data_out_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA28AA)) 
    \reconfiguration_device[1]_i_9 
       (.I0(\reconfiguration_device[1]_i_4_2 ),
        .I1(\data_out_reg[7]_1 [0]),
        .I2(\reconfiguration_device[1]_i_4_3 ),
        .I3(\data_out_reg[7]_1 [1]),
        .I4(reconfiguration_device_next42_in),
        .I5(\reconfiguration_device[1]_i_22_n_0 ),
        .O(\reconfiguration_device[1]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    reset_watchdog_i_1
       (.I0(data_ready),
        .I1(Q),
        .O(enable_master_watchdog_next));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \slave_address[1]_i_3 
       (.I0(\data_out_reg[7]_1 [3]),
        .I1(\data_out_reg[7]_1 [4]),
        .O(\data_out_reg[6]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
