ARCH=X86

ifeq ($(ARCH),X86)
CC=gcc
CFLAGS=-Wall -std=gnu99
endif
ifeq ($(ARCH),MIPS)
CC=/opt/toolchains/uclibc-crosstools-gcc-4.4.2-1/usr/bin/mips-linux-gcc
CFLAGS=-Wall -std=gnu99 -D__BIG_ENDIAN__
endif
LOADLIBES=-lm

sauger: sauger.c aes.c md5.c json.c miio.c
