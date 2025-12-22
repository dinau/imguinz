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
        "appimgui",
        "raylib",
        "rlimgui",
        // "another_lib",
    };
    inline for (dependencies) |dep_name| {
        const dep = imguinz.builder.dependency(dep_name, .{ .target = target, .optimize = optimize, });
        exe.root_module.addImport(dep_name, dep.module(dep_name));
    }

    // Load Icon
    exe.root_module.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc") });

    // std.Build: Deprecate Step.Compile APIs that mutate the root module #22587
    // See. https://github.com/ziglang/zig/pull/22587

    exe.subsystem = .Windows; // Hide console window

    b.installArtifact(exe);

    const install_resources = b.addInstallDirectory(.{
        .source_dir = b.path("resources"),        // base: assets folder
        .install_dir = .bin,                      // bin folder
        .install_subdir = "resources",            // destination: bin/resources/
    });
    exe.step.dependOn(&install_resources.step);

    const resBin = [_][]const u8{ "imgui.ini", };

    inline for (resBin) |file| {
        const res = b.addInstallFile(b.path(file), "bin/" ++ file);
        b.getInstallStep().dependOn(&res.step);
    }

    const fonticon_dir = "../../src/libc/fonticon/fa6/";
    const res_fonticon = [_][]const u8{ "fa-solid-900.ttf", "LICENSE.txt" };
    inline for (res_fonticon) |file| {
        const res = b.addInstallFile(b.path(fonticon_dir ++ file), "bin/resources/fonticon/fa6/" ++ file);
        b.getInstallStep().dependOn(&res.step);
    }

    // Copy DLL to bin/ folder
    if (builtin.target.os.tag == .windows) {
        const dllPath = "../../src/libc/raylib/win/lib/raylib.dll";
        const basename = std.fs.path.basename(b.path(dllPath).getPath(b));
        const resDll = b.addInstallFile(b.path(dllPath), b.pathJoin(&.{ "bin", basename }));
        b.getInstallStep().dependOn(&resDll.step);
    } else if (builtin.target.os.tag == .linux) {}



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
