# GLFW binaries for 64-bit Windows

This archive contains documentation, headers, pre-compiled static libraries,
import libraries and DLLs for GLFW 3.5.1.

Binaries for the following compilers are included

 - Visual C++ 2026
 - Visual C++ 2022
 - Visual C++ 2019
 - Visual C++ 2017
 - MinGW-w64 (win32-msvcrt)

Binaries for Visual C++ 2013 and 2015 are no longer included.  These versions
are no longer supported by Microsoft and should not be used.  This release of
GLFW can still be compiled with these versions if necessary.

Support for Windows XP has been removed and these binaries will not run there.


## Binaries for Visual C++

### GLFW as a DLL

To use GLFW as a DLL, link against the `glfw3dll.lib` file for your
environment.  This will add a load time dependency on `glfw3.dll`.  The
remaining files in the same directory are not needed.

This DLL is built in release mode for the Multithreaded DLL runtime library.

There is also a GLFW DLL and import library pair in the `lib-static-ucrt`
directory.  These are built with Visual C++ 2019 and the static Multithreaded
runtime library.

### GLFW as a static library

To use GLFW as a static library, link against `glfw3.lib` if your application
is using the Multithreaded DLL runtime library, or `glfw3_mt.lib` if it is
using the static Multithreaded runtime library.  The remaining files in the same
directory are not needed.

The static libraries are built in release mode and do not contain debug
information but can still be linked with the debug versions of the runtime
library.


## Binaries for MinGW-w64

### GLFW as a DLL

To use GLFW as a DLL, link against the `libglfw3dll.a` file for your
environment.  This will add a load time dependency on `glfw3.dll`.  The
remaining files in the same directory are not needed.

The DLLs are built in release mode.

The DLLs depend on the `msvcrt.dll` C runtime library.  There is also a GLFW
DLL and import library in the `lib-static-ucrt` directory that is built with
Visual C++ 2019 and statically linked against the UCRT.

All DLLs in this archive provide the same ABI and can be used as drop-in
replacements for one another, as long as the C runtime library they depend on is
available.

### GLFW as a static library

To use GLFW as a static library, link against the `libglfw3.a` file for your
environment.  The other files in the same directory are not needed.

The library is built in release mode and do not contain debug information.

