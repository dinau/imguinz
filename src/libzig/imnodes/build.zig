const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "imnodes";

    // -------
    // module
    // -------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("../../libc/cimnodes/cimnodes.h"),
        .target = target,
        .optimize = optimize,
    });
    step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    step.addIncludePath(b.path("../../libc/cimgui"));
    step.addIncludePath(b.path("../../libc/cimnodes/cimnodes"));

    const mod = step.addModule(mod_name);
    mod.addCMacro("IMNODES_NAMESPACE", "imnodes"); // for imnodes
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimnodes/cimnodes.cpp",
            "../../libc/cimnodes/imnodes/imnodes.cpp",
        },
    });
}
