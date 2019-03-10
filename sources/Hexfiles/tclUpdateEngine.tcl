set core "engine"

# Update the core development base
set corePath "./../../cores/cm1_${core}/m1_for_arty_a7.srcs/sources_1/imports/${core}"
#coreFullPath="$(readlink -f ${corePath})"

# Update the ip repository of the core (should suffice) 
set ipPath "./../../cores/ip_repo/cm1_${core}_pkg/src"
#ipFullPath="$(readlink -f ${ipPath})"

# Core Development Base
file delete -force "${corePath}/bram_a7.hex"
file copy "./${core}/bram_a7.hex" $corePath

#echo "CORE UPDATE: Copied \n\r./${core}/bram_a7.hex to \n\r${coreFullPath}\n\r"

# IP Repo
file delete -force "${ipPath}/bram_a7.hex"
file copy "./${core}/bram_a7.hex" $ipPath

#echo "IP REPO UPDATE: Copied \n\r./${core}/bram_a7.hex to \n\r${ipFullPath}\n\r"
