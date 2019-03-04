--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Mar  4 00:44:18 2019
--Host        : I750 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target m1_for_arty_a7.bd
--Design      : m1_for_arty_a7
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m1_for_arty_a7 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of m1_for_arty_a7 : entity is "m1_for_arty_a7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=m1_for_arty_a7,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=28,numReposBlks=28,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=1,da_ps7_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of m1_for_arty_a7 : entity is "m1_for_arty_a7.hwdef";
end m1_for_arty_a7;

architecture STRUCTURE of m1_for_arty_a7 is
  component m1_for_arty_a7_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component m1_for_arty_a7_clk_wiz_0_0;
  component m1_for_arty_a7_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_proc_sys_reset_0_0;
  component m1_for_arty_a7_proc_sys_reset_0_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_proc_sys_reset_0_1;
  component m1_for_arty_a7_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlconstant_0_1;
  component m1_for_arty_a7_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component m1_for_arty_a7_xlconcat_1_0;
  component m1_for_arty_a7_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component m1_for_arty_a7_xlconstant_1_0;
  component m1_for_arty_a7_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlslice_0_0;
  component m1_for_arty_a7_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlslice_0_1;
  component m1_for_arty_a7_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component m1_for_arty_a7_xlconstant_1_1;
  component m1_for_arty_a7_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlslice_1_0;
  component m1_for_arty_a7_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component m1_for_arty_a7_xlconcat_1_1;
  component m1_for_arty_a7_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlslice_2_0;
  component m1_for_arty_a7_cm1_engine_wrapper_0_0 is
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
  end component m1_for_arty_a7_cm1_engine_wrapper_0_0;
  component m1_for_arty_a7_cm1_throttle_wrapper_0_0 is
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
  end component m1_for_arty_a7_cm1_throttle_wrapper_0_0;
  component m1_for_arty_a7_cm1_ecu_wrapper_0_1 is
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
  end component m1_for_arty_a7_cm1_ecu_wrapper_0_1;
  component m1_for_arty_a7_invert_singleValue_0_1 is
  port (
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC
  );
  end component m1_for_arty_a7_invert_singleValue_0_1;
  component m1_for_arty_a7_invert_singleValue_1_0 is
  port (
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC
  );
  end component m1_for_arty_a7_invert_singleValue_1_0;
  component m1_for_arty_a7_xlconstant_4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlconstant_4_0;
  component m1_for_arty_a7_proc_sys_reset_0_2 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_proc_sys_reset_0_2;
  component m1_for_arty_a7_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_proc_sys_reset_1_0;
  component m1_for_arty_a7_proc_sys_reset_0_3 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_proc_sys_reset_0_3;
  component m1_for_arty_a7_proc_sys_reset_1_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_proc_sys_reset_1_1;
  component m1_for_arty_a7_tor_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    SELECT0 : in STD_LOGIC;
    SELECT1 : in STD_LOGIC;
    SELECT2 : in STD_LOGIC;
    SELECT3 : in STD_LOGIC;
    INPUT0 : in STD_LOGIC;
    INPUT1 : in STD_LOGIC;
    INPUT2 : in STD_LOGIC;
    INPUT3 : in STD_LOGIC;
    OUTPUT0 : out STD_LOGIC
  );
  end component m1_for_arty_a7_tor_0_0;
  component m1_for_arty_a7_xlconstant_5_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlconstant_5_0;
  component m1_for_arty_a7_reset_impulse_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    reset_out : out STD_LOGIC
  );
  end component m1_for_arty_a7_reset_impulse_0_0;
  component m1_for_arty_a7_reset_impulse_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    reset_out : out STD_LOGIC
  );
  end component m1_for_arty_a7_reset_impulse_0_1;
  component m1_for_arty_a7_reset_impulse_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    reset_out : out STD_LOGIC
  );
  end component m1_for_arty_a7_reset_impulse_1_0;
  component m1_for_arty_a7_top_0_1 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    UART_RX_EXT : in STD_LOGIC;
    UART_TX_EXT : out STD_LOGIC;
    UART_RX_INT : out STD_LOGIC;
    UART_TX_INT : in STD_LOGIC;
    REC_ECU : out STD_LOGIC;
    REC_MCU : out STD_LOGIC;
    REC_THS : out STD_LOGIC
  );
  end component m1_for_arty_a7_top_0_1;
  signal I2C_SDA_RX_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal SW_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal THROTTLE_1 : STD_LOGIC;
  signal UART_RX_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal cm1_ecu_wrapper_0_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cm1_ecu_wrapper_0_I2C_SCL : STD_LOGIC;
  signal cm1_ecu_wrapper_0_I2C_SDA_TX : STD_LOGIC;
  signal cm1_ecu_wrapper_0_UART_TX : STD_LOGIC;
  signal cm1_engine_wrapper_0_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cm1_engine_wrapper_0_UART_TX : STD_LOGIC;
  signal cm1_throttle_wrapper_0_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cm1_throttle_wrapper_0_UART_TX : STD_LOGIC;
  signal invert_singleValue_0_o_signal : STD_LOGIC;
  signal invert_singleValue_1_o_signal : STD_LOGIC;
  signal invert_singleValue_2_o_signal : STD_LOGIC;
  signal invert_singleValue_5_o_signal : STD_LOGIC;
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_2_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_2_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_3_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_4_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_5_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_5_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_0_2 : STD_LOGIC;
  signal reset_impulse_0_reset_out : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal top_0_REC_ECU : STD_LOGIC;
  signal top_0_REC_MCU : STD_LOGIC;
  signal top_0_REC_THS : STD_LOGIC;
  signal top_0_UART_RX_INT : STD_LOGIC;
  signal top_0_UART_TX_EXT : STD_LOGIC;
  signal tor_0_OUTPUT : STD_LOGIC;
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal xlconstant_5_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_6_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cm1_engine_wrapper_0_I2C_SCL_UNCONNECTED : STD_LOGIC;
  signal NLW_cm1_engine_wrapper_0_I2C_SDA_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_cm1_throttle_wrapper_0_I2C_SCL_UNCONNECTED : STD_LOGIC;
  signal NLW_cm1_throttle_wrapper_0_I2C_SDA_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_2_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_2_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_2_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_3_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_3_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_3_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_3_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_4_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_4_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_4_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_4_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_5_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_5_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_5_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN m1_for_arty_a7_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
