const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.standardTargetOptions(.{});
    _ = b.standardOptimizeOption(.{});

    // const target = b.standardTargetOptions(.{});
    // const optimize = b.standardOptimizeOption(.{});

    // const libs = [_][]const u8{
    //      "appimgui"
    //     ,"cimgui"
    //     ,"fonticon"
    //     ,"glfw"
    //     ,"imcolortextedit"
    //     ,"imfileopendialog"
    //     ,"imguizmo"
    //     ,"imknobs"
    //     ,"imnodes"
    //     ,"impl_glfw"
    //     ,"impl_opengl3"
    //     ,"impl_sdl3"
    //     ,"impl_sdlgpu3"
    //     ,"implot"
    //     ,"implot3d"
    //     ,"imspinner"
    //     ,"imtoggle"
    //     ,"loadicon"
    //     ,"loadimage"
    //     ,"loadimage_sdlgpu3 gpu3"
    //     ,"raylib"
    //     ,"rlimgui"
    //     ,"saveimage"
    //     ,"sdl3"
    //     ,"setupfont"
    //     ,"utils"
    //     ,"zoomglass"
    // };

    // // Export libraries
    // inline for (libs) |lib_name| {
    //     const dep = b.dependency(lib_name, .{
    //         .target = target,
    //         .optimize = optimize,
    //     });
    //     _ = b.addModule(lib_name, .{
    //         .root_module = dep.module(lib_name),
    //     });
    // }
}
