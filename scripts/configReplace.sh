#!/bin/bash

if [ -d "$(pwd)/../.git/" ]; then
   if [ ! -f "$(pwd)/sanders_defconfig" ]; then
      git restore sanders_defconfig
   fi
else
   echo "- This device tree was not cloned properly, clone again!"
   exit 1
fi

if [ -d "$(pwd)/../../../../kernel/motorola/sanders" ]; then
   cp -r -f $(pwd)/sanders_defconfig $(pwd)/../../../../kernel/motorola/sanders/arch/arm64/configs/sanders_defconfig
   git restore sanders_defconfig
else
   git clone git://github.com/ArrowOS-Devices/android_kernel_motorola_sanders.git -b arrow-11.0 --depth 1 "$(pwd)/../../../../kernel/motorola/sanders"
   cp -r -f $(pwd)/sanders_defconfig $(pwd)/../../../../kernel/motorola/sanders/arch/arm64/configs/sanders_defconfig
   git restore sanders_defconfig
fi
