const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Get executable name from current directory name
    const allocator = b.allocator;
    const abs_path = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(abs_path);
    const exe_name = std.fs.path.basename(abs_path);

    const main_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const exe = b.addExecutable(.{
        .name = exe_name,
        .root_module = main_mod,
    });

    const imguinz = b.dependency("imguinz", .{});
    const dependencies = .{
        // "another_lib",
    };
    inline for (dependencies) |dep_name| {
        const dep = imguinz.builder.dependency(dep_name, .{ .target = target, .optimize = optimize, });
        exe.root_module.addImport(dep_name, dep.module(dep_name));
    }

    // Load Icon
    exe.root_module.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc") });

    exe.subsystem = .Windows; // Hide console window

    b.installArtifact(exe);

    const install_resources = b.addInstallDirectory(.{
        .source_dir = b.path("resources"), // base: assets folder
        .install_dir = .bin, // bin folder
        .install_subdir = "resources", // destination: bin/resources/
    });
    exe.step.dependOn(&install_resources.step);

    const raylib_dep = b.dependency("raylib_zig", .{
        .target = target,
        .optimize = optimize,
        //.linkage = .dynamic, // Build raylib as a shared library.linkage = .dynamic, // Build raylib as a shared library

    });
    const raylib = raylib_dep.module("raylib"); // main raylib module
    //const raygui = raylib_dep.module("raygui"); // raygui module
    const raylib_artifact = raylib_dep.artifact("raylib"); // raylib C library
    exe.linkLibrary(raylib_artifact);
    exe.root_module.addImport("raylib", raylib);
    //exe.root_module.addImport("raygui", raygui);

    const cjk_font_dir = "../../src/libc/notonoto_v0.0.3/";
    const cjk_font_files = [_][]const u8{ "LICENSE", "NOTONOTO-Regular.ttf", "README.md" };
    inline for (cjk_font_files) |file| {
        const res = b.addInstallFile(b.path(cjk_font_dir ++ file), "bin/resources/fonts/" ++ file);
        b.getInstallStep().dependOn(&res.step);
    }

    // save [Executable name].ini
    const sExeIni = b.fmt("{s}.ini", .{exe_name});
    const resExeIni = b.addInstallFile(b.path(sExeIni), b.pathJoin(&.{ "bin", sExeIni }));
    b.getInstallStep().dependOn(&resExeIni.step);

    // run
    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }
    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
