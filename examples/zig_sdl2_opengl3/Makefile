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
	-strip zig-out/bin/$(TARGET).exe

.PHONY: run cleanall clean

run: all
	./zig-out/bin/$(TARGET).exe

cleanall:
	-rm -fr zig-out
	-rm -fr zig-cache

clean:
	-rm -fr zig-out
