const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    //const optimize = .ReleaseSmall;
    const mod = b.createModule(.{
        .target = target,
        .optimize = optimize,
    });

    mod.addCSourceFiles(.{
        .files = &.{
            "src/win32_dx11.c",
        },
        .flags = &.{
            // "-Wl,-s -O3",
            // "some options",
        },
    });
    // libc
    mod.addIncludePath(b.path("../../src/libc/cimgui"));
    mod.addIncludePath(b.path("../../src/libc/cimgui/backends"));
    mod.addIncludePath(b.path("../../src/libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../src/libc/cimgui/imgui/backends"));
    // libzig
    mod.addIncludePath(b.path("../../src/libzig/setupfont/src"));
    mod.addIncludePath(b.path("../../src/libzig/loadicon/src"));
    mod.addIncludePath(b.path("../../src/libc/fonticon"));

    const exe = b.addExecutable(.{
        .name = "win32_dx11",
        .root_module = mod,
    });
    const modules = [_][]const u8{ "cimgui", "impl_win32", "impl_dx11", "setupfont", "loadicon" };
    for (modules) |module| {
        const mod_dep = b.dependency(module, .{.target = target, .optimize = optimize,});
            exe.linkLibrary(mod_dep.artifact(module));
        }
    // Load Icon
    exe.root_module.addWin32ResourceFile(.{ .file = b.path("src/res/res.rc") });

    const libs = .{
        "d3d11",
        "dxgi",
        "dwmapi",
        "d3dcompiler_47",
        // optional
        "user32",
        "gdi32",
        "imm32", // for CJK IME
        "dxguid",
    };
    inline for (libs) |lib| {
        exe.root_module.linkSystemLibrary(lib, .{});
    }

    exe.subsystem = .Windows; // Hide console window
    exe.linkLibC();
    b.installArtifact(exe);

    const install_resources = b.addInstallDirectory(.{
        .source_dir = b.path("resources"), // base: assets folder
        .install_dir = .bin, // bin folder
        .install_subdir = "resources", // destination: bin/resources/
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

    const run_step = b.step("run", "Run the app");
    const run_cmd = b.addRunArtifact(exe);
    run_step.dependOn(&run_cmd.step);
    run_cmd.setCwd(.{ .cwd_relative = b.getInstallPath(.bin, "") });
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }
}
