DIRS = \
	appimgui \
	cimgui \
	fonticon \
	glfw \
	imcolortextedit \
	imfileopendialog \
	imguizmo \
	imknobs \
	imnodes \
	impl_glfw \
	impl_opengl3 \
	impl_sdl3 \
	impl_sdlgpu3 \
	implot \
	implot3d \
	imspinner \
	imtoggle \
	loadicon \
	loadimage \
	loadimage_sdlgpu3 \
	raylib \
	rlimgui \
	saveimage \
	setupfont \
	sdl3 \
	utils \
	zoomglass

all:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))

clean:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))

fmt:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))

#
define def_make
	@echo ==== Enter: $(1) ====
	@$(MAKE) -C  $(1) $(2)

endef

MAKEFLAGS += --no-print-directory
