all:
	clear
	zig build $(OPT)
clean:
	@rm -fr zig-out .zig-cache


fmt:
	@-zig fmt .
