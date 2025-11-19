#
OPT += --release=fast
#OPT += --release=small
# Fail compilation
#OPT += --release=safe

include ../makefile.common.header.mk

ifeq ($(OS),Windows_NT)
  # Nothing
else
	# Specify libraylib.so.550 path for Linux
	LOCAL_LIB_PATH=LD_LIBRARY_PATH=../../../../src/libc/raylib/linux/lib
endif

include ../makefile.common.mk
