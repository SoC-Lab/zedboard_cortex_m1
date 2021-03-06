--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue Feb 26 16:23:12 2019
--Host        : DESKTOP-LCBAU67 running 64-bit major release  (build 9200)
--Command     : generate_target cm1_throttle_wrapper.bd
--Design      : cm1_throttle_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cm1_throttle_wrapper is
  port (
    DIN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DOUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I2C_SCL : out STD_LOGIC;
    I2C_SDA_RX : in STD_LOGIC;
    I2C_SDA_TX : out STD_LOGIC;
    RESET_INTERCONNECT : in STD_LOGIC;
    RESET_PERIPHERAL : in STD_LOGIC;
    RESET_TIMER : in STD_LOGIC;
    SYS_CLOCK : in STD_LOGIC;
    TIMER_CLOCK : in STD_LOGIC;
    UART_RX : in STD_LOGIC;
    UART_TX : out STD_LOGIC
  );
end cm1_throttle_wrapper;

architecture STRUCTURE of cm1_throttle_wrapper is
  component cm1_throttle is
  port (
    DIN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DOUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    I2C_SCL : out STD_LOGIC;
    I2C_SDA_RX : in STD_LOGIC;
    I2C_SDA_TX : out STD_LOGIC;
    RESET_INTERCONNECT : in STD_LOGIC;
    RESET_PERIPHERAL : in STD_LOGIC;
    RESET_TIMER : in STD_LOGIC;
    SYS_CLOCK : in STD_LOGIC;
    TIMER_CLOCK : in STD_LOGIC;
    UART_RX : in STD_LOGIC;
    UART_TX : out STD_LOGIC
  );
  end component cm1_throttle;
begin
cm1_throttle_i: component cm1_throttle
     port map (
      DIN(31 downto 0) => DIN(31 downto 0),
      DOUT(31 downto 0) => DOUT(31 downto 0),
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
end STRUCTURE;
