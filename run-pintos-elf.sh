#!/bin/bash

if [ $# -ne "2" ];
then
    echo "usage $0 <path to binary folder> <binary elf name>"
    exit
fi


# source the pintos paths needed
. ~/setup-shells/pintos-setup.sh 
cd vm
make
cd build
pintos --filesys-size=2 --swap-size=4 -p "$1/$2" -a "$2.bin" -- -f -q run "$2.bin"
