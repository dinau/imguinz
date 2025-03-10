# All examples will be built at a time.
#
EXAMPLE_DIRS := \
							examples/glfw_opengl3 \
							examples/glfw_opengl3_image_load \
							examples/glfw_opengl3_imgui_toggle \
							examples/glfw_opengl3_imknobs \
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

gen:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))


#
define def_make
	@echo ==== Enter: $(1) ====
	@$(MAKE) -C  $(1) $(2)

endef

MAKEFLAGS += --no-print-directory
