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

gen:
	nim ../utils/genImPlotFuncs.nims


cleanall:
	rm -fr zig-out
	rm -fr zig-cache
	rm -fr .zig-cache
