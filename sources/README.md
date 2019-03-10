# How to replace bitstreams
It should suffice to replace the hex files in the `ip\_repo`, but sometimes it does not, so always update the files in the `cores` folder too!

- There is a shell script called `ecuUpdateHex.sh` in the folder `./sources/Hexfiles`.
- These scripts are now also available as .tcl scripts to make them more portable. 
- Replace the `bram_a7.hex` files with the version of the hexfile you want and keep the name bram\_a7.hex for it
- Run the scripts `ecuUpdateHex.sh`, `engineUpdateHex.sh` and `throttleUpdateHex.sh`
- Vivado should report that Ip-Repos are out of date in the top\_integration\_pr project
- Upgrade the IPs
- Vivado should now generate new output products, if it doesn't, reset all core packages of the partition definitions manually
- Rerun synthesis and bitstream implementation
- After successfull generation, use a TCL Console (e.g. from vivado) and navigate to the `./sources` folder, there shoudl be a tcl script called `convert\_bitstreams.tcl`
- Execute it by running `source convert\_bitstreams.tcl`, it copies all partial bitstreams and a top bitstream to the folder `./sources/Bitstreams/`
- Launch the vivado SDK 
- If needed, recompile the bootloader and the TestApp
- In the top menu go to `Xilinx -> Create Boot Image`
- Select `Import from existing bif file` for the radio buttons, browse for the file under `./sources/output.bif`
- Check if all the paths are correct, first entry should link to the `zynq\_fsbl.elf`, second entry should link to the `./sources/Bitstreams/top\_glue.bit`, third to the `TestApp.elf`
- press Create Image Button
- A `BOOT.bin` is created under `./sources/BOOT.bin`
- Copy the binary bitstreams `ecu.bin`, `eng.bin`, `thr.bin` and `blk.bin` on the SD-Card
- Copy BOOT.bin on the SdCard
- Done

# How To generate SD Card Image

1.) `vivado -mode tcl`

2.) `source ./bitstream_convert.tcl`

3.) New .bin files are now in ./Bitstreams

4.) Check size (in bytes) of .bin partial bitstreams and convert to words (#Bytes/4 = #Words)

5.) Update address sizes in Partial Reconfiguration Controller (Block Design - size in bytes)  and SDK (defines in TestApp.c - size in words))

6.) Update Bootloader zynq\_fsbl in SDK to create new BOOT.bin

# Common Stuff

The `.bif` file represents the staging file for the zynq\_fsbl (aka Bootloader - BOOT.bin).
When updating the Bootloader one can either create one from scratch or just use the existing `.bif` template.

# Common Errors

One can debug the read process of the Sd-Card with the Vivado SDK. 
Just program a new .elf file and set SDK to Debug mode.
UART of the processing system is also working and may output helpful information.

## Error 4 - Can't find file (via UART)

- Reformat the SD-Card, choose the slow option that sets everything zero.
- Use a smaller SD-Card

## Use short file names for everything on the SdCard

- Xilinx trusts you with following the 8+3 rule, e.g. only file names with <= 8 characters and extensions with <= 3 characters are permitted: `12345678.123` is legal, `123456789.123` is not.
- To ensure that this REALLY works just use 3-5 letters for the name and 3 for the extension.


