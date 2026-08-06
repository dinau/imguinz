all:
	clear
	zig build $(OPT)
clean:
	@rm -fr zig-out .zig-cache


fmt:
	@-zig fmt .


ifeq ($(OS),Windows_NT)
    FD := fd
else
    FD := fdfind
endif

ifneq ($(CACHE_ZIG),)
ifeq ($(IMPL_ZIG),)
	IMPL_ZIG = src/$(CACHE_ZIG)
endif
gen:
	@zig version
	zig build $(OPT) -Dgen
	$(FD) --type f --hidden --glob "$(CACHE_ZIG)" .zig-cache -x cp -f {} $(IMPL_ZIG)
endif
