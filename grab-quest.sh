#!/bin/bash

set -e

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

rm -rf ./mnt
mkdir ./mnt
mount edison-image-quest.hddimg ./mnt
cp ../quest/kernel/quest ./mnt/
sleep 1
umount ./mnt
rmdir ./mnt
