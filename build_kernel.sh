
#!/bin/bash

mkdir out

export ARCH=arm64

export CROSS_COMPILE=$(pwd)/../PLATFORM/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

make -C $(pwd) O=$(pwd)/out KCFLAGS=-mno-android samsung/a02q/sdm450_sec_a02q_eur_opn_defconfig
make -j16 -C $(pwd) O=$(pwd)/out KCFLAGS=-mno-android
 
cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image


