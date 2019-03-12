--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Tue Mar 12 16:41:27 2019
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
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    ENGINE : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    I2C_SCL : out STD_LOGIC;
    I2C_SDA_RX : in STD_LOGIC;
    I2C_SDA_TX : out STD_LOGIC;
    ICAP_0_csib : out STD_LOGIC;
    ICAP_0_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ICAP_0_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ICAP_0_rdwrb : out STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    THROTTLE : in STD_LOGIC;
    UART_RX : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    btn_d : in STD_LOGIC;
    btn_l : in STD_LOGIC;
    btn_r : in STD_LOGIC;
    btn_u : in STD_LOGIC;
    int_CM_PRC_RESET : out STD_LOGIC;
    int_CORTEX_RESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_DIN : out STD_LOGIC_VECTOR ( 31 downto 0 );
    int_DOUT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    int_RESET_INTERCONNECT : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_RESET_PERIPHERAL : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_RESET_TIMER : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_SYS_CLOCK : out STD_LOGIC;
    int_TIMER_CLOCK : out STD_LOGIC;
    int_UART_TX_INT : in STD_LOGIC;
    int_uart_rx_int : out STD_LOGIC;
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
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    int_RESET_INTERCONNECT : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_RESET_PERIPHERAL : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_RESET_TIMER : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_SYS_CLOCK : out STD_LOGIC;
    int_TIMER_CLOCK : out STD_LOGIC;
    int_DOUT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    int_uart_rx_int : out STD_LOGIC;
    int_DIN : out STD_LOGIC_VECTOR ( 31 downto 0 );
    btn_u : in STD_LOGIC;
    btn_d : in STD_LOGIC;
    int_CM_PRC_RESET : out STD_LOGIC;
    btn_r : in STD_LOGIC;
    btn_l : in STD_LOGIC;
    int_UART_TX_INT : in STD_LOGIC;
    int_CORTEX_RESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ICAP_0_csib : out STD_LOGIC;
    ICAP_0_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ICAP_0_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ICAP_0_rdwrb : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component m1_for_arty_a7;
begin
m1_for_arty_a7_i: component m1_for_arty_a7
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      ENGINE(0) => ENGINE(0),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      I2C_SCL => I2C_SCL,
      I2C_SDA_RX => I2C_SDA_RX,
      I2C_SDA_TX => I2C_SDA_TX,
      ICAP_0_csib => ICAP_0_csib,
      ICAP_0_i(31 downto 0) => ICAP_0_i(31 downto 0),
      ICAP_0_o(31 downto 0) => ICAP_0_o(31 downto 0),
      ICAP_0_rdwrb => ICAP_0_rdwrb,
      SW(7 downto 0) => SW(7 downto 0),
      THROTTLE => THROTTLE,
      UART_RX => UART_RX,
      UART_TX => UART_TX,
      btn_d => btn_d,
      btn_l => btn_l,
      btn_r => btn_r,
      btn_u => btn_u,
      int_CM_PRC_RESET => int_CM_PRC_RESET,
      int_CORTEX_RESET(0) => int_CORTEX_RESET(0),
      int_DIN(31 downto 0) => int_DIN(31 downto 0),
      int_DOUT(31 downto 0) => int_DOUT(31 downto 0),
      int_RESET_INTERCONNECT(0) => int_RESET_INTERCONNECT(0),
      int_RESET_PERIPHERAL(0) => int_RESET_PERIPHERAL(0),
      int_RESET_TIMER(0) => int_RESET_TIMER(0),
      int_SYS_CLOCK => int_SYS_CLOCK,
      int_TIMER_CLOCK => int_TIMER_CLOCK,
      int_UART_TX_INT => int_UART_TX_INT,
      int_uart_rx_int => int_uart_rx_int,
      led(7 downto 0) => led(7 downto 0),
      reset_0 => reset_0,
      sys_clock => sys_clock
    );
end STRUCTURE;
