#!/bin/sh

# The core that is updated
core="ecu"

# Update the core development base
corePath="./../../cores/cm1_${core}/m1_for_arty_a7.srcs/sources_1/imports/${core}"
coreFullPath="$(readlink -f ${corePath})"

# Update the ip repository of the core (should suffice) 
ipPath="./../../cores/ip_repo/cm1_${core}_pkg/src"
ipFullPath="$(readlink -f ${ipPath})"

# Core Development Base
rm -f "${corePath}/bram_a7.hex" 
cp "./${core}/bram_a7.hex" $corePath

echo "CORE UPDATE: Copied \n\r./${core}/bram_a7.hex to \n\r${coreFullPath}\n\r"

# IP Repo
rm -f "${ipPath}/bram_a7.hex" 
cp "./${core}/bram_a7.hex" $ipPath

echo "IP REPO UPDATE: Copied \n\r./${core}/bram_a7.hex to \n\r${ipFullPath}\n\r"
