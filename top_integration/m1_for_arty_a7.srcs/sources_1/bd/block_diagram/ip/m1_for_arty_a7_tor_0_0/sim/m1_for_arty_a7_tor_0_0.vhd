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

-- IP VLNV: xilinx.com:module_ref:tor:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY m1_for_arty_a7_tor_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    SELECT0 : IN STD_LOGIC;
    SELECT1 : IN STD_LOGIC;
    SELECT2 : IN STD_LOGIC;
    SELECT3 : IN STD_LOGIC;
    INPUT0 : IN STD_LOGIC;
    INPUT1 : IN STD_LOGIC;
    INPUT2 : IN STD_LOGIC;
    INPUT3 : IN STD_LOGIC;
    OUTPUT0 : OUT STD_LOGIC
  );
END m1_for_arty_a7_tor_0_0;

ARCHITECTURE m1_for_arty_a7_tor_0_0_arch OF m1_for_arty_a7_tor_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF m1_for_arty_a7_tor_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT tor IS
    PORT (
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      SELECT0 : IN STD_LOGIC;
      SELECT1 : IN STD_LOGIC;
      SELECT2 : IN STD_LOGIC;
      SELECT3 : IN STD_LOGIC;
      INPUT0 : IN STD_LOGIC;
      INPUT1 : IN STD_LOGIC;
      INPUT2 : IN STD_LOGIC;
      INPUT3 : IN STD_LOGIC;
      OUTPUT0 : OUT STD_LOGIC
    );
  END COMPONENT tor;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF m1_for_arty_a7_tor_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : tor
    PORT MAP (
      CLK => CLK,
      RST => RST,
      SELECT0 => SELECT0,
      SELECT1 => SELECT1,
      SELECT2 => SELECT2,
      SELECT3 => SELECT3,
      INPUT0 => INPUT0,
      INPUT1 => INPUT1,
      INPUT2 => INPUT2,
      INPUT3 => INPUT3,
      OUTPUT0 => OUTPUT0
    );
END m1_for_arty_a7_tor_0_0_arch;
