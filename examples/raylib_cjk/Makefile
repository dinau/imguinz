#
OPT += --release=fast
#OPT += --release=small
#OPT += --release=safe

COPY_IMGUI_INI = false

ifeq ($(OS),Windows_NT)
  # Nothing
else
	# Specify libraylib.so.550 path for Linux
	LOCAL_LIB_PATH=LD_LIBRARY_PATH=../../../../src/libc/raylib/linux/lib
endif

include ../makefile.common.header.mk


include ../makefile.common.mk
