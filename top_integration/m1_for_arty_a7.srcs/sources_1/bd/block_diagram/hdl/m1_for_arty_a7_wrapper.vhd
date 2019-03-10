--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Mon Mar  4 14:46:07 2019
--Host        : consti-002 running 64-bit Ubuntu 16.04.6 LTS
--Command     : generate_target m1_for_arty_a7_wrapper.bd
--Design      : m1_for_arty_a7_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m1_for_arty_a7_wrapper is
  port (
    ENGINE : out STD_LOGIC_VECTOR ( 0 to 0 );
    I2C_SCL : out STD_LOGIC;
    I2C_SDA_RX : in STD_LOGIC;
    I2C_SDA_TX : out STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    THROTTLE : in STD_LOGIC;
    UART_RX : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end m1_for_arty_a7_wrapper;

architecture STRUCTURE of m1_for_arty_a7_wrapper is
  component m1_for_arty_a7 is
  port (
    reset_0 : in STD_LOGIC;
    UART_RX : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    I2C_SDA_RX : in STD_LOGIC;
    THROTTLE : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I2C_SDA_TX : out STD_LOGIC;
    I2C_SCL : out STD_LOGIC;
    ENGINE : out STD_LOGIC_VECTOR ( 0 to 0 );
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component m1_for_arty_a7;
begin
m1_for_arty_a7_i: component m1_for_arty_a7
     port map (
      ENGINE(0) => ENGINE(0),
      I2C_SCL => I2C_SCL,
      I2C_SDA_RX => I2C_SDA_RX,
      I2C_SDA_TX => I2C_SDA_TX,
      SW(7 downto 0) => SW(7 downto 0),
      THROTTLE => THROTTLE,
      UART_RX => UART_RX,
      UART_TX => UART_TX,
      led(7 downto 0) => led(7 downto 0),
      reset_0 => reset_0,
      sys_clock => sys_clock
    );
end STRUCTURE;