begin
  ENGINE(0) <= xlslice_0_Dout(0);
  I2C_SCL <= cm1_ecu_wrapper_0_I2C_SCL;
  I2C_SDA_RX_1 <= I2C_SDA_RX;
  I2C_SDA_TX <= cm1_ecu_wrapper_0_I2C_SDA_TX;
  SW_1(7 downto 0) <= SW(7 downto 0);
  THROTTLE_1 <= THROTTLE;
  UART_RX_1 <= UART_RX;
  UART_TX <= top_0_UART_TX_EXT;
  led(7 downto 0) <= xlconcat_2_dout(7 downto 0);
  reset_0_2 <= reset_0;
  sys_clock_1 <= sys_clock;
clk_wiz_0: component m1_for_arty_a7_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => M04_ACLK_1,
      locked => clk_wiz_0_locked,
      reset => reset_0_2
    );
cm1_ecu_wrapper_0: component m1_for_arty_a7_cm1_ecu_wrapper_0_1
     port map (
      DIN(31 downto 0) => xlconcat_1_dout(31 downto 0),
      DOUT(31 downto 0) => cm1_ecu_wrapper_0_DOUT(31 downto 0),
      I2C_SCL => cm1_ecu_wrapper_0_I2C_SCL,
      I2C_SDA_RX => I2C_SDA_RX_1,
      I2C_SDA_TX => cm1_ecu_wrapper_0_I2C_SDA_TX,
      RESET_INTERCONNECT => proc_sys_reset_2_interconnect_aresetn(0),
      RESET_PERIPHERAL => proc_sys_reset_2_peripheral_aresetn(0),
      RESET_TIMER => proc_sys_reset_3_peripheral_aresetn(0),
      SYS_CLOCK => clk_wiz_0_clk_out1,
      TIMER_CLOCK => M04_ACLK_1,
      UART_RX => top_0_UART_RX_INT,
      UART_TX => cm1_ecu_wrapper_0_UART_TX
    );
