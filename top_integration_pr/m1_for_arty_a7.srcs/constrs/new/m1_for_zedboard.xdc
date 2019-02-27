# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ----------------------------------------------------------------------------

set_property PACKAGE_PIN T22 [get_ports {led[0]}]
set_property PACKAGE_PIN T21 [get_ports {led[1]}]
set_property PACKAGE_PIN U22 [get_ports {led[2]}]
set_property PACKAGE_PIN U21 [get_ports {led[3]}]
set_property PACKAGE_PIN V22 [get_ports {led[4]}]
set_property PACKAGE_PIN W22 [get_ports {led[5]}]
set_property PACKAGE_PIN U19 [get_ports {led[6]}]
set_property PACKAGE_PIN U14 [get_ports {led[7]}]

set_property PACKAGE_PIN F22 [get_ports {SW[0]}]
set_property PACKAGE_PIN G22 [get_ports {SW[1]}]
set_property PACKAGE_PIN H22 [get_ports {SW[2]}]
set_property PACKAGE_PIN F21 [get_ports {SW[3]}]
set_property PACKAGE_PIN H19 [get_ports {SW[4]}]
set_property PACKAGE_PIN H18 [get_ports {SW[5]}]
set_property PACKAGE_PIN H17 [get_ports {SW[6]}]
set_property PACKAGE_PIN M15 [get_ports {SW[7]}]

set_property PACKAGE_PIN H15 [get_ports THROTTLE]
set_property PACKAGE_PIN R15 [get_ports {ENGINE[0]}]
set_property PACKAGE_PIN K15 [get_ports UART_RX]
set_property PACKAGE_PIN J15 [get_ports UART_TX]
set_property PACKAGE_PIN W12 [get_ports I2C_SDA_TX]
set_property PACKAGE_PIN W11 [get_ports I2C_SDA_RX]
set_property PACKAGE_PIN V10 [get_ports I2C_SCL]


set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports THROTTLE]
set_property IOSTANDARD LVCMOS33 [get_ports {ENGINE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports UART_RX]
set_property IOSTANDARD LVCMOS33 [get_ports UART_TX]
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SDA_TX]
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SDA_RX]
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SCL]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[7]}]





# --------------------------------------------------
# Configuration pins
# --------------------------------------------------
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]


set_property IOSTANDARD LVCMOS33 [get_ports reset_0]
set_property PACKAGE_PIN P16 [get_ports reset_0]

# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ----------------------------------------------------------------------------
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
set_property PACKAGE_PIN Y9 [get_ports sys_clock]

create_clock -period 10.000 -name sys_clock -waveform {0.000 5.000} [get_ports sys_clock]

create_pblock pblock_cortex_i
add_cells_to_pblock [get_pblocks pblock_cortex_i] [get_cells -quiet [list cortex_i]]
resize_pblock [get_pblocks pblock_cortex_i] -add {SLICE_X50Y0:SLICE_X113Y49}
resize_pblock [get_pblocks pblock_cortex_i] -add {DSP48_X3Y0:DSP48_X4Y19}
resize_pblock [get_pblocks pblock_cortex_i] -add {RAMB18_X3Y0:RAMB18_X5Y19}
resize_pblock [get_pblocks pblock_cortex_i] -add {RAMB36_X3Y0:RAMB36_X5Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_cortex_i]
