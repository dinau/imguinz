# Use zig-0.12.0
# by dinau (2024/06)
#
TARGET = $(notdir $(CURDIR))
#
OPT += --release=fast
#OPT += --release=small
# Fail compilation
#OPT += --release=safe

all:
	zig build $(OPT)

run: all
	(cd zig-out/bin; ./$(TARGET).exe)
	@-cp zig-out/bin/imgui.ini .

gen:
	nim ../utils/genImPlotFuncs.nims

INCS +=	-I../../libs/cimplot/implot/ -I../../libs/cimgui/imgui/
INCS += -I"C:/Program Files/Windows Kits/10/Include/10.0.19041.0/ucrt"
INCS += -I"C:/Program Files/Windows Kits/10/Lib/10.0.19041.0/ucrt/x86"
INCS += -I"C:/Program Files/Windows Kits/10/Lib/10.0.19041.0/um/x86"
INCS += -I"C:/Program Files/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/Lib/x86"
INCS += -I"C:/Program Files/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/include"

trans:
	zig translate-c test.c $(INCS) > test.zig

cleanall:
	rm -fr zig-out
	rm -fr zig-cache
	rm -fr .zig-cache
