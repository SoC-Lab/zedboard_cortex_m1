----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2019 11:05:13 AM
-- Design Name: 
-- Module Name: glue_top - Behavioral
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

entity glue_top is
  port (
    -- Block Diagram Instance
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
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    THROTTLE : in STD_LOGIC;
    UART_RX : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    btn_d : in STD_LOGIC;
    btn_u : in STD_LOGIC;
    btn_r : in STD_LOGIC;
    btn_l : in STD_LOGIC
    -- Cortex Instance
  );
end glue_top;

architecture Behavioral of glue_top is

signal int_CM_DIN : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal int_CM_DOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal int_CM_I2C_SCL : STD_LOGIC;  
signal int_CM_I2C_SDA_RX : STD_LOGIC;  
signal int_CM_I2C_SDA_TX : STD_LOGIC;  
signal int_CM_RESET_INTERCONNECT : STD_LOGIC;  
signal int_CM_RESET_PERIPHERAL : STD_LOGIC;  
signal int_CM_RESET_TIMER : STD_LOGIC;  
signal int_CM_SYS_CLOCK : STD_LOGIC;  
signal int_CM_TIMER_CLOCK : STD_LOGIC;  
signal int_CM_UART_RX : STD_LOGIC;  
signal int_CM_UART_TX : STD_LOGIC;
signal int_CM_uart_rx_int : STD_LOGIC;
signal int_CM_PRC_RESET : STD_LOGIC;
signal int_CM_UART_TX_INT : STD_LOGIC;

COMPONENT cortex_rp
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
END COMPONENT;

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
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
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
    int_RESET_INTERCONNECT : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_RESET_PERIPHERAL : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_RESET_TIMER : out STD_LOGIC_VECTOR ( 0 to 0 );
    int_SYS_CLOCK : out STD_LOGIC;
    int_TIMER_CLOCK : out STD_LOGIC;
    int_DOUT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    int_uart_rx_int : out STD_LOGIC;
    int_DIN : out STD_LOGIC_VECTOR ( 31 downto 0 );
    int_CM_PRC_RESET : out STD_LOGIC;
    ICAP_0_csib : out STD_LOGIC;
    ICAP_0_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ICAP_0_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ICAP_0_rdwrb : out STD_LOGIC;
    btn_d : in STD_LOGIC;
    btn_u : in STD_LOGIC;
    btn_r : in STD_LOGIC;
    btn_l : in STD_LOGIC;
    int_UART_TX_INT : in STD_LOGIC
    );
end component m1_for_arty_a7;

component ICAPE2 is
    generic (
        DEVICE_ID : std_logic_vector(31 downto 0);
        ICAP_WIDTH : string;
        SIM_CFG_FILE_NAME : string
    );   
    port (
        O : out std_logic_vector(31 downto 0);
        CLK : in std_logic;
        CSIB : in std_logic;
        I : in std_logic_vector(31 downto 0);
        RDWRB : inout std_logic
    );
end component ICAPE2;

signal ICAP_O       :  std_logic_vector(31 downto 0);
signal ICAP_CSIB    :  std_logic;
signal ICAP_I       :  std_logic_vector(31 downto 0);
signal ICAP_RDWRB   :  std_logic;

begin



-- ICAPE2: Internal Configuration Access Port
-- 7 Series
-- Xilinx HDL Libraries Guide, version 14.5
ICAPE2_inst : ICAPE2
generic map (
DEVICE_ID => X"23727093", -- Specifies the pre-programmed Device ID value to be used for simulation
-- purposes.
ICAP_WIDTH => "X32", -- Specifies the input and output data width.
SIM_CFG_FILE_NAME => "None" -- Specifies the Raw Bitstream (RBT) file to be parsed by the simulation
-- model.
)
port map (
O => ICAP_O, -- 32-bit output: Configuration data output bus
CLK => int_CM_SYS_CLOCK, -- 1-bit input: Clock Input
CSIB => ICAP_CSIB, -- 1-bit input: Active-Low ICAP Enable
I => ICAP_I, -- 32-bit input: Configuration data input bus
RDWRB => ICAP_RDWRB -- 1-bit input: Read/Write Select input
);
-- End of ICAPE2_inst instantiation

cortex_i : component cortex_rp
    port map (
        DIN                 => int_CM_DIN,
        DOUT                => int_CM_DOUT,
        I2C_SCL             => int_CM_I2C_SCL,
        I2C_SDA_RX          => int_CM_I2C_SDA_RX,
        I2C_SDA_TX          => int_CM_I2C_SDA_TX,
        RESET_INTERCONNECT  => int_CM_RESET_INTERCONNECT,
        RESET_PERIPHERAL    => int_CM_RESET_PERIPHERAL,
        RESET_TIMER         => int_CM_RESET_TIMER,
        SYS_CLOCK           => int_CM_SYS_CLOCK,
        TIMER_CLOCK         => int_CM_TIMER_CLOCK,
        UART_RX             => int_CM_UART_RX,
        UART_TX             => int_CM_UART_TX
    );

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
      SW(7 downto 0) => SW(7 downto 0),
      THROTTLE => THROTTLE,
      UART_RX => UART_RX,
      UART_TX => UART_TX,
      int_DIN(31 downto 0)      => int_CM_DIN(31 downto 0),
      int_DOUT(31 downto 0)     => int_CM_DOUT(31 downto 0),
      int_RESET_INTERCONNECT(0) => int_CM_RESET_INTERCONNECT,
      int_RESET_PERIPHERAL(0)   => int_CM_RESET_PERIPHERAL,
      int_RESET_TIMER(0)       => int_CM_RESET_TIMER,
      int_SYS_CLOCK             => int_CM_SYS_CLOCK,
      int_TIMER_CLOCK           => int_CM_TIMER_CLOCK,
      int_uart_rx_int           => int_CM_UART_RX,
      int_CM_PRC_RESET         => int_CM_PRC_RESET,
      led(7 downto 0) => led(7 downto 0),
      reset_0 => reset_0,
      sys_clock => sys_clock,
      ICAP_0_csib => ICAP_CSIB,
      ICAP_0_i => ICAP_I,
      ICAP_0_o => ICAP_O,
      ICAP_0_rdwrb => ICAP_RDWRB,
      btn_d => btn_d,
      btn_u => btn_u,
      btn_r => btn_r,
      btn_l => btn_l,
      int_UART_TX_INT => int_CM_UART_TX
    );
    
-- Reset the PR Module after a parital reconfiguration event and hope the best.
--int_CM_RESET_INTERCONNECT <= int_CM_RESET_INTERCONNECT or int_CM_PRC_RESET;
--int_CM_RESET_PERIPHERAL <= int_CM_RESET_PERIPHERAL or int_CM_PRC_RESET;
--int_CM_RESET_TIMER <= int_CM_RESET_TIMER or int_CM_PRC_RESET;

end Behavioral;
