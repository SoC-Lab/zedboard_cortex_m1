-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:cm1_engine_wrapper:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY m1_for_arty_a7_cm1_engine_wrapper_0_0 IS
  PORT (
    DIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    DOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    I2C_SCL : OUT STD_LOGIC;
    I2C_SDA_RX : IN STD_LOGIC;
    I2C_SDA_TX : OUT STD_LOGIC;
    RESET_INTERCONNECT : IN STD_LOGIC;
    RESET_PERIPHERAL : IN STD_LOGIC;
    RESET_TIMER : IN STD_LOGIC;
    SYS_CLOCK : IN STD_LOGIC;
    TIMER_CLOCK : IN STD_LOGIC;
    UART_RX : IN STD_LOGIC;
    UART_TX : OUT STD_LOGIC
  );
END m1_for_arty_a7_cm1_engine_wrapper_0_0;

ARCHITECTURE m1_for_arty_a7_cm1_engine_wrapper_0_0_arch OF m1_for_arty_a7_cm1_engine_wrapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF m1_for_arty_a7_cm1_engine_wrapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT cm1_engine_wrapper IS
    PORT (
      DIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      DOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      I2C_SCL : OUT STD_LOGIC;
      I2C_SDA_RX : IN STD_LOGIC;
      I2C_SDA_TX : OUT STD_LOGIC;
      RESET_INTERCONNECT : IN STD_LOGIC;
      RESET_PERIPHERAL : IN STD_LOGIC;
      RESET_TIMER : IN STD_LOGIC;
      SYS_CLOCK : IN STD_LOGIC;
      TIMER_CLOCK : IN STD_LOGIC;
      UART_RX : IN STD_LOGIC;
      UART_TX : OUT STD_LOGIC
    );
  END COMPONENT cm1_engine_wrapper;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF m1_for_arty_a7_cm1_engine_wrapper_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF TIMER_CLOCK: SIGNAL IS "XIL_INTERFACENAME TIMER_CLOCK, FREQ_HZ 8000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF TIMER_CLOCK: SIGNAL IS "xilinx.com:signal:clock:1.0 TIMER_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SYS_CLOCK: SIGNAL IS "XIL_INTERFACENAME SYS_CLOCK, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SYS_CLOCK: SIGNAL IS "xilinx.com:signal:clock:1.0 SYS_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET_TIMER: SIGNAL IS "XIL_INTERFACENAME RESET_TIMER, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET_TIMER: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET_TIMER RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET_PERIPHERAL: SIGNAL IS "XIL_INTERFACENAME RESET_PERIPHERAL, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET_PERIPHERAL: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET_PERIPHERAL RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET_INTERCONNECT: SIGNAL IS "XIL_INTERFACENAME RESET_INTERCONNECT, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET_INTERCONNECT: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET_INTERCONNECT RST";
BEGIN
  U0 : cm1_engine_wrapper
    PORT MAP (
      DIN => DIN,
      DOUT => DOUT,
      I2C_SCL => I2C_SCL,
      I2C_SDA_RX => I2C_SDA_RX,
      I2C_SDA_TX => I2C_SDA_TX,
      RESET_INTERCONNECT => RESET_INTERCONNECT,
      RESET_PERIPHERAL => RESET_PERIPHERAL,
      RESET_TIMER => RESET_TIMER,
      SYS_CLOCK => SYS_CLOCK,
      TIMER_CLOCK => TIMER_CLOCK,
      UART_RX => UART_RX,
      UART_TX => UART_TX
    );
END m1_for_arty_a7_cm1_engine_wrapper_0_0_arch;
