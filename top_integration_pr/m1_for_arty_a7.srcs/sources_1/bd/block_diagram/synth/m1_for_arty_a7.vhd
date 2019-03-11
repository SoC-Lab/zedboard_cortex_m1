--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Mon Mar 11 19:33:03 2019
--Host        : consti-002 running 64-bit Ubuntu 16.04.6 LTS
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of m1_for_arty_a7 : entity is "m1_for_arty_a7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=m1_for_arty_a7,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=23,numReposBlks=23,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=1,da_ps7_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of m1_for_arty_a7 : entity is "m1_for_arty_a7.hwdef";
end m1_for_arty_a7;

architecture STRUCTURE of m1_for_arty_a7 is
  component m1_for_arty_a7_processing_system7_0_0 is
  port (
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
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
  component m1_for_arty_a7_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_util_vector_logic_0_0;
  component m1_for_arty_a7_prc_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    icap_clk : in STD_LOGIC;
    icap_reset : in STD_LOGIC;
    icap_csib : out STD_LOGIC;
    icap_rdwrb : out STD_LOGIC;
    icap_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icap_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vsm_vs_cortex_hw_triggers : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vsm_vs_cortex_rm_shutdown_req : out STD_LOGIC;
    vsm_vs_cortex_rm_shutdown_ack : in STD_LOGIC;
    vsm_vs_cortex_rm_decouple : out STD_LOGIC;
    vsm_vs_cortex_rm_reset : out STD_LOGIC;
    vsm_vs_cortex_event_error : out STD_LOGIC;
    vsm_vs_cortex_m_axis_status_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vsm_vs_cortex_m_axis_status_tvalid : out STD_LOGIC;
    cap_req : out STD_LOGIC;
    cap_gnt : in STD_LOGIC;
    cap_rel : in STD_LOGIC;
    m_axi_mem_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mem_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mem_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mem_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mem_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mem_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_arvalid : out STD_LOGIC;
    m_axi_mem_arready : in STD_LOGIC;
    m_axi_mem_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mem_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mem_rlast : in STD_LOGIC;
    m_axi_mem_rvalid : in STD_LOGIC;
    m_axi_mem_rready : out STD_LOGIC
  );
  end component m1_for_arty_a7_prc_0_0;
  component m1_for_arty_a7_axi_protocol_convert_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component m1_for_arty_a7_axi_protocol_convert_0_0;
  component m1_for_arty_a7_xlconstant_5_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlconstant_5_0;
  component m1_for_arty_a7_xlconstant_6_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_xlconstant_6_0;
  component m1_for_arty_a7_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component m1_for_arty_a7_xlconcat_0_1;
  component m1_for_arty_a7_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_util_vector_logic_0_1;
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
  component m1_for_arty_a7_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_util_vector_logic_1_0;
  component m1_for_arty_a7_util_vector_logic_2_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_util_vector_logic_2_2;
  component m1_for_arty_a7_util_vector_logic_2_3 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_util_vector_logic_2_3;
  component m1_for_arty_a7_util_vector_logic_5_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_util_vector_logic_5_0;
  component m1_for_arty_a7_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component m1_for_arty_a7_ila_0_0;
  signal M04_ACLK_1 : STD_LOGIC;
  signal SW_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal THROTTLE_1 : STD_LOGIC;
  signal UART_RX_1 : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_protocol_convert_0_M_AXI_RLAST : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_protocol_convert_0_M_AXI_RVALID : STD_LOGIC;
  signal btn_u_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal cm1_ecu_wrapper_0_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal prc_0_ICAP_csib : STD_LOGIC;
  signal prc_0_ICAP_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal prc_0_ICAP_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal prc_0_ICAP_rdwrb : STD_LOGIC;
  signal prc_0_m_axi_mem_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal prc_0_m_axi_mem_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal prc_0_m_axi_mem_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal prc_0_m_axi_mem_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal prc_0_m_axi_mem_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal prc_0_m_axi_mem_ARREADY : STD_LOGIC;
  signal prc_0_m_axi_mem_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal prc_0_m_axi_mem_ARUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal prc_0_m_axi_mem_ARVALID : STD_LOGIC;
  signal prc_0_m_axi_mem_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal prc_0_m_axi_mem_RLAST : STD_LOGIC;
  signal prc_0_m_axi_mem_RREADY : STD_LOGIC;
  signal prc_0_m_axi_mem_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal prc_0_m_axi_mem_RVALID : STD_LOGIC;
  signal prc_0_vsm_vs_cortex_rm_reset : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_mb_reset : STD_LOGIC;
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_2_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_2_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal reset_0_2 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal top_0_REC_ECU1 : STD_LOGIC;
  signal top_0_REC_MCU : STD_LOGIC;
  signal top_0_REC_THS : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_3_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_4_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_5_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal xlconstant_5_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_6_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_protocol_convert_0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_prc_0_cap_req_UNCONNECTED : STD_LOGIC;
  signal NLW_prc_0_vsm_vs_cortex_event_error_UNCONNECTED : STD_LOGIC;
  signal NLW_prc_0_vsm_vs_cortex_m_axis_status_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_prc_0_vsm_vs_cortex_rm_decouple_UNCONNECTED : STD_LOGIC;
  signal NLW_prc_0_vsm_vs_cortex_rm_shutdown_req_UNCONNECTED : STD_LOGIC;
  signal NLW_prc_0_vsm_vs_cortex_m_axis_status_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_2_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_2_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_2_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_FCLK_CLK0_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_FCLK_RESET0_N_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_WREADY_UNCONNECTED : STD_LOGIC;
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
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_util_vector_logic_4_Op1_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute X_INTERFACE_INFO of ICAP_0_csib : signal is "xilinx.com:interface:icap:1.0 ICAP_0 csib";
  attribute X_INTERFACE_INFO of ICAP_0_rdwrb : signal is "xilinx.com:interface:icap:1.0 ICAP_0 rdwrb";
  attribute X_INTERFACE_INFO of int_SYS_CLOCK : signal is "xilinx.com:signal:clock:1.0 CLK.INT_SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of int_SYS_CLOCK : signal is "XIL_INTERFACENAME CLK.INT_SYS_CLOCK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of int_TIMER_CLOCK : signal is "xilinx.com:signal:clock:1.0 CLK.INT_TIMER_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of int_TIMER_CLOCK : signal is "XIL_INTERFACENAME CLK.INT_TIMER_CLOCK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 8000000, INSERT_VIP 0, PHASE 0.0";
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
  attribute X_INTERFACE_INFO of ICAP_0_i : signal is "xilinx.com:interface:icap:1.0 ICAP_0 i";
  attribute X_INTERFACE_INFO of ICAP_0_o : signal is "xilinx.com:interface:icap:1.0 ICAP_0 o";
  attribute X_INTERFACE_INFO of int_CORTEX_RESET : signal is "xilinx.com:signal:reset:1.0 RST.INT_CORTEX_RESET RST";
  attribute X_INTERFACE_PARAMETER of int_CORTEX_RESET : signal is "XIL_INTERFACENAME RST.INT_CORTEX_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of int_RESET_INTERCONNECT : signal is "xilinx.com:signal:reset:1.0 RST.INT_RESET_INTERCONNECT RST";
  attribute X_INTERFACE_PARAMETER of int_RESET_INTERCONNECT : signal is "XIL_INTERFACENAME RST.INT_RESET_INTERCONNECT, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of int_RESET_PERIPHERAL : signal is "xilinx.com:signal:reset:1.0 RST.INT_RESET_PERIPHERAL RST";
  attribute X_INTERFACE_PARAMETER of int_RESET_PERIPHERAL : signal is "XIL_INTERFACENAME RST.INT_RESET_PERIPHERAL, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of int_RESET_TIMER : signal is "xilinx.com:signal:reset:1.0 RST.INT_RESET_TIMER RST";
  attribute X_INTERFACE_PARAMETER of int_RESET_TIMER : signal is "XIL_INTERFACENAME RST.INT_RESET_TIMER, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  ENGINE(0) <= reset_0_2;
  ICAP_0_csib <= prc_0_ICAP_csib;
  ICAP_0_i(31 downto 0) <= prc_0_ICAP_i(31 downto 0);
  ICAP_0_rdwrb <= prc_0_ICAP_rdwrb;
  SW_1(7 downto 0) <= SW(7 downto 0);
  THROTTLE_1 <= THROTTLE;
  UART_RX_1 <= UART_RX;
  btn_u_1 <= btn_u;
  cm1_ecu_wrapper_0_DOUT(31 downto 0) <= int_DOUT(31 downto 0);
  int_CORTEX_RESET(0) <= util_vector_logic_5_Res(0);
  int_DIN(31 downto 0) <= xlconcat_1_dout(31 downto 0);
  int_RESET_INTERCONNECT(0) <= proc_sys_reset_1_interconnect_aresetn(0);
  int_RESET_PERIPHERAL(0) <= proc_sys_reset_1_peripheral_aresetn(0);
  int_RESET_TIMER(0) <= proc_sys_reset_0_peripheral_aresetn(0);
  int_SYS_CLOCK <= clk_wiz_0_clk_out1;
  int_TIMER_CLOCK <= M04_ACLK_1;
  led(7 downto 0) <= xlconcat_2_dout(7 downto 0);
  prc_0_ICAP_o(31 downto 0) <= ICAP_0_o(31 downto 0);
  reset_0_2 <= reset_0;
  sys_clock_1 <= sys_clock;
  top_0_REC_ECU1 <= btn_d;
  top_0_REC_MCU <= btn_r;
  top_0_REC_THS <= btn_l;
  I2C_SCL <= 'Z';
  I2C_SDA_TX <= 'Z';
  UART_TX <= 'Z';
  int_CM_PRC_RESET <= 'Z';
  int_uart_rx_int <= 'Z';
