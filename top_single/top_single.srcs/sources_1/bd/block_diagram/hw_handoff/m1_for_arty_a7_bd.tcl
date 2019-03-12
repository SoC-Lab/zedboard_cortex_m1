
################################################################
# This is a generated script based on design: m1_for_arty_a7
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source m1_for_arty_a7_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# invert_singleValue, invert_singleValue, reset_impulse, top

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name m1_for_arty_a7

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ENGINE [ create_bd_port -dir O -from 0 -to 0 ENGINE ]
  set I2C_SCL [ create_bd_port -dir O I2C_SCL ]
  set I2C_SDA_RX [ create_bd_port -dir I I2C_SDA_RX ]
  set I2C_SDA_TX [ create_bd_port -dir O I2C_SDA_TX ]
  set SW [ create_bd_port -dir I -from 7 -to 0 SW ]
  set THROTTLE [ create_bd_port -dir I THROTTLE ]
  set UART_RX [ create_bd_port -dir I UART_RX ]
  set UART_TX [ create_bd_port -dir O UART_TX ]
  set led [ create_bd_port -dir O -from 7 -to 0 led ]
  set reset_0 [ create_bd_port -dir I -type rst reset_0 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset_0
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {130.958} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_JITTER {218.754} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {8.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {125} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.USE_RESET {true} \
 ] $clk_wiz_0

  # Create instance: cm1_engine_wrapper_0, and set properties
  set cm1_engine_wrapper_0 [ create_bd_cell -type ip -vlnv user.org:user:cm1_engine_wrapper:1.0 cm1_engine_wrapper_0 ]

  # Create instance: invert_singleValue_1, and set properties
  set block_name invert_singleValue
  set block_cell_name invert_singleValue_1
  if { [catch {set invert_singleValue_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $invert_singleValue_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: invert_singleValue_2, and set properties
  set block_name invert_singleValue
  set block_cell_name invert_singleValue_2
  if { [catch {set invert_singleValue_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $invert_singleValue_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_4, and set properties
  set proc_sys_reset_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_4 ]
  set_property -dict [ list \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $proc_sys_reset_4

  # Create instance: proc_sys_reset_5, and set properties
  set proc_sys_reset_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_5 ]
  set_property -dict [ list \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $proc_sys_reset_5

  # Create instance: reset_impulse_1, and set properties
  set block_name reset_impulse
  set block_cell_name reset_impulse_1
  if { [catch {set reset_impulse_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reset_impulse_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: top_0, and set properties
  set block_name top
  set block_cell_name top_0
  if { [catch {set top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {8} \
   CONFIG.IN1_WIDTH {8} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {15} \
   CONFIG.NUM_PORTS {4} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_2

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {15} \
 ] $xlconstant_3

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_2

  # Create port connections
  connect_bd_net -net I2C_SDA_RX_1 [get_bd_ports I2C_SDA_RX] [get_bd_pins cm1_engine_wrapper_0/I2C_SDA_RX]
  connect_bd_net -net M04_ACLK_1 [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins cm1_engine_wrapper_0/TIMER_CLOCK] [get_bd_pins proc_sys_reset_4/slowest_sync_clk] [get_bd_pins reset_impulse_1/clk]
  connect_bd_net -net SW_1 [get_bd_ports SW] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net THROTTLE_1 [get_bd_ports THROTTLE] [get_bd_pins xlconcat_1/In2]
  connect_bd_net -net UART_RX_1 [get_bd_ports UART_RX] [get_bd_pins invert_singleValue_1/i_signal] [get_bd_pins top_0/UART_RX_EXT]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins cm1_engine_wrapper_0/SYS_CLOCK] [get_bd_pins proc_sys_reset_5/slowest_sync_clk] [get_bd_pins top_0/CLK]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_4/dcm_locked] [get_bd_pins proc_sys_reset_5/dcm_locked]
  connect_bd_net -net cm1_engine_wrapper_0_DOUT [get_bd_pins cm1_engine_wrapper_0/DOUT] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net cm1_engine_wrapper_0_UART_TX [get_bd_pins cm1_engine_wrapper_0/UART_TX] [get_bd_pins top_0/UART_TX_INT]
  connect_bd_net -net invert_singleValue_1_o_signal [get_bd_pins invert_singleValue_1/o_signal] [get_bd_pins xlconcat_2/In7]
  connect_bd_net -net invert_singleValue_2_o_signal [get_bd_pins invert_singleValue_2/o_signal] [get_bd_pins xlconcat_2/In6]
  connect_bd_net -net invert_singleValue_5_o_signal [get_bd_pins proc_sys_reset_4/ext_reset_in] [get_bd_pins proc_sys_reset_5/ext_reset_in] [get_bd_pins reset_impulse_1/reset_out]
  connect_bd_net -net proc_sys_reset_4_peripheral_aresetn [get_bd_pins cm1_engine_wrapper_0/RESET_TIMER] [get_bd_pins proc_sys_reset_4/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_5_interconnect_aresetn [get_bd_pins cm1_engine_wrapper_0/RESET_INTERCONNECT] [get_bd_pins proc_sys_reset_5/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_5_mb_reset [get_bd_pins cm1_engine_wrapper_0/CORTEX_RESET] [get_bd_pins proc_sys_reset_5/mb_reset]
  connect_bd_net -net proc_sys_reset_5_peripheral_aresetn [get_bd_pins cm1_engine_wrapper_0/RESET_PERIPHERAL] [get_bd_pins proc_sys_reset_5/peripheral_aresetn]
  connect_bd_net -net reset_0_2 [get_bd_ports reset_0] [get_bd_pins clk_wiz_0/reset] [get_bd_pins reset_impulse_1/rst] [get_bd_pins top_0/RST]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net top_0_REC_ECU [get_bd_pins top_0/REC_ECU] [get_bd_pins xlconcat_2/In3]
  connect_bd_net -net top_0_REC_MCU [get_bd_pins reset_impulse_1/reset_in] [get_bd_pins top_0/REC_MCU] [get_bd_pins xlconcat_2/In5]
  connect_bd_net -net top_0_REC_THS [get_bd_pins top_0/REC_THS] [get_bd_pins xlconcat_2/In4]
  connect_bd_net -net top_0_UART_RX_INT [get_bd_pins cm1_engine_wrapper_0/UART_RX] [get_bd_pins top_0/UART_RX_INT]
  connect_bd_net -net top_0_UART_TX_EXT [get_bd_ports UART_TX] [get_bd_pins invert_singleValue_2/i_signal] [get_bd_pins top_0/UART_TX_EXT]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins cm1_engine_wrapper_0/DIN] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_ports led] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins xlconcat_1/In0] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins top_0/EN] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins xlconcat_1/In3] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports ENGINE] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins xlconcat_2/In2] [get_bd_pins xlslice_2/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


