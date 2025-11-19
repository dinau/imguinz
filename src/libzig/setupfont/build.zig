const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const allocator = b.allocator;
    const current_dir_abs = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(current_dir_abs);
    const mod_name = std.fs.path.basename(current_dir_abs);

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/setupFonts.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    step.addIncludePath(b.path("../../libc/cimgui"));
    step.addIncludePath(b.path("../../libc/fonticon/"));

    const mod = step.addModule(mod_name);
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addIncludePath(b.path("../../libc/fonticon"));
    mod.addCSourceFiles(.{
        .files = &.{
            "src/setupFonts.c",
        },
    });
    mod.addImport(mod_name, mod);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
    //    std.debug.print("{s} module\n",.{mod_name});
}
