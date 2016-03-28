#export PATH=$PATH:/usr/x86_64-pc-linux-gnu/arm-linux-gnueabihf/gcc-bin/4.8.5/
#export CROSS_COMPILE=arm-linux-gnueabihf-
#export ARCH=arm

PWD=$(shell pwd)

obj-m += gslx680_ts.o

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules


clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

install: all
