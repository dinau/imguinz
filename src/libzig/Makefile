DIRS = \
	appimgui \
	cimgui \
	fonticon \
	glfw \
	imcolortextedit \
	imfileopendialog \
	imknobs \
	imnodes \
	implot \
	implot3d \
	imspinner \
	impl_sdl3 \
	impl_glfw \
	impl_opengl3 \
	imtoggle \
	loadicon \
	loadimage \
	saveimage \
	setupfont \
	sdl3 \
	utils \
	zoomglass


clean:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))

fmt:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))

#
define def_make
	@echo ==== Enter: $(1) ====
	@-$(MAKE) -C  $(1) $(2)

endef

MAKEFLAGS += --no-print-directory
