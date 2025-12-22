const std = @import("std");

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
    const mod = b.addModule(mod_name, .{
        .root_source_file = b.path("src/appImGui.zig"),
        .target = target,
        .optimize = optimize,
    });
    mod.addImport(mod_name, mod);
    // import modules
    const modules = [_][]const u8{ "cimgui"
                                  ,"fonticon"
                                  ,"loadicon"
                                  ,"loadimage"
                                  ,"glfw"
                                  ,"impl_glfw"
                                  ,"impl_opengl3"
                                  ,"setupfont"
                                  ,"utils"
                                  ,"clib"
                                 };
    for (modules) |module| {
        const mod_dep = b.dependency(module, .{});
        mod.addImport(module, mod_dep.module(module));
    }
}