axi_protocol_convert_0: component m1_for_arty_a7_axi_protocol_convert_0_0
     port map (
      aclk => clk_wiz_0_clk_out1,
      aresetn => proc_sys_reset_2_interconnect_aresetn(0),
      m_axi_araddr(31 downto 0) => axi_protocol_convert_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_protocol_convert_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_protocol_convert_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => axi_protocol_convert_0_M_AXI_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => axi_protocol_convert_0_M_AXI_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => axi_protocol_convert_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_protocol_convert_0_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_protocol_convert_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => axi_protocol_convert_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_aruser(3 downto 0) => NLW_axi_protocol_convert_0_m_axi_aruser_UNCONNECTED(3 downto 0),
      m_axi_arvalid => axi_protocol_convert_0_M_AXI_ARVALID,
      m_axi_rdata(31 downto 0) => axi_protocol_convert_0_M_AXI_RDATA(31 downto 0),
      m_axi_rlast => axi_protocol_convert_0_M_AXI_RLAST,
      m_axi_rready => axi_protocol_convert_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_protocol_convert_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_protocol_convert_0_M_AXI_RVALID,
      s_axi_araddr(31 downto 0) => prc_0_m_axi_mem_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => prc_0_m_axi_mem_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => prc_0_m_axi_mem_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => prc_0_m_axi_mem_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => prc_0_m_axi_mem_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => prc_0_m_axi_mem_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => prc_0_m_axi_mem_ARSIZE(2 downto 0),
      s_axi_aruser(3 downto 0) => prc_0_m_axi_mem_ARUSER(3 downto 0),
      s_axi_arvalid => prc_0_m_axi_mem_ARVALID,
      s_axi_rdata(31 downto 0) => prc_0_m_axi_mem_RDATA(31 downto 0),
      s_axi_rlast => prc_0_m_axi_mem_RLAST,
      s_axi_rready => prc_0_m_axi_mem_RREADY,
      s_axi_rresp(1 downto 0) => prc_0_m_axi_mem_RRESP(1 downto 0),
      s_axi_rvalid => prc_0_m_axi_mem_RVALID
    );
