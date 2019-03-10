###########################################3
#
#	Copy the generated bistreams into the ./Bitsreams folder for 
#	further processing.
#	Then convert to binary format to make them compatible with the SD-Card.
#	!!! 
#	Relative paths are used, place of script execution is therefore important.
#	!!!
#
###########################################3


# cortex_i_cortex_engine_partial.bit
file copy -force -- ./../top_integration_pr/m1_for_arty_a7.runs/child_1_impl_1/cortex_i_cortex_engine_partial.bit ./Bitstreams/.

# cortex_i_cortex_ecu_partial.bit
file copy -force -- ./../top_integration_pr/m1_for_arty_a7.runs/impl_1/cortex_i_cortex_ecu_partial.bit ./Bitstreams/.

# cortex_i_cortex_throttle_partial.bit
file copy -force -- ./../top_integration_pr/m1_for_arty_a7.runs/child_0_impl_1/cortex_i_cortex_throttle_partial.bit ./Bitstreams/.

# cortex_i_greybox_partial.bit
file copy -force -- ./../top_integration_pr/m1_for_arty_a7.runs/child_2_impl_1/cortex_i_greybox_partial.bit ./Bitstreams/.

# top_glue.bit (contains greybox)
file copy -force -- ./../top_integration_pr/m1_for_arty_a7.runs/child_2_impl_1/glue_top.bit ./Bitstreams/.

###########################################3
#
#	Create the binary files for the SD-Card
#
###########################################3

# Create a .bin from the .bit files for the SD Card
write_cfgmem -format BIN -interface SMAPx32 -disablebitswap -loadbit "up 0 ./Bitstreams/cortex_i_cortex_ecu_partial.bit" ./Bitstreams/ecu.bin -force

write_cfgmem -format BIN -interface SMAPx32  -disablebitswap -loadbit "up 0 ./Bitstreams/cortex_i_cortex_throttle_partial.bit" ./Bitstreams/trl.bin -force

write_cfgmem -format BIN -interface SMAPx32  -disablebitswap -loadbit "up 0 ./Bitstreams/cortex_i_cortex_engine_partial.bit" ./Bitstreams/eng.bin -force

write_cfgmem -format BIN -interface SMAPx32  -disablebitswap -loadbit "up 0 ./Bitstreams/cortex_i_greybox_partial.bit" ./Bitstreams/blk.bin -force
