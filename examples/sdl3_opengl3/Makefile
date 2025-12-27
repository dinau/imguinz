#
OPT += --release=fast
#OPT += --release=small
#OPT += --release=safe

include ../makefile.common.header.mk


#AFTER_BUILD_CMD = strip $(TARGET_EXE)


include ../makefile.common.mk

gensdl3:
	(cd ../../libs/cimgui/generator; ./generator.bat sdl3; cp output/cimgui_impl.h ../../ )
