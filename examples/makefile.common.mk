# Use zig-0.15.2 : 2025/12
# Use zig-0.14.0
# Use zig-0.12.0
# by dinau (2024/06)

#
#OPT += --release=fast
#OPT += --release=small
# Fail compilation
#OPT += --release=safe

all:
	@echo zig-$(shell zig version)
	zig build $(OPT)
	@-$(AFTER_BUILD_CMD)

.PHONY: run gen cleanall cleanexe cleancache trans clean

run: all
	(cd $(ZIG_BIN_DIR); $(LOCAL_LIB_PATH) ./$(TARGET)$(EXE))
ifneq ($(COPY_IMGUI_INI),false)
	@-cp $(ZIG_BIN_DIR)/imgui.ini .
endif
ifneq ($(COPY_TARGET_INI),false)
	@-cp $(ZIG_BIN_DIR)/$(TARGET).ini .
endif
	$(AFTER_RUN_CMD)


gen:
	nim ../utils/genImPlotFuncs.nims

clean: cleanall

cleanall:
	@-rm -fr zig-out .zig-cache

cleanexe:
	@-rm -fr zig-out

cleancache:
	@-rm -fr .zig-cache
ifeq ($(OS),Windows_NT)
	@-rm  zig-out/bin/$(TARGET).pdb
endif


INCS +=	-I../../libs/cimplot/implot/ -I../../libs/cimgui/imgui/
#INCS += -I"C:/Program Files/Windows Kits/10/Include/10.0.19041.0/ucrt"
#INCS += -I"C:/Program Files/Windows Kits/10/Lib/10.0.19041.0/ucrt/x86"
#INCS += -I"C:/Program Files/Windows Kits/10/Lib/10.0.19041.0/um/x86"
#INCS += -I"C:/Program Files/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/Lib/x86"
#INCS += -I"C:/Program Files/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.29.30133/include"

trans:
	zig translate-c test.c $(INCS) > test.zig

upx: all
	upx --lzma $(TARGET_EXE)

dupx:
	upx -d $(TARGET_EXE)

fmt:
	zig fmt src/
	zig fmt build.zig build.zig.zon

pretty: fmt
