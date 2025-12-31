const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "raylib";

    const platform = @tagName(builtin.target.os.tag);
    const raylib_path = "../../libc/raylib";

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/impl_raylib.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    step.addIncludePath(b.path(b.pathJoin(&.{ raylib_path, platform, "include" })));
    //step.defineCMacro("USE_LIBTYPE_SHARED", "");
    //step.defineCMacro("BUILD_LIBTYPE_SHARED", "");
    //#if defined(BUILD_LIBTYPE_SHARED)
    //    #define RLAPI __declspec(dllexport)     // We are building the library as a Win32 shared library (.dll)
    //#elif defined(USE_LIBTYPE_SHARED)
    //    #define RLAPI __declspec(dllimport)     // We are using the library as a Win32 shared library (.dll)

    const mod = step.addModule(mod_name);
    mod.addIncludePath(b.path(b.pathJoin(&.{ raylib_path, platform, "include" })));
    mod.addCSourceFiles(.{
        .files = &.{
            //"../../libc/raylib/windows/include/raylib.h",
        },
    });
    mod.addImport(mod_name, mod);

    switch (builtin.target.os.tag) {
        //.windows => mod.addObjectFile(b.path(b.pathJoin(&.{ raylib_path, platform, "lib", "libraylib.a" }))),
        .windows => mod.addObjectFile(b.path(b.pathJoin(&.{ raylib_path, platform, "lib", "libraylibdll.a" }))),
        .linux => mod.addObjectFile(b.path(b.pathJoin(&.{ raylib_path, platform, "lib", "libraylib.so.550" }))),
        else => {},
    }

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