clk_wiz_0: component m1_for_arty_a7_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => M04_ACLK_1,
      locked => clk_wiz_0_locked,
      reset => reset_0_2
    );
ila_0: component m1_for_arty_a7_ila_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      probe0(0) => util_vector_logic_5_Res(0),
      probe1(0) => proc_sys_reset_1_interconnect_aresetn(0),
      probe2(0) => proc_sys_reset_1_peripheral_aresetn(0),
      probe3(0) => prc_0_vsm_vs_cortex_rm_reset,
      probe4(0) => util_vector_logic_3_Res(0),
      probe5(0) => util_vector_logic_1_Res(0),
      probe6(0) => reset_0_2
    );
prc_0: component m1_for_arty_a7_prc_0_0
     port map (
      cap_gnt => xlconstant_5_dout(0),
      cap_rel => xlconstant_6_dout(0),
      cap_req => NLW_prc_0_cap_req_UNCONNECTED,
      clk => clk_wiz_0_clk_out1,
      icap_clk => clk_wiz_0_clk_out1,
      icap_csib => prc_0_ICAP_csib,
      icap_i(31 downto 0) => prc_0_ICAP_o(31 downto 0),
      icap_o(31 downto 0) => prc_0_ICAP_i(31 downto 0),
      icap_rdwrb => prc_0_ICAP_rdwrb,
      icap_reset => proc_sys_reset_2_peripheral_reset(0),
      m_axi_mem_araddr(31 downto 0) => prc_0_m_axi_mem_ARADDR(31 downto 0),
      m_axi_mem_arburst(1 downto 0) => prc_0_m_axi_mem_ARBURST(1 downto 0),
      m_axi_mem_arcache(3 downto 0) => prc_0_m_axi_mem_ARCACHE(3 downto 0),
      m_axi_mem_arlen(7 downto 0) => prc_0_m_axi_mem_ARLEN(7 downto 0),
      m_axi_mem_arprot(2 downto 0) => prc_0_m_axi_mem_ARPROT(2 downto 0),
      m_axi_mem_arready => prc_0_m_axi_mem_ARREADY,
      m_axi_mem_arsize(2 downto 0) => prc_0_m_axi_mem_ARSIZE(2 downto 0),
      m_axi_mem_aruser(3 downto 0) => prc_0_m_axi_mem_ARUSER(3 downto 0),
      m_axi_mem_arvalid => prc_0_m_axi_mem_ARVALID,
      m_axi_mem_rdata(31 downto 0) => prc_0_m_axi_mem_RDATA(31 downto 0),
      m_axi_mem_rlast => prc_0_m_axi_mem_RLAST,
      m_axi_mem_rready => prc_0_m_axi_mem_RREADY,
      m_axi_mem_rresp(1 downto 0) => prc_0_m_axi_mem_RRESP(1 downto 0),
      m_axi_mem_rvalid => prc_0_m_axi_mem_RVALID,
      reset => proc_sys_reset_2_peripheral_reset(0),
      vsm_vs_cortex_event_error => NLW_prc_0_vsm_vs_cortex_event_error_UNCONNECTED,
      vsm_vs_cortex_hw_triggers(3 downto 0) => xlconcat_0_dout(3 downto 0),
      vsm_vs_cortex_m_axis_status_tdata(31 downto 0) => NLW_prc_0_vsm_vs_cortex_m_axis_status_tdata_UNCONNECTED(31 downto 0),
      vsm_vs_cortex_m_axis_status_tvalid => NLW_prc_0_vsm_vs_cortex_m_axis_status_tvalid_UNCONNECTED,
      vsm_vs_cortex_rm_decouple => NLW_prc_0_vsm_vs_cortex_rm_decouple_UNCONNECTED,
      vsm_vs_cortex_rm_reset => prc_0_vsm_vs_cortex_rm_reset,
      vsm_vs_cortex_rm_shutdown_ack => xlconstant_5_dout(0),
      vsm_vs_cortex_rm_shutdown_req => NLW_prc_0_vsm_vs_cortex_rm_shutdown_req_UNCONNECTED
    );
