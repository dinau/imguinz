const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    //const optimize = .ReleaseSmall;
    const mod = b.createModule(.{
        .target = target,
        .optimize = optimize,
        .link_libc = true,
        .link_libcpp = true,
    });
    mod.addCMacro("UNICODE", ""); // optional
    mod.addCMacro("_UNICODE", ""); // optional
    mod.addCMacro("CIMGUI_USE_WIN32", "");
    mod.addCMacro("CIMGUI_USE_DX11", "");
    mod.addCMacro("IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS", ""); // for CJK IME
    mod.addCMacro("ImDrawIdx", "unsigned int");
    mod.addIncludePath(b.path("../cimgui"));
    mod.addIncludePath(b.path("../cimgui/imgui"));
    mod.addIncludePath(b.path("../cimgui/imgui/backends"));
    switch (builtin.target.os.tag) {
        .windows => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
        .linux => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
        else => {},
    }
    mod.addCSourceFiles(.{
        .files = &.{
            "src/win32_dx11.c",
            "../cimgui/imgui/imgui.cpp",
            "../cimgui/imgui/imgui_demo.cpp",
            "../cimgui/imgui/imgui_draw.cpp",
            "../cimgui/imgui/imgui_tables.cpp",
            "../cimgui/imgui/imgui_widgets.cpp",
            "../cimgui/imgui/backends/imgui_impl_win32.cpp",
            "../cimgui/imgui/backends/imgui_impl_dx11.cpp",
            "../cimgui/cimgui.cpp",
            "../cimgui/cimgui_impl.cpp",
        },
        .flags = &.{
            // "-Wl,-s -O3",
            // "some options",
        },
    });
    const exe = b.addExecutable(.{ .name = "win32_dx11", .root_module = mod });
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
    b.installArtifact(exe);

    const run_step = b.step("run", "Run the app");
    const run_cmd = b.addRunArtifact(exe);
    run_step.dependOn(&run_cmd.step);
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }
}
