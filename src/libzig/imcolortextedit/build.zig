const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "imcolortextedit";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/impl_imcolortextedit.zig"),
            .target = target,
            .optimize = optimize,
        });
    }else{
        const step = b.addTranslateC(.{
            .root_source_file = b.path("../../libc/cimCTE/cimCTE.h"),
            .target = target,
            .optimize = optimize,
        });
        step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
        step.addIncludePath(b.path("../../libc/cimgui"));
        mod = step.addModule(mod_name);
    }
    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));

    mod.addIncludePath(b.path("../../libc/cimCTE"));
    mod.addIncludePath(b.path("../../libc/cimCTE/ImGuiColorTextEdit"));
    mod.addIncludePath(b.path("../../libc/cimCTE/ImGuiColorTextEdit/vendor/regex/include"));

    // macro
    //mod.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/cimCTE/cimCTE.cpp",
            "../../libc/cimCTE/ImGuiColorTextEdit/ImGuiDebugPanel.cpp",
            "../../libc/cimCTE/ImGuiColorTextEdit/LanguageDefinitions.cpp",
            "../../libc/cimCTE/ImGuiColorTextEdit/TextEditor.cpp",
            "../../libc/cimCTE/ImGuiColorTextEdit/UnitTests.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
