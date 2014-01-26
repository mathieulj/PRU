CROSS_COMPILE?=arm-arago-linux-gnueabi-
BUILD_DIR?=BUILD/
LIBDIR_APP_LOADER?=/opt/am335x_pru_package/pru_sw/app_loader/lib
INCDIR_APP_LOADER?=/opt/am335x_pru_package/pru_sw/app_loader/include

CFLAGS+= -Wall -I$(INCDIR_APP_LOADER) -D__DEBUG -O2 -mtune=cortex-a8 -march=armv7-a
LDFLAGS+=-L$(LIBDIR_APP_LOADER) -lprussdrv -lpthread


all: Build/prucode.bin Build/prucode_bin.h

Build/prucode_bin.h: prucode.p prucode.hp
	pasm -c prucode.p Build/prucode

Build/prucode.bin: prucode.p prucode.hp
	pasm -b prucode.p Build/prucode
	
Build/prucode: mytest.c
	$(CROSS_COMPILE)gcc $(CFLAGS) -o Build/prucode mytest.c $(LDFLAGS)
