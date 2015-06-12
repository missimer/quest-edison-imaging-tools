#!/bin/bash

cd u-boot-envs; ./create-edison-quest.sh; cd ..
sudo ./grab-quest.sh && ./grab-uboot.sh && sudo ./flashall.sh --quest
