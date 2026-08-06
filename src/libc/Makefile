
MAKEFLAGS += --no-print-directory

all:
	@echo Execute make copylibs

#-------------------------
# Copy external libraries
#-------------------------
EXT_LIB_DIR = ../../../000imguin_dev/imguin_git/libs
TARGET_DIR = .
copylibs: imgui implot imnodes imguizmo ImGuiFileDialog imgui_toggle implot3d copy_imspinner imCTE imgui-knobs \
	        imgui_zoomable_image

# ImGuiColorTextEdit
imCTE:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/ImGuiColorTextEdit
	@-mkdir -p $(TARGET_DIR)/c$@/ImGuiColorTextEdit/vendor/regex
	@-mkdir -p $(TARGET_DIR)/c$@/ImGuiColorTextEdit/extras
	@-mkdir -p $(TARGET_DIR)/c$@/ImGuiColorTextEdit/example
	@cp -f  $(EXT_LIB_DIR)/c$@/{*.cpp,*.h,README.md}                            $(TARGET_DIR)/c$@/
	@cp -f  $(EXT_LIB_DIR)/c$@/ImGuiColorTextEdit/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/ImGuiColorTextEdit/
	@cp -f  $(EXT_LIB_DIR)/c$@/ImGuiColorTextEdit/extras/*.*                    $(TARGET_DIR)/c$@/ImGuiColorTextEdit/extras/
	@cp -f  $(EXT_LIB_DIR)/c$@/ImGuiColorTextEdit/example/*.*                   $(TARGET_DIR)/c$@/ImGuiColorTextEdit/example/
	@cp -f  $(EXT_LIB_DIR)/c$@/ImGuiColorTextEdit/vendor/regex/*.*              $(TARGET_DIR)/c$@/ImGuiColorTextEdit/vendor/regex/
	@cp -rf $(EXT_LIB_DIR)/c$@/ImGuiColorTextEdit/vendor/regex/include          $(TARGET_DIR)/c$@/ImGuiColorTextEdit/vendor/regex/include

imgui:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@-mkdir -p $(TARGET_DIR)/c$@/$@/backends
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}        $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/{LICENSE.txt,*.cpp,*.h,docs/README.md} $(TARGET_DIR)/c$@/$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/backends/{*.cpp,*.h}      	       $(TARGET_DIR)/c$@/$@/backends/

imgui_toggle:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}         $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/libs/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/$@/

ImGuiFileDialog:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/C$@/libs/ImGuiFileDialog/dirent
	@-mkdir -p $(TARGET_DIR)/C$@/libs/ImGuiFileDialog/stb
	@cp -f $(EXT_LIB_DIR)/CImGuiFileDialog/{LICENSE,README.md,*.h} 	                           $(TARGET_DIR)/cimguifiledialog/
	@cp -f $(EXT_LIB_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/{LICENSE,*.cpp,*.h,README.md}  $(TARGET_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/
	@cp -f $(EXT_LIB_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/dirent/{LICENSE,*.h,README.md} $(TARGET_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/dirent/
	@cp -f $(EXT_LIB_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/stb/{LICENSE,*.h,README.md}    $(TARGET_DIR)/CImGuiFileDialog/libs/ImGuiFileDialog/stb/

imguizmo:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/c$@/ImGuizmo/src
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/ImGuizmo/{LICENSE,README.md}  $(TARGET_DIR)/c$@/ImGuizmo/
	@cp -f $(EXT_LIB_DIR)/c$@/ImGuizmo/src/{*.cpp,*.h}      $(TARGET_DIR)/c$@/ImGuizmo/src

imnodes:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{README.md,*.cpp,*.h}               $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/{LICENSE.md,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/$@/

implot:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}    $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/$@/

implot3d:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{*.cpp,*.h,README.md}            $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/$@/

copy_imspinner:
	@echo copying [ $(EXT_LIB_DIR)/imspinner] to $(TARGET_DIR)/imspinner
	@-mkdir -p $(TARGET_DIR)/imspinner
	@cp -f $(EXT_LIB_DIR)/imspinner/{*.cpp,*.h,LICENSE.txt,*.md}         $(TARGET_DIR)/imspinner

imgui-knobs:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/c$@/libs/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}         $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/libs/$@/{LICENSE,*.cpp,*.h,README.md} $(TARGET_DIR)/c$@/libs/$@/

imgui_zoomable_image:
	@echo copying [ $(EXT_LIB_DIR)/c$@] to $(TARGET_DIR)/c$@
	@-mkdir -p $(TARGET_DIR)/c$@/$@
	@cp -f $(EXT_LIB_DIR)/c$@/{LICENSE,*.cpp,*.h,README.md}         $(TARGET_DIR)/c$@/
	@cp -f $(EXT_LIB_DIR)/c$@/libs/$@/{LICENSE,*.h,*.md}            $(TARGET_DIR)/c$@/$@/
