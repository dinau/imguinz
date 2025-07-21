# All examples will be built at a time.
#
EXAMPLE_DIRS := \
							examples/glfw_opengl3 \
							examples/glfw_opengl3_image_load \
							examples/glfw_opengl3_imfiledialog \
							examples/glfw_opengl3_imgui_toggle \
							examples/glfw_opengl3_imknobs \
							examples/glfw_opengl3_imguizmo \
							examples/glfw_opengl3_implot \
							examples/glfw_opengl3_imspinner \
							examples/glfw_opengl3_jp \
							examples/iconFontViewer \
							examples/imPlotDemo \
							examples/sdl2_opengl3
ifeq ($(OS),Windows_NT)
	EXAMPLE_DIRS += \
								examples/sdl3_opengl3
endif

all:
	@echo $(shell zig version)
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))

.PHONY: test clean gen cleanexe
test:
	@echo $(notdir $(EXAMPLE_DIRS))

clean:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleanall ))

cleanexe:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleanexe ))

gen: copylibs
	@$(MAKE) -C examples/utils

#
define def_make
	@echo ==== Enter: $(1) ====
	@$(MAKE) -C  $(1) $(2)

endef

MAKEFLAGS += --no-print-directory

#-------------------------
# Copy external libraries
#-------------------------
EXT_LIB_DIR = ../../imguin_git/libs
TARGET_DIR = libs
copylibs: imgui implot imnodes imguizmo ImGuiFileDialog imgui_toggle implot3d imspinner imCTE imgui-knobs

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

imspinner:
	@echo copying [ $(EXT_LIB_DIR)/$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@-cp -f $(EXT_LIB_DIR)/c$@/{README.md,LICENSE.txt}                  $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/libs/$@/{*.cpp,*.h,LICENSE.txt,README.md} $(TARGET_DIR)/c$@/$@/
	@#echo "" >  $(TARGET_DIR)/c$@/$@/cimspinner_config.h

imgui-knobs:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/
	@-mkdir -p $(TARGET_DIR)/c$@/libs/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}         $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/libs/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/libs/$@/


libs:
	-mkdir -p ../$@


.PHONY: cimgui cimplot cimnodes cimguizmo cimguifiledialog cimgui_toggle cimCTE

clonelibs: libs cimgui cimplot cimnodes cimguizmo cimgui_toggle cimplot3d cimspinner cimCTE cimgui-knobs

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
cimspinner:
	git clone --recurse-submodules https://github.com/dinau/$@  ../libs/$@
cimCTE:
	git clone --recurse-submodules https://github.com/cimgui/$@  ../libs/$@
cimgui-knobs:
	git clone --recurse-submodules https://github.com/dinau/cimgui-knobs/$@ /../libs/$@
