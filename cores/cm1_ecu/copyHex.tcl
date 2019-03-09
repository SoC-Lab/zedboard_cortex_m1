# -----------------------------------------------------------------------------
#
#
#	FOR PROJECT CM1_THROTTLE
#	Update the hex file without looking stupid about mixing it up.
#	Constantin Schieber
#
#
# -----------------------------------------------------------------------------

# Set Core
set coreName "/cm1_ecu"

# Set path to the vivado project
set projectPath "/home/consti/2018WS/Lab_SoC/Abgabe/zedboard_cortex_m1/cores${coreName}"

# Set path to new hex file
set newHexFile	"/home/consti/2018WS/Lab_SoC/Abgabe/zedboard_cortex_m1/sources/Hexfiles/ecu/bram_a7.hex"

# Set path to hex file that should be replaced
set oldHexFile "${projectPath}/m1_for_arty_a7.srcs/sources_1/imports/ecu/bram_a7.hex"

# Open the project
open_project "${projectPath}/m1_for_arty_a7.xpr"

# Remove old hex file from project 
remove_files -quiet $oldHexFile 

# Remomve old hex file from disk
file delete -force $oldHexFile

# Import the new hex file
import_files -norecurse -force  $newHexFile 

# Set Filetype to memory initialization file, oldFile is the new File
set_property file_type {Memory Initialization Files} [get_files ${oldHexFile}]

close_project
