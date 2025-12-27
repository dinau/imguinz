#CC = gcc
#CXX = g++
CC = zig cc
CXX = zig c++

TARGET = $(notdir $(CURDIR))
TARGET_EXE = $(TARGET).exe

CIMGUI_DIR = ../cimgui
IMGUI_DIR =  ../cimgui/imgui

CFLAGS += -Wno-duplicate-decl-specifier
CFLAGS += -MMD -MP
CFLAGS += -O2 -DUNICODE -D_UNICODE -DCIMGUI_USE_WIN32 -DCIMGUI_USE_DX11
CFLAGS += -DIMGUI_IMPL_API="extern \"C\""
CFLAGS += -Wl,-s

INCLUDES = -I$(IMGUI_DIR) -I$(IMGUI_DIR)/backends -I$(CIMGUI_DIR)
LIBS = -ld3d11 -ldxgi -luser32 -lgdi32 -limm32 -ldxguid -ldwmapi -ld3dcompiler_47

VPATH = $(CIMGUI_DIR):$(IMGUI_DIR):$(IMGUI_DIR)/backends

SOURCES = $(TARGET).c \
          imgui.cpp \
          imgui_demo.cpp \
          imgui_draw.cpp \
          imgui_tables.cpp \
          imgui_widgets.cpp \
          imgui_impl_win32.cpp \
          imgui_impl_dx11.cpp \
          cimgui.cpp

OBJS = $(SOURCES:.cpp=.o)
OBJS := $(OBJS:.c=.o)

all: zig_ver $(TARGET_EXE)

$(TARGET_EXE): $(OBJS)
	$(CC) -o $@ $^ $(LIBS) -lstdc++

%.o: %.c Makefile
	@echo [$(CC)]: $<
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

%.o: %.cpp Makefile
	@echo [$(CXX)]: $(notdir $<)
	@$(CXX) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@rm -f $(OBJS) $(TARGET_EXE) $(TARGET).lib $(TARGET).pdb main.lib *.d

.PHONY: all clean run

run: all
	./$(TARGET_EXE)

zig_ver:
ifneq ($(CC),gcc)
	@echo zig-$(shell zig version)
endif

include $(wildcard *.d)