proc_sys_reset_0: component m1_for_arty_a7_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => util_vector_logic_1_Res(0),
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
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
      ext_reset_in => util_vector_logic_1_Res(0),
      interconnect_aresetn(0) => proc_sys_reset_1_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => proc_sys_reset_1_mb_reset,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
proc_sys_reset_2: component m1_for_arty_a7_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_2_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => util_vector_logic_0_Res(0),
      interconnect_aresetn(0) => proc_sys_reset_2_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_2_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_proc_sys_reset_2_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => proc_sys_reset_2_peripheral_reset(0),
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
      S_AXI_HP0_ACLK => clk_wiz_0_clk_out1,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_protocol_convert_0_M_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_protocol_convert_0_M_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_protocol_convert_0_M_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => axi_protocol_convert_0_M_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_protocol_convert_0_M_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_protocol_convert_0_M_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_protocol_convert_0_M_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_protocol_convert_0_M_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_protocol_convert_0_M_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_protocol_convert_0_M_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP0_AWBURST(1 downto 0) => B"01",
      S_AXI_HP0_AWCACHE(3 downto 0) => B"0011",
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => B"0000",
      S_AXI_HP0_AWLOCK(1 downto 0) => B"00",
      S_AXI_HP0_AWPROT(2 downto 0) => B"000",
      S_AXI_HP0_AWQOS(3 downto 0) => B"0000",
      S_AXI_HP0_AWREADY => NLW_processing_system7_0_S_AXI_HP0_AWREADY_UNCONNECTED,
      S_AXI_HP0_AWSIZE(2 downto 0) => B"010",
      S_AXI_HP0_AWVALID => '0',
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => '0',
      S_AXI_HP0_BRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_BVALID => NLW_processing_system7_0_S_AXI_HP0_BVALID_UNCONNECTED,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(31 downto 0) => axi_protocol_convert_0_M_AXI_RDATA(31 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => axi_protocol_convert_0_M_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_protocol_convert_0_M_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_protocol_convert_0_M_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_protocol_convert_0_M_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => '0',
      S_AXI_HP0_WREADY => NLW_processing_system7_0_S_AXI_HP0_WREADY_UNCONNECTED,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(3 downto 0) => B"1111",
      S_AXI_HP0_WVALID => '0',
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
util_vector_logic_0: component m1_for_arty_a7_util_vector_logic_0_0
     port map (
      Op1(0) => reset_0_2,
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component m1_for_arty_a7_util_vector_logic_1_0
     port map (
      Op1(0) => prc_0_vsm_vs_cortex_rm_reset,
      Op2(0) => util_vector_logic_3_Res(0),
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component m1_for_arty_a7_util_vector_logic_2_2
     port map (
      Op1(0) => UART_RX_1,
      Res(0) => util_vector_logic_2_Res(0)
    );
util_vector_logic_3: component m1_for_arty_a7_util_vector_logic_0_1
     port map (
      Op1(0) => btn_u_1,
      Res(0) => util_vector_logic_3_Res(0)
    );
util_vector_logic_4: component m1_for_arty_a7_util_vector_logic_2_3
     port map (
      Op1(0) => NLW_util_vector_logic_4_Op1_UNCONNECTED(0),
      Res(0) => util_vector_logic_4_Res(0)
    );
util_vector_logic_5: component m1_for_arty_a7_util_vector_logic_5_0
     port map (
      Op1(0) => proc_sys_reset_1_mb_reset,
      Res(0) => util_vector_logic_5_Res(0)
    );
xlconcat_0: component m1_for_arty_a7_xlconcat_0_1
     port map (
      In0(0) => top_0_REC_ECU1,
      In1(0) => top_0_REC_THS,
      In2(0) => top_0_REC_MCU,
      In3(0) => xlconstant_2_dout(0),
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
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
      In0(0) => top_0_REC_ECU1,
      In1(0) => top_0_REC_THS,
      In2(0) => top_0_REC_MCU,
      In3(0) => xlslice_1_Dout(0),
      In4(0) => util_vector_logic_2_Res(0),
      In5(0) => util_vector_logic_4_Res(0),
      In6(0) => reset_0_2,
      In7(0) => THROTTLE_1,
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
xlconstant_5: component m1_for_arty_a7_xlconstant_5_0
     port map (
      dout(0) => xlconstant_5_dout(0)
    );
xlconstant_6: component m1_for_arty_a7_xlconstant_6_0
     port map (
      dout(0) => xlconstant_6_dout(0)
    );
xlslice_1: component m1_for_arty_a7_xlslice_0_1
     port map (
      Din(31 downto 0) => cm1_ecu_wrapper_0_DOUT(31 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
end STRUCTURE;
