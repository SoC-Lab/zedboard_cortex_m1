# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DURATION_RESET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_COUNTER_VALUE" -parent ${Page_0}


}

proc update_PARAM_VALUE.DURATION_RESET { PARAM_VALUE.DURATION_RESET } {
	# Procedure called to update DURATION_RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DURATION_RESET { PARAM_VALUE.DURATION_RESET } {
	# Procedure called to validate DURATION_RESET
	return true
}

proc update_PARAM_VALUE.MAX_COUNTER_VALUE { PARAM_VALUE.MAX_COUNTER_VALUE } {
	# Procedure called to update MAX_COUNTER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_COUNTER_VALUE { PARAM_VALUE.MAX_COUNTER_VALUE } {
	# Procedure called to validate MAX_COUNTER_VALUE
	return true
}


proc update_MODELPARAM_VALUE.MAX_COUNTER_VALUE { MODELPARAM_VALUE.MAX_COUNTER_VALUE PARAM_VALUE.MAX_COUNTER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_COUNTER_VALUE}] ${MODELPARAM_VALUE.MAX_COUNTER_VALUE}
}

proc update_MODELPARAM_VALUE.DURATION_RESET { MODELPARAM_VALUE.DURATION_RESET PARAM_VALUE.DURATION_RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DURATION_RESET}] ${MODELPARAM_VALUE.DURATION_RESET}
}

