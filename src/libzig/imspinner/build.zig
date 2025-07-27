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
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/cimspinner_header.h"),
        .target = target,
        .optimize = optimize,
    });

    step.defineCMacro("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    step.addIncludePath(b.path("../../libc/cimgui"));
    step.addIncludePath(b.path("../../libc/cimspinner"));


    const mod = step.addModule(mod_name);
    mod.addImport(mod_name, mod);

    mod.addIncludePath(b.path("../../libc/cimgui/imgui"));
    mod.addIncludePath(b.path("../../libc/cimgui"));

    mod.addCMacro("IMSPINNER_DEMO", "");
    mod.addCMacro("SPINNER_RAINBOW", "");
    mod.addCMacro("SPINNER_RAINBOWMIX", "");
    mod.addCMacro("SPINNER_ROTATINGHEART", "");
    mod.addCMacro("SPINNER_ANG", "");
    mod.addCMacro("SPINNER_ANG8", "");
    mod.addCMacro("SPINNER_ANGMIX", "");
    mod.addCMacro("SPINNER_LOADINGRING", "");
    mod.addCMacro("SPINNER_CLOCK", "");
    mod.addCMacro("SPINNER_PULSAR", "");
    mod.addCMacro("SPINNER_DOUBLEFADEPULSAR", "");
    mod.addCMacro("SPINNER_TWINPULSAR", "");
    mod.addCMacro("SPINNER_FADEPULSAR", "");
    mod.addCMacro("SPINNER_FADEPULSARSQUARE", "");
    mod.addCMacro("SPINNER_CIRCULARLINES", "");
    mod.addCMacro("SPINNER_DOTS", "");
    mod.addCMacro("SPINNER_VDOTS", "");
    mod.addCMacro("SPINNER_BOUNCEDOTS", "");
    mod.addCMacro("SPINNER_ZIPDOTS", "");
    mod.addCMacro("SPINNER_DOTSTOPOINTS", "");
    mod.addCMacro("SPINNER_DOTSTOBAR", "");
    mod.addCMacro("SPINNER_WAVEDOTS", "");
    mod.addCMacro("SPINNER_FADEDOTS", "");
    mod.addCMacro("SPINNER_THREEDOTS", "");
    mod.addCMacro("SPINNER_FIVEDOTS", "");
    mod.addCMacro("SPINNER_4CALEIDOSPCOPE", "");
    mod.addCMacro("SPINNER_MULTIFADEDOTS", "");
    mod.addCMacro("SPINNER_THICKTOSIN", "");
    mod.addCMacro("SPINNER_SCALEDOTS", "");
    mod.addCMacro("SPINNER_SQUARESPINS", "");
    mod.addCMacro("SPINNER_MOVINGDOTS", "");
    mod.addCMacro("SPINNER_ROTATEDOTS", "");
    mod.addCMacro("SPINNER_ORIONDOTS", "");
    mod.addCMacro("SPINNER_GALAXYDOTS", "");
    mod.addCMacro("SPINNER_TWINANG", "");
    mod.addCMacro("SPINNER_FILLING", "");
    mod.addCMacro("SPINNER_FILLINGMEM", "");
    mod.addCMacro("SPINNER_TOPUP", "");
    mod.addCMacro("SPINNER_TWINANG180", "");
    mod.addCMacro("SPINNER_TWINANG360", "");
    mod.addCMacro("SPINNER_INCDOTS", "");
    mod.addCMacro("SPINNER_INCFULLDOTS", "");
    mod.addCMacro("SPINNER_FADEBARS", "");
    mod.addCMacro("SPINNER_FADETRIS", "");
    mod.addCMacro("SPINNER_BARSROTATEFADE", "");
    mod.addCMacro("SPINNER_BARSSCALEMIDDLE", "");
    mod.addCMacro("SPINNER_ANGTWIN", "");
    mod.addCMacro("SPINNER_ARCROTATION", "");
    mod.addCMacro("SPINNER_ARCFADE", "");
    mod.addCMacro("SPINNER_SIMPLEARCFADE", "");
    mod.addCMacro("SPINNER_SQUARESTROKEFADE", "");
    mod.addCMacro("SPINNER_ASCIISYMBOLPOINTS", "");
    mod.addCMacro("SPINNER_TEXTFADING", "");
    mod.addCMacro("SPINNER_SEVENSEGMENTS", "");
    mod.addCMacro("SPINNER_SQUARESTROKEFILL", "");
    mod.addCMacro("SPINNER_SQUARESTROKELOADING", "");
    mod.addCMacro("SPINNER_SQUARELOADING", "");
    mod.addCMacro("SPINNER_FILLEDARCFADE", "");
    mod.addCMacro("SPINNER_POINTSROLLER", "");
    mod.addCMacro("SPINNER_POINTSARCBOUNCE", "");
    mod.addCMacro("SPINNER_FILLEDARCCOLOR", "");
    mod.addCMacro("SPINNER_FILLEDARCRING", "");
    mod.addCMacro("SPINNER_ARCWEDGES", "");
    mod.addCMacro("SPINNER_TWINBALL", "");
    mod.addCMacro("SPINNER_SOLARBALLS", "");
    mod.addCMacro("SPINNER_SOLARSCALEBALLS", "");
    mod.addCMacro("SPINNER_SOLARARCS", "");
    mod.addCMacro("SPINNER_MOVINGARCS", "");
    mod.addCMacro("SPINNER_RAINBOWCIRCLE", "");
    mod.addCMacro("SPINNER_BOUNCEBALL", "");
    mod.addCMacro("SPINNER_PULSARBALL", "");
    mod.addCMacro("SPINNER_INCSCALEDOTS", "");
    mod.addCMacro("SPINNER_SOMESCALEDOTS", "");
    mod.addCMacro("SPINNER_ANGTRIPLE", "");
    mod.addCMacro("SPINNER_ANGECLIPSE", "");
    mod.addCMacro("SPINNER_INGYANG", "");
    mod.addCMacro("SPINNER_GOOEYBALLS", "");
    mod.addCMacro("SPINNER_DOTSLOADING", "");
    mod.addCMacro("SPINNER_ROTATEGOOEYBALLS", "");
    mod.addCMacro("SPINNER_HERBERTBALLS", "");
    mod.addCMacro("SPINNER_HERBERTBALLS3D", "");
    mod.addCMacro("SPINNER_ROTATETRIANGLES", "");
    mod.addCMacro("SPINNER_ROTATESHAPES", "");
    mod.addCMacro("SPINNER_SINSQUARES", "");
    mod.addCMacro("SPINNER_MOONLINE", "");
    mod.addCMacro("SPINNER_CIRCLEDROP", "");
    mod.addCMacro("SPINNER_SURROUNDEDINDICATOR", "");
    mod.addCMacro("SPINNER_WIFIINDICATOR", "");
    mod.addCMacro("SPINNER_TRIANGLESSELECTOR", "");
    mod.addCMacro("SPINNER_CAMERA", "");
    mod.addCMacro("SPINNER_FLOWINGGRADIENT", "");
    mod.addCMacro("SPINNER_ROTATESEGMENTS", "");
    mod.addCMacro("SPINNER_LEMNISCATE", "");
    mod.addCMacro("SPINNER_ROTATEGEAR", "");
    mod.addCMacro("SPINNER_ROTATEWHEEL", "");
    mod.addCMacro("SPINNER_ATOM", "");
    mod.addCMacro("SPINNER_PATTERNRINGS", "");
    mod.addCMacro("SPINNER_PATTERNECLIPSE", "");
    mod.addCMacro("SPINNER_PATTERNSPHERE", "");
    mod.addCMacro("SPINNER_RINGSYNCHRONOUS", "");
    mod.addCMacro("SPINNER_RINGWATERMARKS", "");
    mod.addCMacro("SPINNER_ROTATEDATOM", "");
    mod.addCMacro("SPINNER_RAINBOWBALLS", "");
    mod.addCMacro("SPINNER_RAINBOWSHOT", "");
    mod.addCMacro("SPINNER_SPIRAL", "");
    mod.addCMacro("SPINNER_SPIRALEYE", "");
    mod.addCMacro("SPINNER_BARCHARTSINE", "");
    mod.addCMacro("SPINNER_BARCHARTADVSINE", "");
    mod.addCMacro("SPINNER_BARCHARTADVSINEFADE", "");
    mod.addCMacro("SPINNER_BARCHARTRAINBOW", "");
    mod.addCMacro("SPINNER_BLOCKS", "");
    mod.addCMacro("SPINNER_TWINBLOCKS", "");
    mod.addCMacro("SPINNER_SQUARERANDOMDOTS", "");
    mod.addCMacro("SPINNER_SCALEBLOCKS", "");
    mod.addCMacro("SPINNER_SCALESQUARES", "");
    mod.addCMacro("SPINNER_SQUISHSQUARE", "");
    mod.addCMacro("SPINNER_FLUID", "");
    mod.addCMacro("SPINNER_FLUIDPOINTS", "");
    mod.addCMacro("SPINNER_ARCPOLARFADE", "");
    mod.addCMacro("SPINNER_ARCPOLARRADIUS", "");
    mod.addCMacro("SPINNER_CALEIDOSCOPE", "");
    mod.addCMacro("SPINNER_HBODOTS", "");
    mod.addCMacro("SPINNER_MOONDOTS", "");
    mod.addCMacro("SPINNER_TWINHBODOTS", "");
    mod.addCMacro("SPINNER_THREEDOTSSTAR", "");
    mod.addCMacro("SPINNER_SINEARCS", "");
    mod.addCMacro("SPINNER_TRIANGLESSHIFT", "");
    mod.addCMacro("SPINNER_POINTSSHIFT", "");
    mod.addCMacro("SPINNER_SWINGDOTS", "");
    mod.addCMacro("SPINNER_CIRCULARPOINTS", "");
    mod.addCMacro("SPINNER_CURVEDCIRCLE", "");
    mod.addCMacro("SPINNER_MODCIRCLE", "");
    mod.addCMacro("SPINNER_DNADOTS", "");
    mod.addCMacro("SPINNER_3SMUGGLEDOTS", "");
    mod.addCMacro("SPINNER_ROTATESEGMENTSPULSAR", "");
    mod.addCMacro("SPINNER_SPLINEANG", "");

    // macro
    mod.addCMacro("IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS", "");
    mod.addCMacro("ImDrawIdx", "unsigned int");
    mod.addCMacro("IMGUI_DISABLE_OBSOLETE_FUNCTIONS", "1");  // needs this line for imspinner

    switch (builtin.target.os.tag) {
        .windows => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\" __declspec(dllexport)"),
        .linux => mod.addCMacro("IMGUI_IMPL_API", "extern \"C\"  "),
        else => {},
    }
    mod.addCSourceFiles(.{
        .files = &.{
        "../../libc/cimspinner/cimspinner.cpp",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
    //std.debug.print("{s} module\n",.{mod_name});
}
