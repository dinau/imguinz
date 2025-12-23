const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const allocator = b.allocator;
    const current_dir_abs = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(current_dir_abs);
    const mod_name = std.fs.path.basename(current_dir_abs);

    var platform_buf:[10]u8 = undefined;
    var platform: []u8 = undefined;
    switch (builtin.target.os.tag) {
        .windows => platform = std.fmt.bufPrint(&platform_buf,"{s}",.{"win"}) catch unreachable,
        .linux =>   platform = std.fmt.bufPrint(&platform_buf,"{s}",.{"linux"}) catch unreachable,
        else => {},
    }

    //const raylib_path = b.fmt("{s}", .{"../../libc/raylib"});
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
    step.addIncludePath(b.path(b.pathJoin(&.{ raylib_path, platform, "include"})));

    //step.defineCMacro("USE_LIBTYPE_SHARED", "");
    //step.defineCMacro("BUILD_LIBTYPE_SHARED", "");
    //#if defined(BUILD_LIBTYPE_SHARED)
    //    #define RLAPI __declspec(dllexport)     // We are building the library as a Win32 shared library (.dll)
    //#elif defined(USE_LIBTYPE_SHARED)
    //    #define RLAPI __declspec(dllimport)     // We are using the library as a Win32 shared library (.dll)

    const mod = step.addModule(mod_name);
    mod.addIncludePath(b.path(b.pathJoin(&.{ raylib_path, platform, "include"})));
    mod.addCSourceFiles(.{
        .files = &.{
    //        "../../libc/raylib/include/raylib.h",
        },
    });
    mod.addImport(mod_name, mod);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });

    switch (builtin.target.os.tag) {
        .windows => lib.root_module.addObjectFile(b.path(b.pathJoin(&.{ raylib_path, platform, "lib", "libraylibdll.a" }))),
        .linux   => lib.root_module.addObjectFile(b.path(b.pathJoin(&.{ raylib_path, platform, "lib", "libraylib.so.550" }))),
        else => {},
    }
}
