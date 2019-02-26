--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue Feb 26 17:18:22 2019
--Host        : DESKTOP-LCBAU67 running 64-bit major release  (build 9200)
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
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of m1_for_arty_a7 : entity is "m1_for_arty_a7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=m1_for_arty_a7,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=18,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=1,da_ps7_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of m1_for_arty_a7 : entity is "m1_for_arty_a7.hwdef";
end m1_for_arty_a7;

architecture STRUCTURE of m1_for_arty_a7 is
  component m1_for_arty_a7_processing_system7_0_0 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component m1_for_arty_a7_processing_system7_0_0;
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
  component m1_for_arty_a7_top_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    EN : in STD_LOGIC;
    UART_RX_EXT : in STD_LOGIC;
    UART_TX_EXT : out STD_LOGIC;
    UART_RX_INT : out STD_LOGIC;
    UART_TX_INT : in STD_LOGIC;
    RECFG : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component m1_for_arty_a7_top_0_0;
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
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component m1_for_arty_a7_xlslice_0_1;
  component m1_for_arty_a7_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component m1_for_arty_a7_xlconstant_1_1;
  component m1_for_arty_a7_invert_singleValue_0_0 is
  port (
    i_signal : in STD_LOGIC;
    o_signal : out STD_LOGIC
  );
  end component m1_for_arty_a7_invert_singleValue_0_0;
  component m1_for_arty_a7_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlslice_1_0;
  component m1_for_arty_a7_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component m1_for_arty_a7_xlconcat_1_1;
  component m1_for_arty_a7_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlslice_2_0;
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
  signal cm1_throttle_wrapper_0_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal invert_singleValue_0_o_signal : STD_LOGIC;
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_0_2 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal top_0_UART_RX_INT : STD_LOGIC;
  signal top_0_UART_TX_EXT : STD_LOGIC;
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cm1_engine_wrapper_0_I2C_SCL_UNCONNECTED : STD_LOGIC;
  signal NLW_cm1_engine_wrapper_0_I2C_SDA_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_cm1_engine_wrapper_0_UART_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_cm1_throttle_wrapper_0_I2C_SCL_UNCONNECTED : STD_LOGIC;
  signal NLW_cm1_throttle_wrapper_0_I2C_SDA_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_cm1_throttle_wrapper_0_UART_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_top_0_RECFG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN m1_for_arty_a7_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
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
      RESET_INTERCONNECT => proc_sys_reset_0_interconnect_aresetn(0),
      RESET_PERIPHERAL => proc_sys_reset_0_peripheral_aresetn(0),
      RESET_TIMER => reset_0_1(0),
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
      RESET_INTERCONNECT => proc_sys_reset_0_interconnect_aresetn(0),
      RESET_PERIPHERAL => proc_sys_reset_0_peripheral_aresetn(0),
      RESET_TIMER => reset_0_1(0),
      SYS_CLOCK => clk_wiz_0_clk_out1,
      TIMER_CLOCK => M04_ACLK_1,
      UART_RX => top_0_UART_RX_INT,
      UART_TX => NLW_cm1_engine_wrapper_0_UART_TX_UNCONNECTED
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
      UART_TX => NLW_cm1_throttle_wrapper_0_UART_TX_UNCONNECTED
    );
invert_singleValue_0: component m1_for_arty_a7_invert_singleValue_0_0
     port map (
      i_signal => reset_0_2,
      o_signal => invert_singleValue_0_o_signal
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
      slowest_sync_clk => M04_ACLK_1
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
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
processing_system7_0: component m1_for_arty_a7_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED,
      FCLK_RESET0_N => NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => clk_wiz_0_clk_out1,
      M_AXI_GP0_ARADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARREADY => '0',
      M_AXI_GP0_ARSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARVALID => NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED,
      M_AXI_GP0_AWADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWREADY => '0',
      M_AXI_GP0_AWSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWVALID => NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED,
      M_AXI_GP0_BID(11 downto 0) => B"000000000000",
      M_AXI_GP0_BREADY => NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED,
      M_AXI_GP0_BRESP(1 downto 0) => B"00",
      M_AXI_GP0_BVALID => '0',
      M_AXI_GP0_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI_GP0_RID(11 downto 0) => B"000000000000",
      M_AXI_GP0_RLAST => '0',
      M_AXI_GP0_RREADY => NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED,
      M_AXI_GP0_RRESP(1 downto 0) => B"00",
      M_AXI_GP0_RVALID => '0',
      M_AXI_GP0_WDATA(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_WLAST => NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED,
      M_AXI_GP0_WREADY => '0',
      M_AXI_GP0_WSTRB(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_GP0_WVALID => NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
top_0: component m1_for_arty_a7_top_0_0
     port map (
      CLK => clk_wiz_0_clk_out1,
      EN => xlconstant_2_dout(0),
      RECFG(1 downto 0) => NLW_top_0_RECFG_UNCONNECTED(1 downto 0),
      RST => reset_0_1(0),
      UART_RX_EXT => UART_RX_1,
      UART_RX_INT => top_0_UART_RX_INT,
      UART_TX_EXT => top_0_UART_TX_EXT,
      UART_TX_INT => cm1_ecu_wrapper_0_UART_TX
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
      In0(5 downto 0) => xlslice_1_Dout(5 downto 0),
      In1(0) => xlslice_2_Dout(0),
      In2(0) => xlslice_3_Dout(0),
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
xlslice_0: component m1_for_arty_a7_xlslice_0_0
     port map (
      Din(31 downto 0) => cm1_ecu_wrapper_0_DOUT(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component m1_for_arty_a7_xlslice_0_1
     port map (
      Din(31 downto 0) => cm1_ecu_wrapper_0_DOUT(31 downto 0),
      Dout(5 downto 0) => xlslice_1_Dout(5 downto 0)
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
