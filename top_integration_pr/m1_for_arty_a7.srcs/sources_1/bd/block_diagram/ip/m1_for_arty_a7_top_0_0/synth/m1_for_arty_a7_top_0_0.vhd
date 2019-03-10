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

-- IP VLNV: xilinx.com:module_ref:top:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY m1_for_arty_a7_top_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    EN : IN STD_LOGIC;
    UART_RX_EXT : IN STD_LOGIC;
    UART_TX_EXT : OUT STD_LOGIC;
    UART_RX_INT : OUT STD_LOGIC;
    UART_TX_INT : IN STD_LOGIC;
    REC_ECU : OUT STD_LOGIC;
    REC_MCU : OUT STD_LOGIC;
    REC_THS : OUT STD_LOGIC;
    REC_BLK : OUT STD_LOGIC;
    MCU_GPIO_INT : IN STD_LOGIC;
    MCU_GPIO_EXT : OUT STD_LOGIC
  );
END m1_for_arty_a7_top_0_0;

ARCHITECTURE m1_for_arty_a7_top_0_0_arch OF m1_for_arty_a7_top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF m1_for_arty_a7_top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT top IS
    PORT (
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      EN : IN STD_LOGIC;
      UART_RX_EXT : IN STD_LOGIC;
      UART_TX_EXT : OUT STD_LOGIC;
      UART_RX_INT : OUT STD_LOGIC;
      UART_TX_INT : IN STD_LOGIC;
      REC_ECU : OUT STD_LOGIC;
      REC_MCU : OUT STD_LOGIC;
      REC_THS : OUT STD_LOGIC;
      REC_BLK : OUT STD_LOGIC;
      MCU_GPIO_INT : IN STD_LOGIC;
      MCU_GPIO_EXT : OUT STD_LOGIC
    );
  END COMPONENT top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF m1_for_arty_a7_top_0_0_arch: ARCHITECTURE IS "top,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF m1_for_arty_a7_top_0_0_arch : ARCHITECTURE IS "m1_for_arty_a7_top_0_0,top,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF m1_for_arty_a7_top_0_0_arch: ARCHITECTURE IS "m1_for_arty_a7_top_0_0,top,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF m1_for_arty_a7_top_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : top
    PORT MAP (
      CLK => CLK,
      RST => RST,
      EN => EN,
      UART_RX_EXT => UART_RX_EXT,
      UART_TX_EXT => UART_TX_EXT,
      UART_RX_INT => UART_RX_INT,
      UART_TX_INT => UART_TX_INT,
      REC_ECU => REC_ECU,
      REC_MCU => REC_MCU,
      REC_THS => REC_THS,
      REC_BLK => REC_BLK,
      MCU_GPIO_INT => MCU_GPIO_INT,
      MCU_GPIO_EXT => MCU_GPIO_EXT
    );
END m1_for_arty_a7_top_0_0_arch;
