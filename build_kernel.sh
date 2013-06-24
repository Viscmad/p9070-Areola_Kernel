#!/bin/bash
###############################################################################
#
#                           Kernel Build Script 
#
###############################################################################
# 2011-10-24 effectivesky : modified
# 2010-12-29 allydrop     : created
###############################################################################
export USE_CCACHE=1
USE_CCACHE=1
make clean
make mrproper
##############################################################################
# set toolchain
##############################################################################
export ARCH=arm
export CROSS_COMPILE=~/android/cyanogenmod/jellybean/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi-

##############################################################################
# make zImage
##############################################################################
mkdir -p ./obj/KERNEL_OBJ/
make O=./obj/KERNEL_OBJ/ Areola_presto_defconfig
make -j4 O=./obj/KERNEL_OBJ/

##############################################################################
# Copy Kernel Image
##############################################################################
cp -f ./obj/KERNEL_OBJ/arch/arm/boot/zImage .

