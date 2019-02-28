# Copy the generated Bitstreams from the Partial Reconfiguration Project into the Bitstreams folder
file copy -force -- ./../top_integration_pr/m1_for_arty_a7.runs/impl_1/cortex_i_cortex_ecu_partial.bit ./Bitstreams/.
file copy -force -- ./../top_integration_pr/m1_for_arty_a7.runs/child_0_impl_1/cortex_i_cortex_throttle_partial.bit ./Bitstreams/.
file copy -force -- ./../top_integration_pr/m1_for_arty_a7.runs/child_0_impl_1/glue_top.bit ./Bitstreams/.

# Create a .bin from the .bit files for the SD Card
write_cfgmem -format BIN -interface SMAPx32 -disablebitswap -loadbit "up 0 ./Bitstreams/cortex_i_cortex_ecu_partial.bit" ./Bitstreams/ecu.bin -force

write_cfgmem -format BIN -interface SMAPx32  -disablebitswap -loadbit "up 0 ./Bitstreams/cortex_i_cortex_throttle_partial.bit" ./Bitstreams/trl.bin -force
#write_cfgmem -format BIN -disablebitswap -loadbit "up 0 ./Bitstreams/b_led.bit" ./Bitstreams/b_led.bin -force


