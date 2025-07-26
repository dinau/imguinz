DIRS = \
    appimgui \
    cimgui \
    fonticon \
    glfw \
    impl_glfw \
    impl_opengl3 \
    loadicon \
    loadimage \
    setupfont \
zoomglass



clean:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))


#
define def_make
	@echo ==== Enter: $(1) ====
	@-$(MAKE) -C  $(1) $(2)

endef

MAKEFLAGS += --no-print-directory
