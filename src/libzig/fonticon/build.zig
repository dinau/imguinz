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
    //const mod  = b.createModule(.{
    //    .root_source_file = b.path("src/fonticon/IconsFontAwesome6.zig"),
    //    .target = target,
    //    .optimize = optimize,
    //});
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/fonticon/IconsFontAwesome6.h"),
        .target = target,
        .optimize = optimize,
        //.link_libc = true,
    });
    const mod = step.addModule(mod_name);
    //mod.addIncludePath(.{.cwd_relative = b.pathJoin(&.{ glfw_path, "include"})});
    mod.addImport(mod_name, mod);

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });

    const font_dir = "fonticon/fa6";
    const resFont = [_][]const u8{ font_dir ++ "/fa-solid-900.ttf", font_dir ++ "/LICENSE.txt" };
    inline for (resFont) |file| {
        const res = b.addInstallFile(b.path("src/" ++ file), "utils/" ++ file);
        b.getInstallStep().dependOn(&res.step);
    }

    b.installArtifact(lib);
//    std.debug.print("{s} module\n",.{mod_name});
}
