#!/bin/bash

if [ $# -ne "2" ];
then
    echo "usage $0 <path to binary folder> <binary elf name>"
    exit
fi


# source the pintos paths needed
. ~/setup-shells/pintos-setup.sh 
cd userprog
make
cd build
pintos-mkdisk filesys.dsk --filesys-size=2
pintos -f -q
pintos -p $1/$2 -a $2.exe -- -q
pintos -q ls

# you can also run my_userprog_test all in one go like this
# pintos --filesys-size=2 -p ../../examples/my_userprog_test -a my_test.exe -- -f -q run 'my_test.exe'
