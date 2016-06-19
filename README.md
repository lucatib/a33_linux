a33_linux
=========

Linux kernel 3.4 for Allwinner A33

emerge crossdev
crossdev --kernel =3.18 --libc =2.20-r2 --binutils =2.24-r3 --gcc =4.8.5 \
         --genv 'USE="-fortran -mudflap -nls -openmp multilib" EXTRA_ECONF="--with-cpu=cortex-a8 --with-float=hard"' -t arm-linux-gnueabihf
