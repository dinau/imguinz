const struct_unnamed_2 = extern struct {
    Top: f32 = @import("std").mem.zeroes(f32),
    Left: f32 = @import("std").mem.zeroes(f32),
    Bottom: f32 = @import("std").mem.zeroes(f32),
    Right: f32 = @import("std").mem.zeroes(f32),
};
const union_unnamed_1 = extern union {
    Offsets: [4]f32,
    unnamed_0: struct_unnamed_2,
};
pub const ImOffsetRect = struct_ImOffsetRect;
pub const struct_ImOffsetRect = extern struct {
    unnamed_0: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
};
pub const ImVec2 = struct_ImVec2_c;
pub const ImVec4 = struct_ImVec4_c;
pub const struct_ImVec2_c = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
};
pub const struct_ImVec4_c = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    z: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
};

pub const struct_ImGuiTogglePalette = extern struct {
    Knob: ImVec4 = @import("std").mem.zeroes(ImVec4),
    KnobHover: ImVec4 = @import("std").mem.zeroes(ImVec4),
    Frame: ImVec4 = @import("std").mem.zeroes(ImVec4),
    FrameHover: ImVec4 = @import("std").mem.zeroes(ImVec4),
    FrameBorder: ImVec4 = @import("std").mem.zeroes(ImVec4),
    FrameShadow: ImVec4 = @import("std").mem.zeroes(ImVec4),
    KnobBorder: ImVec4 = @import("std").mem.zeroes(ImVec4),
    KnobShadow: ImVec4 = @import("std").mem.zeroes(ImVec4),
    A11yGlyph: ImVec4 = @import("std").mem.zeroes(ImVec4),
};
pub const ImGuiTogglePalette = struct_ImGuiTogglePalette;
pub const ImGuiToggleFlags = c_int;
pub const struct_ImGuiToggleStateConfig = extern struct {
    FrameBorderThickness: f32 = @import("std").mem.zeroes(f32),
    FrameShadowThickness: f32 = @import("std").mem.zeroes(f32),
    KnobBorderThickness: f32 = @import("std").mem.zeroes(f32),
    KnobShadowThickness: f32 = @import("std").mem.zeroes(f32),
    Label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    KnobInset: ImOffsetRect = @import("std").mem.zeroes(ImOffsetRect),
    KnobOffset: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Palette: [*c]const ImGuiTogglePalette = @import("std").mem.zeroes([*c]const ImGuiTogglePalette),
};
pub const ImGuiToggleStateConfig = struct_ImGuiToggleStateConfig;
pub const struct_ImGuiToggleConfig = extern struct {
    Flags: ImGuiToggleFlags = @import("std").mem.zeroes(ImGuiToggleFlags),
    A11yStyle: ImGuiToggleFlags = @import("std").mem.zeroes(ImGuiToggleFlags),
    AnimationDuration: f32 = @import("std").mem.zeroes(f32),
    FrameRounding: f32 = @import("std").mem.zeroes(f32),
    KnobRounding: f32 = @import("std").mem.zeroes(f32),
    WidthRatio: f32 = @import("std").mem.zeroes(f32),
    Size: ImVec2 = @import("std").mem.zeroes(ImVec2),
    On: ImGuiToggleStateConfig = @import("std").mem.zeroes(ImGuiToggleStateConfig),
    Off: ImGuiToggleStateConfig = @import("std").mem.zeroes(ImGuiToggleStateConfig),
};
pub const ImGuiToggleConfig = struct_ImGuiToggleConfig;
pub const ImGuiToggleA11yStyle = c_int;
pub const ImGuiToggleFlags_None: c_int = 0;
pub const ImGuiToggleFlags_Animated: c_int = 1;
pub const ImGuiToggleFlags_BorderedFrame: c_int = 8;
pub const ImGuiToggleFlags_BorderedKnob: c_int = 16;
pub const ImGuiToggleFlags_ShadowedFrame: c_int = 32;
pub const ImGuiToggleFlags_ShadowedKnob: c_int = 64;
pub const ImGuiToggleFlags_A11y: c_int = 256;
pub const ImGuiToggleFlags_Bordered: c_int = 24;
pub const ImGuiToggleFlags_Shadowed: c_int = 96;
pub const ImGuiToggleFlags_Default: c_int = 0;
pub const enum_ImGuiToggleFlags_ = c_uint;
pub const ImGuiToggleA11yStyle_Label: c_int = 0;
pub const ImGuiToggleA11yStyle_Glyph: c_int = 1;
pub const ImGuiToggleA11yStyle_Dot: c_int = 2;
pub const ImGuiToggleA11yStyle_Default: c_int = 0;
pub const enum_ImGuiToggleA11yStyle_ = c_uint;
pub extern fn Toggle(label: [*c]const u8, v: [*c]bool, size: ImVec2) bool;
pub extern fn ToggleFlag(label: [*c]const u8, v: [*c]bool, flags: ImGuiToggleFlags, size: ImVec2) bool;
pub extern fn ToggleAnim(label: [*c]const u8, v: [*c]bool, flags: ImGuiToggleFlags, animation_duration: f32, size: ImVec2) bool;
pub extern fn ToggleCfg(label: [*c]const u8, v: [*c]bool, config: ImGuiToggleConfig) bool;
pub extern fn ToggleRound(label: [*c]const u8, v: [*c]bool, flags: ImGuiToggleFlags, frame_rounding: f32, knob_rounding: f32, size: ImVec2) bool;
pub extern fn ToggleAnimRound(label: [*c]const u8, v: [*c]bool, flags: ImGuiToggleFlags, animation_duration: f32, frame_rounding: f32, knob_rounding: f32, size: ImVec2) bool;
pub const ImGuiToggleConstants_Phi = @as(f32, 1.6180339887498948482045);
pub const ImGuiToggleConstants_DiameterToRadiusRatio = @as(f32, 0.5);
pub const ImGuiToggleConstants_AnimationDurationDisabled = @as(f32, 0.0);
pub const ImGuiToggleConstants_AnimationDurationDefault = @as(f32, 0.1);
pub const ImGuiToggleConstants_AnimationDurationMinimum = ImGuiToggleConstants_AnimationDurationDisabled;
pub const ImGuiToggleConstants_FrameRoundingDefault = @as(f32, 1.0);
pub const ImGuiToggleConstants_FrameRoundingMinimum = @as(f32, 0.0);
pub const ImGuiToggleConstants_FrameRoundingMaximum = @as(f32, 1.0);
pub const ImGuiToggleConstants_KnobRoundingDefault = @as(f32, 1.0);
pub const ImGuiToggleConstants_KnobRoundingMinimum = @as(f32, 0.0);
pub const ImGuiToggleConstants_KnobRoundingMaximum = @as(f32, 1.0);
pub const ImGuiToggleConstants_WidthRatioDefault = ImGuiToggleConstants_Phi;
pub const ImGuiToggleConstants_WidthRatioMinimum = @as(f32, 1.0);
pub const ImGuiToggleConstants_WidthRatioMaximum = @as(f32, 10.0);
pub const ImGuiToggleConstants_KnobInsetMinimum = -@as(f32, 100.0);
pub const ImGuiToggleConstants_KnobInsetMaximum = @as(f32, 100.0);
pub const ImGuiToggleConstants_BorderThicknessDefault = @as(f32, 1.0);
pub const ImGuiToggleConstants_ShadowThicknessDefault = @as(f32, 2.0);
pub const ImGuiToggleFlags_ = enum_ImGuiToggleFlags_;
pub const ImGuiToggleA11yStyle_ = enum_ImGuiToggleA11yStyle_;
