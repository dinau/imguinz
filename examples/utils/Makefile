all: gen

# The directory that contains `stdlib.h`.
# On POSIX-like systems, include directories be found with: `cc -E -Wp,-v -xc /dev/null`
include_dir="C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt"
# The system-specific include directory. May be the same as `include_dir`.
# On Windows it's the directory that includes `vcruntime.h`.
# On POSIX it's the directory that includes `sys/errno.h`.
sys_include_dir="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.44.35207\include"
# The directory that contains `crt1.o` or `crt2.o`.
# On POSIX, can be found with `cc -print-file-name=crt1.o`.
# Not needed when targeting MacOS.
crt_dir="C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\ucrt\x64"
# The directory that contains `vcruntime.lib`.
# Only needed when targeting MSVC on Windows.
msvc_lib_dir="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.44.35207\Lib\x64"
# The directory that contains `kernel32.lib`.
# Only needed when targeting MSVC on Windows.
kernel32_lib_dir="C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\um\x64"
# The directory that contains `crtbeginS.o` and `crtendS.o`
# Only needed when targeting Haiku.
gcc_dir=

CFLAGS += -I../../libs/cimgui
CFLAGS += -I../../libs/cimgui/imgui
CFLAGS += -Ic:/zig/lib/libc/include/any-windows-any
CFLAGS += -DCIMGUI_DEFINE_ENUMS_AND_STRUCTS

gen:
	zig translate-c ../../libs/cimgui/cimgui.h $(CFLAGS) > cimgui.zig
