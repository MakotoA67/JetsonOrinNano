#!/bin/bash
# Copy the kernel image on NVIDIA Jetson Developer Kit
# Copyright (c) 2016-21 Jetsonhacks 
# MIT License

cd ${SOURCE_TARGET}kernel/kernel-${KERNEL_RELEASE}
# On the stock Jetsoninstall, there is no zImage in the boot directory
# So we just copy the Image file over
# If the zImage is needed, you must either
# $ make zImage
# or
# $ make
# Both of these commands must be executed in /usr/src/kernel/kernel-4.9
# sudo cp arch/arm64/boot/zImage /boot/zImage
# Note that if you are compiling on an external device, like a SSD, you should probably
# copy this over to the internal eMMC if that is where the Jetson boots
sudo cp arch/arm64/boot/dts/nvidia/tegra234-p3767-0003-p3768-0000-a0.dtb /boot/dtb/kernel_tegra234-p3767-0003-p3768-0000-a0.dtb
sudo cp arch/arm64/boot/dts/nvidia/tegra234-p3767-camera-p3768-tc358743.dtbo /boot/
