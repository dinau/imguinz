const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const main_mod = b.createModule(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Get executable name from current directory name
    const allocator = b.allocator;
    const abs_path = b.build_root.handle.realpathAlloc(allocator, ".") catch unreachable;
    defer allocator.free(abs_path);
    const exe_name = std.fs.path.basename(abs_path);

    // Get all module name
    const dir_path = "../../src/libzig";
    var dir =  std.fs.cwd().openDir(dir_path, .{.iterate = true } ) catch unreachable;
    defer dir.close();
    var it = dir.iterate();
    while (it.next() catch null) |entry| {
        if (entry.kind == .directory) {
            const lib_name = entry.name;
            const dep = b.dependency(lib_name,.{});
            const mod = dep.module(lib_name);
            main_mod.addImport(lib_name, mod);
            //std.debug.print("{s}\n", .{lib_name});
        }
    }

    const exe = b.addExecutable(.{
        .name = exe_name,
        .root_module = main_mod,
    });

    // Load Icon
    exe.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc") });

    //---------
    // Linking
    //---------
    if (builtin.target.os.tag == .windows) {
        exe.linkSystemLibrary("gdi32");
        exe.linkSystemLibrary("imm32");
        exe.linkSystemLibrary("opengl32");
        exe.linkSystemLibrary("user32");
        exe.linkSystemLibrary("shell32");
    } else if (builtin.target.os.tag == .linux) {
        exe.linkSystemLibrary("glfw3");
        exe.linkSystemLibrary("GL");
    }

    // System
    exe.linkLibC();
    exe.linkLibCpp();

    exe.subsystem = .Windows; // Hide console window

    b.installArtifact(exe);

    const resBin = [_][]const u8{ "imgui.ini", "himeji-400.jpg"};
    const resUtils = [_][]const u8{ "fonticon/fa6/fa-solid-900.ttf", "fonticon/fa6/LICENSE.txt" };
    const resIcon = "src/res/z.png";

    inline for (resBin) |file| {
        const res = b.addInstallFile(b.path(file), "bin/" ++ file);
        b.getInstallStep().dependOn(&res.step);
    }
    inline for (resUtils) |file| {
        const res = b.addInstallFile(b.path("../utils/" ++ file), "utils/" ++ file);
        b.getInstallStep().dependOn(&res.step);
    }
    const res = b.addInstallFile(b.path(resIcon), "bin/z.png");
    b.getInstallStep().dependOn(&res.step);

    // save [Executable name].ini
    const sExeIni = b.fmt("{s}.ini", .{exe_name});
    const resExeIni = b.addInstallFile(b.path(sExeIni), b.pathJoin(&.{"bin", sExeIni}));
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