cm1_engine_wrapper_0: component m1_for_arty_a7_cm1_engine_wrapper_0_0
     port map (
      DIN(31 downto 0) => xlconcat_1_dout(31 downto 0),
      DOUT(31 downto 0) => cm1_engine_wrapper_0_DOUT(31 downto 0),
      I2C_SCL => NLW_cm1_engine_wrapper_0_I2C_SCL_UNCONNECTED,
      I2C_SDA_RX => I2C_SDA_RX_1,
      I2C_SDA_TX => NLW_cm1_engine_wrapper_0_I2C_SDA_TX_UNCONNECTED,
      RESET_INTERCONNECT => proc_sys_reset_5_interconnect_aresetn(0),
      RESET_PERIPHERAL => proc_sys_reset_5_peripheral_aresetn(0),
      RESET_TIMER => proc_sys_reset_4_peripheral_aresetn(0),
      SYS_CLOCK => clk_wiz_0_clk_out1,
      TIMER_CLOCK => M04_ACLK_1,
      UART_RX => top_0_UART_RX_INT,
      UART_TX => cm1_engine_wrapper_0_UART_TX
    );
cm1_throttle_wrapper_0: component m1_for_arty_a7_cm1_throttle_wrapper_0_0
     port map (
      DIN(31 downto 0) => xlconcat_1_dout(31 downto 0),
      DOUT(31 downto 0) => cm1_throttle_wrapper_0_DOUT(31 downto 0),
      I2C_SCL => NLW_cm1_throttle_wrapper_0_I2C_SCL_UNCONNECTED,
      I2C_SDA_RX => I2C_SDA_RX_1,
      I2C_SDA_TX => NLW_cm1_throttle_wrapper_0_I2C_SDA_TX_UNCONNECTED,
      RESET_INTERCONNECT => proc_sys_reset_0_interconnect_aresetn(0),
      RESET_PERIPHERAL => proc_sys_reset_0_peripheral_aresetn(0),
      RESET_TIMER => reset_0_1(0),
      SYS_CLOCK => clk_wiz_0_clk_out1,
      TIMER_CLOCK => M04_ACLK_1,
      UART_RX => top_0_UART_RX_INT,
      UART_TX => cm1_throttle_wrapper_0_UART_TX
    );
invert_singleValue_1: component m1_for_arty_a7_invert_singleValue_0_1
     port map (
      i_signal => UART_RX_1,
      o_signal => invert_singleValue_1_o_signal
    );
invert_singleValue_2: component m1_for_arty_a7_invert_singleValue_1_0
     port map (
      i_signal => top_0_UART_TX_EXT,
      o_signal => invert_singleValue_2_o_signal
    );
proc_sys_reset_0: component m1_for_arty_a7_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => invert_singleValue_0_o_signal,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
proc_sys_reset_1: component m1_for_arty_a7_proc_sys_reset_0_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => invert_singleValue_0_o_signal,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => reset_0_1(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => M04_ACLK_1
    );
proc_sys_reset_2: component m1_for_arty_a7_proc_sys_reset_0_2
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_2_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_impulse_0_reset_out,
      interconnect_aresetn(0) => proc_sys_reset_2_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_2_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_2_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_2_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
proc_sys_reset_3: component m1_for_arty_a7_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_3_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_impulse_0_reset_out,
      interconnect_aresetn(0) => NLW_proc_sys_reset_3_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_3_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_3_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_3_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => M04_ACLK_1
    );
proc_sys_reset_4: component m1_for_arty_a7_proc_sys_reset_0_3
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_4_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => invert_singleValue_5_o_signal,
      interconnect_aresetn(0) => NLW_proc_sys_reset_4_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_4_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_4_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_4_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => M04_ACLK_1
    );
proc_sys_reset_5: component m1_for_arty_a7_proc_sys_reset_1_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_5_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => invert_singleValue_5_o_signal,
      interconnect_aresetn(0) => proc_sys_reset_5_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_5_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_5_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_5_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
reset_impulse_0: component m1_for_arty_a7_reset_impulse_0_0
     port map (
      clk => M04_ACLK_1,
      reset_in => top_0_REC_ECU,
      reset_out => reset_impulse_0_reset_out,
      rst => reset_0_2
    );
