#!/bin/bash

cp ../u-boot/u-boot.bin u-boot-quest.bin.tmp
head -c 4096 /dev/zero > tmp.zeros
cat tmp.zeros u-boot-quest.bin.tmp > u-boot-quest.bin
truncate -s 240k u-boot-quest.bin
rm -rf tmp.zeros u-boot-quest.bin.tmp
