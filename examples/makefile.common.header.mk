ifeq ($(OS),Windows_NT)
	EXE = .exe
endif

TARGET = $(notdir $(CURDIR))
ZIG_BIN_DIR = zig-out/bin
TARGET_EXE = $(ZIG_BIN_DIR)/$(TARGET)$(EXE)
