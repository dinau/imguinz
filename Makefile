# All example are built at a time.
EXAMPLE_DIRS := \
							examples/zig_sdl2_opengl3 \
							examples/zig_glfw_opengl3 \
							examples/zig_glfw_opengl3_implot \
							examples/zig_glfw_opengl3_jp \
							examples/zig_glfw_opengl3_image_load

all:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))

.PHONY: test clean gen
test:
	@echo $(notdir $(EXAMPLE_DIRS))

clean:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),cleanall ))

gen:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))


#
define def_make
	@$(MAKE) -C  $(1) $(2)

endef

#MAKEFLAGS += --no-print-directory
