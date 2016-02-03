#!/bin/bash

#export PATH=$PATH:/usr/src/android/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin
#export CROSS_COMPILE=arm-linux-androideabi-
#export PATH=$PATH:/usr/src/android/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin


#emerge crossdev
#crossdev --kernel =3.18 --libc =2.20-r2 --binutils =2.24-r3 --gcc =4.8.5 \
         --genv 'USE="-fortran -mudflap -nls -openmp multilib" EXTRA_ECONF="--with-cpu=cortex-a8 --with-float=hard"' -t arm-linux-gnueabihf
export PATH=$PATH:/usr/x86_64-pc-linux-gnu/arm-linux-gnueabihf/gcc-bin/4.8.5/
export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm

#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- sun8iw7p1smp_android_defconfig
#cd /usr/src/android/kernel/allwinner/a33
make -j10 zImage
