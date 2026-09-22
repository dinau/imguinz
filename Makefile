# All examples will be built at a time.
#

EXAMPLE_DIRS += \
							examples/glfw_opengl3 \
							examples/glfw_opengl3_image_load \
							examples/glfw_opengl3_imfileopendialog \
							examples/glfw_opengl3_imgui_toggle \
							examples/glfw_opengl3_imgui_zoomable_image \
							examples/glfw_opengl3_imguicolortextedit \
							examples/glfw_opengl3_imguizmo \
							examples/glfw_opengl3_imknobs \
							examples/glfw_opengl3_imnodes \
							examples/glfw_opengl3_implot \
							examples/glfw_opengl3_implot3d \
							examples/glfw_opengl3_imspinner \
							examples/glfw_opengl3_jp \
							examples/glfw_webgl_wasm \
							examples/glfw_wgpu_wasm \
							examples/iconFontViewer \
							examples/imPlotDemo

EXAMPLE_DIRS_RAYLIB := \
							examples/raylib_basic \
							examples/raylib_cjk \
							examples/rlimgui_basic

ifeq ($(OS),Windows_NT)
	EXAMPLE_DIRS += \
								examples/sdl3_opengl3 \
								examples/sdl3_sdlgpu3 \
							  examples/win32_dx11
endif

all: std  sdl # raylib

std:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),all ))

raylib:
	$(foreach exdir,$(EXAMPLE_DIRS_RAYLIB), $(call def_make,$(exdir),all ))

.PHONY: test clean gen cleanexe

sdl:
	$(MAKE) -C examples/sdl3_opengl3
	$(MAKE) -C examples/sdl3_sdlgpu3

clean:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleanall ))
	$(foreach exdir,$(EXAMPLE_DIRS_RAYLIB), $(call def_make,$(exdir),cleanall ))
	$(MAKE) -C src/libzig $@
	@-rm -fr .zig-cache

cleanall: clean cleanexe
cleanexe:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleanexe ))

cleancache:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleancache ))

gen:
	@$(MAKE) -C src/libc copylibs
	@$(MAKE) -C src/libzig gen

fmt:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),fmt ))
	$(foreach exdir,$(EXAMPLE_DIRS_RAYLIB), $(call def_make,$(exdir),fmt ))

ver:
	@echo $(shell zig version)

#
CALL_COUNT := 0
define def_make
$(eval CALL_COUNT := $(shell expr $(CALL_COUNT) + 1))
	@echo [$(CALL_COUNT)]: $(1) $(2)
	@-$(MAKE) -C  $(1) $(2)
	@echo

endef

MAKEFLAGS += --no-print-directory


#$(TARGET_DIR):
#	-mkdir -p $@


.PHONY: cimgui cimplot cimnodes cimguizmo cimguifiledialog cimgui_toggle cimCTE

clonelibs: libs cimgui cimplot cimnodes cimguizmo cimgui_toggle cimplot3d imspinner cimCTE cimgui-knobs \
	        cimgui_zoomable_image

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
cimgui_zoomable_image:
	git clone --recurse-submodules https://github.com/dinau/$@  ../libs/$@





cjk:
	rg -l '[\u3000-\u303f\u3040-\u309f\u30a0-\u30ff\u4e00-\u9fff\uff00-\uffef]' -g '*.{zig,nim,c,h,cpp}'