reset_impulse_1: component m1_for_arty_a7_reset_impulse_0_1
     port map (
      clk => M04_ACLK_1,
      reset_in => top_0_REC_MCU,
      reset_out => invert_singleValue_5_o_signal,
      rst => reset_0_2
    );
reset_impulse_2: component m1_for_arty_a7_reset_impulse_1_0
     port map (
      clk => M04_ACLK_1,
      reset_in => top_0_REC_THS,
      reset_out => invert_singleValue_0_o_signal,
      rst => reset_0_2
    );
top_0: component m1_for_arty_a7_top_0_1
     port map (
      CLK => clk_wiz_0_clk_out1,
      EN => xlconstant_2_dout(0),
      REC_ECU => top_0_REC_ECU,
      REC_MCU => top_0_REC_MCU,
      REC_THS => top_0_REC_THS,
      RST => reset_0_2,
      UART_RX_EXT => UART_RX_1,
      UART_RX_INT => top_0_UART_RX_INT,
      UART_TX_EXT => top_0_UART_TX_EXT,
      UART_TX_INT => tor_0_OUTPUT
    );
tor_0: component m1_for_arty_a7_tor_0_0
     port map (
      CLK => clk_wiz_0_clk_out1,
      INPUT0 => cm1_ecu_wrapper_0_UART_TX,
      INPUT1 => cm1_throttle_wrapper_0_UART_TX,
      INPUT2 => cm1_engine_wrapper_0_UART_TX,
      INPUT3 => xlconstant_6_dout(0),
      OUTPUT0 => tor_0_OUTPUT,
      RST => reset_0_2,
      SELECT0 => top_0_REC_ECU,
      SELECT1 => top_0_REC_THS,
      SELECT2 => top_0_REC_MCU,
      SELECT3 => xlconstant_5_dout(0)
    );
xlconcat_1: component m1_for_arty_a7_xlconcat_1_0
     port map (
      In0(7 downto 0) => xlconstant_1_dout(7 downto 0),
      In1(7 downto 0) => SW_1(7 downto 0),
      In2(0) => THROTTLE_1,
      In3(14 downto 0) => xlconstant_3_dout(14 downto 0),
      dout(31 downto 0) => xlconcat_1_dout(31 downto 0)
    );
xlconcat_2: component m1_for_arty_a7_xlconcat_1_1
     port map (
      In0(0) => xlslice_1_Dout(0),
      In1(0) => xlslice_3_Dout(0),
      In2(0) => xlslice_2_Dout(0),
      In3(0) => top_0_REC_ECU,
      In4(0) => top_0_REC_THS,
      In5(0) => top_0_REC_MCU,
      In6(0) => invert_singleValue_2_o_signal,
      In7(0) => invert_singleValue_1_o_signal,
      dout(7 downto 0) => xlconcat_2_dout(7 downto 0)
    );
xlconstant_1: component m1_for_arty_a7_xlconstant_1_0
     port map (
      dout(7 downto 0) => xlconstant_1_dout(7 downto 0)
    );
xlconstant_2: component m1_for_arty_a7_xlconstant_0_1
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
xlconstant_3: component m1_for_arty_a7_xlconstant_1_1
     port map (
      dout(14 downto 0) => xlconstant_3_dout(14 downto 0)
    );
xlconstant_5: component m1_for_arty_a7_xlconstant_4_0
     port map (
      dout(0) => xlconstant_5_dout(0)
    );
xlconstant_6: component m1_for_arty_a7_xlconstant_5_0
     port map (
      dout(0) => xlconstant_6_dout(0)
    );
xlslice_0: component m1_for_arty_a7_xlslice_0_0
     port map (
      Din(31 downto 0) => cm1_engine_wrapper_0_DOUT(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component m1_for_arty_a7_xlslice_0_1
     port map (
      Din(31 downto 0) => cm1_ecu_wrapper_0_DOUT(31 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component m1_for_arty_a7_xlslice_1_0
     port map (
      Din(31 downto 0) => cm1_engine_wrapper_0_DOUT(31 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_3: component m1_for_arty_a7_xlslice_2_0
     port map (
      Din(31 downto 0) => cm1_throttle_wrapper_0_DOUT(31 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
end STRUCTURE;
