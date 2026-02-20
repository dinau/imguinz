# All examples will be built at a time.
#
ifeq ($(OS),Windows_NT)
	EXAMPLE_DIRS += \
								examples/sdl3_opengl3 \
								examples/sdl3_sdlgpu3 \
							  examples/win32_dx11
endif

EXAMPLE_DIRS += \
							examples/glfw_opengl3 \
							examples/glfw_opengl3_image_load \
							examples/glfw_opengl3_imfileopendialog \
							examples/glfw_opengl3_imgui_toggle \
							examples/glfw_opengl3_imknobs \
							examples/glfw_opengl3_imspinner \
							examples/glfw_opengl3_jp \
							examples/iconFontViewer \
							examples/glfw_opengl3_implot \
							examples/glfw_opengl3_implot3d \
							examples/glfw_opengl3_imguizmo \
							examples/glfw_opengl3_imnodes \
							examples/glfw_opengl3_imguicolortextedit \
							examples/imPlotDemo

EXAMPLE_DIRS_RAYLIB := \
							examples/raylib_basic \
							examples/raylib_cjk \
							examples/rlimgui_basic


all: std raylib

std:
	@echo $(shell zig version)
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),all ))

raylib:
	@echo $(shell zig version)
	$(foreach exdir,$(EXAMPLE_DIRS_RAYLIB), $(call def_make,$(exdir),all ))

.PHONY: test clean gen cleanexe

sdl:
	$(MAKE) -C examples/sdl3_opengl3
	$(MAKE) -C examples/sdl3_sdlgpu3

clean:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleanall ))
	$(foreach exdir,$(EXAMPLE_DIRS_RAYLIB), $(call def_make,$(exdir),cleanall ))
	$(MAKE) -C src/libzig $@

cleanall: clean cleanexe
cleanexe:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleanexe ))

cleancache:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleancache ))

gen: copylibs

#
define def_make
	@echo ==== Enter: $(1) ====
	@-$(MAKE) -C  $(1) $(2)
	@#$(MAKE) -C  $(1) cleancache

endef

MAKEFLAGS += --no-print-directory

#-------------------------
# Copy external libraries
#-------------------------
EXT_LIB_DIR = ../000imguin_dev/imguin_git/libs
TARGET_DIR = src/libc
copylibs: imgui implot imnodes imguizmo ImGuiFileDialog imgui_toggle implot3d copy_imspinner imCTE imgui-knobs

# ImGuiColorTextEdit
imCTE:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/ImGuiColorTextEdit/vendor/regex
	@cp -f $(EXT_LIB_DIR)/c$@/{*.cpp,*.h,README.md}                            $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/ImGuiColorTextEdit/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/ImGuiColorTextEdit/
	@cp -f $(EXT_LIB_DIR)/c$@/ImGuiColorTextEdit/vendor/regex/*.*              $(TARGET_DIR)/c$@/ImGuiColorTextEdit/vendor/regex/
	@cp -rf $(EXT_LIB_DIR)/c$@/ImGuiColorTextEdit/vendor/regex/include         $(TARGET_DIR)/c$@/ImGuiColorTextEdit/vendor/regex/include

imgui:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@-mkdir -p $(TARGET_DIR)/c$@/$@/backends
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}        $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/{LICENSE.txt,*.cpp,*.h,docs/README.md} $(TARGET_DIR)/c$@/$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/backends/{*.cpp,*.h}      	       $(TARGET_DIR)/c$@/$@/backends/

imgui_toggle:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}         $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/libs/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/$@/

ImGuiFileDialog:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/C$@/libs/ImGuiFileDialog/dirent
	@-mkdir -p $(TARGET_DIR)/C$@/libs/ImGuiFileDialog/stb
	@cp -f $(EXT_LIB_DIR)/CImGuiFileDialog/{LICENSE,README.md,*.h} 	                           $(TARGET_DIR)/cimguifiledialog/
	@cp -f $(EXT_LIB_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/{LICENSE,*.cpp,*.h,README.md}  $(TARGET_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/
	@cp -f $(EXT_LIB_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/dirent/{LICENSE,*.h,README.md} $(TARGET_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/dirent/
	@cp -f $(EXT_LIB_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/stb/{LICENSE,*.h,README.md}    $(TARGET_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/stb/

imguizmo:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/ImGuizmo
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}          $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/ImGuizmo/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/ImGuizmo/

imnodes:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{README.md,*.cpp,*.h}               $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/{LICENSE.md,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/$@/

implot:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}    $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/$@/

implot3d:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{*.cpp,*.h,README.md}            $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/$@/

copy_imspinner:
	@echo copying [ $(EXT_LIB_DIR)/imspinner] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/imspinner
	@cp -f $(EXT_LIB_DIR)/imspinner/{*.cpp,*.h,LICENSE.txt,*.md}         $(TARGET_DIR)/

imgui-knobs:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/libs/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}         $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/libs/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/libs/$@/


#$(TARGET_DIR):
#	-mkdir -p $@


.PHONY: cimgui cimplot cimnodes cimguizmo cimguifiledialog cimgui_toggle cimCTE

clonelibs: libs cimgui cimplot cimnodes cimguizmo cimgui_toggle cimplot3d imspinner cimCTE cimgui-knobs

cimgui:
	git clone --recurse-submodules https://github.com/$@/$@      ../libs/$@
cimplot:
	git clone --recurse-submodules https://github.com/cimgui/$@  ../libs/$@
cimnodes:
	git clone --recurse-submodules https://github.com/cimgui/$@  ../libs/$@
cimguizmo:
	git clone --recurse-submodules https://github.com/cimgui/$@  ../libs/$@
cimguifiledialog:
	git clone --recurse-submodules https://github.com/dinau/CImGuiFileDialog  ../libs/CImGuiFileDialog
cimgui_toggle:
	git clone --recurse-submodules https://github.com/dinau/$@  ../libs/$@
cimplot3d:
	git clone --recurse-submodules https://github.com/cimgui/$@  ../libs/$@
imspinner:
	git clone --recurse-submodules https://github.com/dalerank/$@  ../libs/$@
cimCTE:
	git clone --recurse-submodules https://github.com/cimgui/$@  ../libs/$@
cimgui-knobs:
	git clone --recurse-submodules https://github.com/dinau/cimgui-knobs/$@ /../libs/$@
