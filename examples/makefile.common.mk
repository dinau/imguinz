# Use zig-0.14.0
# Use zig-0.12.0
# by dinau (2024/06)

#
#OPT += --release=fast
#OPT += --release=small
# Fail compilation
#OPT += --release=safe

all:
	zig build $(OPT)
	@-$(AFTER_BUILD_CMD)

.PHONY: run gen cleanall cleanexe trans

run: all
	(cd $(ZIG_BIN_DIR); ./$(TARGET)$(EXE))
	cp $(ZIG_BIN_DIR)/imgui.ini .

gen:
	nim ../utils/genImPlotFuncs.nims

cleanall:
	@-rm -fr zig-out
	@-rm -fr zig-cache
	@-rm -fr .zig-cache

cleanexe:
	@-rm -fr zig-out


INCS +=	-I../../libs/cimplot/implot/ -I../../libs/cimgui/imgui/
INCS += -I"C:/Program Files/Windows Kits/10/Include/10.0.19041.0/ucrt"
INCS += -I"C:/Program Files/Windows Kits/10/Lib/10.0.19041.0/ucrt/x86"
INCS += -I"C:/Program Files/Windows Kits/10/Lib/10.0.19041.0/um/x86"
INCS += -I"C:/Program Files/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/Lib/x86"
INCS += -I"C:/Program Files/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/include"

trans:
	zig translate-c test.c $(INCS) > test.zig

upx:
	upx --lzma $(TARGET_EXE)
