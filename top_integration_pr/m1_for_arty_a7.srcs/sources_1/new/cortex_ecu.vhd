----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2019 11:22:29 AM
-- Design Name: 
-- Module Name: cortex_rp - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cortex_rp is
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
    UART_TX : OUT STD_LOGIC;
    CORTEX_RESET : IN STD_LOGIC
  );
end cortex_rp;

architecture Behavioral of cortex_rp is
COMPONENT cm1_ecu_wrapper_0
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
    UART_TX : OUT STD_LOGIC;
    CORTEX_RESET : IN STD_LOGIC
  );
END COMPONENT;
begin

cortex_ecu_i : cm1_ecu_wrapper_0
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
    UART_TX => UART_TX,
    CORTEX_RESET => CORTEX_RESET
  );

end Behavioral;
