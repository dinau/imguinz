pub const struct__iobuf = extern struct {
    _placeholder: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const FILE = struct__iobuf;
pub const va_list = [*c]u8;
pub const struct_ImVec4 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    z: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec4 = struct_ImVec4;
pub const ImU64 = c_ulonglong;
pub const ImTextureID = ImU64;
pub const ImDrawIdx = c_ushort;
pub const struct_ImVector_ImDrawIdx = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawIdx = @import("std").mem.zeroes([*c]ImDrawIdx),
};
pub const ImVector_ImDrawIdx = struct_ImVector_ImDrawIdx;
pub const struct_ImVec2 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec2 = struct_ImVec2;
pub const ImU32 = c_uint;
pub const struct_ImDrawVert = extern struct {
    pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    uv: ImVec2 = @import("std").mem.zeroes(ImVec2),
    col: ImU32 = @import("std").mem.zeroes(ImU32),
};
pub const ImDrawVert = struct_ImDrawVert;
pub const struct_ImVector_ImDrawVert = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawVert = @import("std").mem.zeroes([*c]ImDrawVert),
};
pub const ImVector_ImDrawVert = struct_ImVector_ImDrawVert;
pub const ImDrawListFlags = c_int;
pub const struct_ImVector_float = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]f32 = @import("std").mem.zeroes([*c]f32),
};
pub const ImVector_float = struct_ImVector_float;
pub const ImU16 = c_ushort;
pub const struct_ImVector_ImU16 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU16 = @import("std").mem.zeroes([*c]ImU16),
};
pub const ImVector_ImU16 = struct_ImVector_ImU16;
pub const struct_ImFontGlyph = opaque {};
pub const ImFontGlyph = struct_ImFontGlyph;
pub const struct_ImVector_ImFontGlyph = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImFontGlyph = @import("std").mem.zeroes(?*ImFontGlyph),
};
pub const ImVector_ImFontGlyph = struct_ImVector_ImFontGlyph;
pub const ImFontAtlasFlags = c_int;
pub const struct_ImVector_ImFontPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImFont = @import("std").mem.zeroes([*c][*c]ImFont),
};
pub const ImVector_ImFontPtr = struct_ImVector_ImFontPtr;
pub const struct_ImFontAtlasCustomRect = opaque {};
pub const ImFontAtlasCustomRect = struct_ImFontAtlasCustomRect;
pub const struct_ImVector_ImFontAtlasCustomRect = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImFontAtlasCustomRect = @import("std").mem.zeroes(?*ImFontAtlasCustomRect),
};
pub const ImVector_ImFontAtlasCustomRect = struct_ImVector_ImFontAtlasCustomRect;
pub const ImWchar16 = c_ushort;
pub const ImWchar = ImWchar16;
pub const struct_ImFontConfig = extern struct {
    FontData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    FontDataSize: c_int = @import("std").mem.zeroes(c_int),
    FontDataOwnedByAtlas: bool = @import("std").mem.zeroes(bool),
    MergeMode: bool = @import("std").mem.zeroes(bool),
    PixelSnapH: bool = @import("std").mem.zeroes(bool),
    FontNo: c_int = @import("std").mem.zeroes(c_int),
    OversampleH: c_int = @import("std").mem.zeroes(c_int),
    OversampleV: c_int = @import("std").mem.zeroes(c_int),
    SizePixels: f32 = @import("std").mem.zeroes(f32),
    GlyphOffset: ImVec2 = @import("std").mem.zeroes(ImVec2),
    GlyphRanges: [*c]const ImWchar = @import("std").mem.zeroes([*c]const ImWchar),
    GlyphMinAdvanceX: f32 = @import("std").mem.zeroes(f32),
    GlyphMaxAdvanceX: f32 = @import("std").mem.zeroes(f32),
    GlyphExtraAdvanceX: f32 = @import("std").mem.zeroes(f32),
    FontBuilderFlags: c_uint = @import("std").mem.zeroes(c_uint),
    RasterizerMultiply: f32 = @import("std").mem.zeroes(f32),
    RasterizerDensity: f32 = @import("std").mem.zeroes(f32),
    EllipsisChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    Name: [40]u8 = @import("std").mem.zeroes([40]u8),
    DstFont: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
};
pub const ImFontConfig = struct_ImFontConfig;
pub const struct_ImVector_ImFontConfig = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImFontConfig = @import("std").mem.zeroes([*c]ImFontConfig),
};
pub const ImVector_ImFontConfig = struct_ImVector_ImFontConfig;
pub const struct_ImFontBuilderIO = extern struct {
    FontBuilder_Build: ?*const fn ([*c]ImFontAtlas) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas) callconv(.c) bool),
};
pub const ImFontBuilderIO = struct_ImFontBuilderIO;
pub const struct_ImFontAtlas = extern struct {
    Flags: ImFontAtlasFlags = @import("std").mem.zeroes(ImFontAtlasFlags),
    TexID: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    TexDesiredWidth: c_int = @import("std").mem.zeroes(c_int),
    TexGlyphPadding: c_int = @import("std").mem.zeroes(c_int),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Locked: bool = @import("std").mem.zeroes(bool),
    TexReady: bool = @import("std").mem.zeroes(bool),
    TexPixelsUseColors: bool = @import("std").mem.zeroes(bool),
    TexPixelsAlpha8: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    TexPixelsRGBA32: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
    TexWidth: c_int = @import("std").mem.zeroes(c_int),
    TexHeight: c_int = @import("std").mem.zeroes(c_int),
    TexUvScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TexUvWhitePixel: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Fonts: ImVector_ImFontPtr = @import("std").mem.zeroes(ImVector_ImFontPtr),
    CustomRects: ImVector_ImFontAtlasCustomRect = @import("std").mem.zeroes(ImVector_ImFontAtlasCustomRect),
    Sources: ImVector_ImFontConfig = @import("std").mem.zeroes(ImVector_ImFontConfig),
    TexUvLines: [33]ImVec4 = @import("std").mem.zeroes([33]ImVec4),
    FontBuilderIO: [*c]const ImFontBuilderIO = @import("std").mem.zeroes([*c]const ImFontBuilderIO),
    FontBuilderFlags: c_uint = @import("std").mem.zeroes(c_uint),
    PackIdMouseCursors: c_int = @import("std").mem.zeroes(c_int),
    PackIdLines: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImFontAtlas = struct_ImFontAtlas;
pub const ImU8 = u8;
pub const struct_ImFont = extern struct {
    IndexAdvanceX: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    FallbackAdvanceX: f32 = @import("std").mem.zeroes(f32),
    FontSize: f32 = @import("std").mem.zeroes(f32),
    IndexLookup: ImVector_ImU16 = @import("std").mem.zeroes(ImVector_ImU16),
    Glyphs: ImVector_ImFontGlyph = @import("std").mem.zeroes(ImVector_ImFontGlyph),
    FallbackGlyph: ?*ImFontGlyph = @import("std").mem.zeroes(?*ImFontGlyph),
    ContainerAtlas: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    Sources: [*c]ImFontConfig = @import("std").mem.zeroes([*c]ImFontConfig),
    SourcesCount: c_short = @import("std").mem.zeroes(c_short),
    EllipsisCharCount: c_short = @import("std").mem.zeroes(c_short),
    EllipsisChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    FallbackChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    EllipsisWidth: f32 = @import("std").mem.zeroes(f32),
    EllipsisCharStep: f32 = @import("std").mem.zeroes(f32),
    Scale: f32 = @import("std").mem.zeroes(f32),
    Ascent: f32 = @import("std").mem.zeroes(f32),
    Descent: f32 = @import("std").mem.zeroes(f32),
    MetricsTotalSurface: c_int = @import("std").mem.zeroes(c_int),
    DirtyLookupTables: bool = @import("std").mem.zeroes(bool),
    Used8kPagesMap: [1]ImU8 = @import("std").mem.zeroes([1]ImU8),
};
pub const ImFont = struct_ImFont;
pub const struct_ImVector_ImVec2 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImVec2 = @import("std").mem.zeroes([*c]ImVec2),
};
pub const ImVector_ImVec2 = struct_ImVector_ImVec2;
pub const struct_ImDrawListSharedData = extern struct {
    TexUvWhitePixel: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TexUvLines: [*c]const ImVec4 = @import("std").mem.zeroes([*c]const ImVec4),
    Font: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    FontSize: f32 = @import("std").mem.zeroes(f32),
    FontScale: f32 = @import("std").mem.zeroes(f32),
    CurveTessellationTol: f32 = @import("std").mem.zeroes(f32),
    CircleSegmentMaxError: f32 = @import("std").mem.zeroes(f32),
    InitialFringeScale: f32 = @import("std").mem.zeroes(f32),
    InitialFlags: ImDrawListFlags = @import("std").mem.zeroes(ImDrawListFlags),
    ClipRectFullscreen: ImVec4 = @import("std").mem.zeroes(ImVec4),
    TempBuffer: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    ArcFastVtx: [48]ImVec2 = @import("std").mem.zeroes([48]ImVec2),
    ArcFastRadiusCutoff: f32 = @import("std").mem.zeroes(f32),
    CircleSegmentCounts: [64]ImU8 = @import("std").mem.zeroes([64]ImU8),
};
pub const ImDrawListSharedData = struct_ImDrawListSharedData;
pub const struct_ImDrawCmdHeader = extern struct {
    ClipRect: ImVec4 = @import("std").mem.zeroes(ImVec4),
    TextureId: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    VtxOffset: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ImDrawCmdHeader = struct_ImDrawCmdHeader;
pub const ImDrawChannel = struct_ImDrawChannel;
pub const struct_ImVector_ImDrawChannel = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawChannel = @import("std").mem.zeroes([*c]ImDrawChannel),
};
pub const ImVector_ImDrawChannel = struct_ImVector_ImDrawChannel;
pub const struct_ImDrawListSplitter = extern struct {
    _Current: c_int = @import("std").mem.zeroes(c_int),
    _Count: c_int = @import("std").mem.zeroes(c_int),
    _Channels: ImVector_ImDrawChannel = @import("std").mem.zeroes(ImVector_ImDrawChannel),
};
pub const ImDrawListSplitter = struct_ImDrawListSplitter;
pub const struct_ImVector_ImVec4 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImVec4 = @import("std").mem.zeroes([*c]ImVec4),
};
pub const ImVector_ImVec4 = struct_ImVector_ImVec4;
pub const struct_ImVector_ImTextureID = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImTextureID = @import("std").mem.zeroes([*c]ImTextureID),
};
pub const ImVector_ImTextureID = struct_ImVector_ImTextureID;
pub const struct_ImVector_ImU8 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU8 = @import("std").mem.zeroes([*c]ImU8),
};
pub const ImVector_ImU8 = struct_ImVector_ImU8;
pub const struct_ImDrawList = extern struct {
    CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
    VtxBuffer: ImVector_ImDrawVert = @import("std").mem.zeroes(ImVector_ImDrawVert),
    Flags: ImDrawListFlags = @import("std").mem.zeroes(ImDrawListFlags),
    _VtxCurrentIdx: c_uint = @import("std").mem.zeroes(c_uint),
    _Data: [*c]ImDrawListSharedData = @import("std").mem.zeroes([*c]ImDrawListSharedData),
    _VtxWritePtr: [*c]ImDrawVert = @import("std").mem.zeroes([*c]ImDrawVert),
    _IdxWritePtr: [*c]ImDrawIdx = @import("std").mem.zeroes([*c]ImDrawIdx),
    _Path: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    _CmdHeader: ImDrawCmdHeader = @import("std").mem.zeroes(ImDrawCmdHeader),
    _Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    _ClipRectStack: ImVector_ImVec4 = @import("std").mem.zeroes(ImVector_ImVec4),
    _TextureIdStack: ImVector_ImTextureID = @import("std").mem.zeroes(ImVector_ImTextureID),
    _CallbacksDataBuf: ImVector_ImU8 = @import("std").mem.zeroes(ImVector_ImU8),
    _FringeScale: f32 = @import("std").mem.zeroes(f32),
    _OwnerName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImDrawList = struct_ImDrawList;
pub const ImDrawCallback = ?*const fn ([*c]const ImDrawList, [*c]const ImDrawCmd) callconv(.c) void;
pub const struct_ImDrawCmd = extern struct {
    ClipRect: ImVec4 = @import("std").mem.zeroes(ImVec4),
    TextureId: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    VtxOffset: c_uint = @import("std").mem.zeroes(c_uint),
    IdxOffset: c_uint = @import("std").mem.zeroes(c_uint),
    ElemCount: c_uint = @import("std").mem.zeroes(c_uint),
    UserCallback: ImDrawCallback = @import("std").mem.zeroes(ImDrawCallback),
    UserCallbackData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    UserCallbackDataSize: c_int = @import("std").mem.zeroes(c_int),
    UserCallbackDataOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImDrawCmd = struct_ImDrawCmd;
pub const struct_ImVector_ImDrawCmd = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawCmd = @import("std").mem.zeroes([*c]ImDrawCmd),
};
pub const ImVector_ImDrawCmd = struct_ImVector_ImDrawCmd;
pub const struct_ImDrawChannel = extern struct {
    _CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    _IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
};
pub const struct_ImVector_ImDrawListPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImDrawList = @import("std").mem.zeroes([*c][*c]ImDrawList),
};
pub const ImVector_ImDrawListPtr = struct_ImVector_ImDrawListPtr;
pub const ImGuiID = c_uint;
pub const ImGuiViewportFlags = c_int;
pub const ImDrawData = struct_ImDrawData;
pub const struct_ImGuiViewport = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    Pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Size: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DpiScale: f32 = @import("std").mem.zeroes(f32),
    ParentViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DrawData: [*c]ImDrawData = @import("std").mem.zeroes([*c]ImDrawData),
    RendererUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformHandle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformHandleRaw: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformWindowCreated: bool = @import("std").mem.zeroes(bool),
    PlatformRequestMove: bool = @import("std").mem.zeroes(bool),
    PlatformRequestResize: bool = @import("std").mem.zeroes(bool),
    PlatformRequestClose: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiViewport = struct_ImGuiViewport;
pub const struct_ImDrawData = extern struct {
    Valid: bool = @import("std").mem.zeroes(bool),
    CmdListsCount: c_int = @import("std").mem.zeroes(c_int),
    TotalIdxCount: c_int = @import("std").mem.zeroes(c_int),
    TotalVtxCount: c_int = @import("std").mem.zeroes(c_int),
    CmdLists: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
    DisplayPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplaySize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FramebufferScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    OwnerViewport: [*c]ImGuiViewport = @import("std").mem.zeroes([*c]ImGuiViewport),
};
pub const struct_ImVector_ImU32 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU32 = @import("std").mem.zeroes([*c]ImU32),
};
pub const ImVector_ImU32 = struct_ImVector_ImU32;
pub const struct_ImFontGlyphRangesBuilder = extern struct {
    UsedChars: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
};
pub const ImFontGlyphRangesBuilder = struct_ImFontGlyphRangesBuilder;
pub const struct_ImColor = extern struct {
    Value: ImVec4 = @import("std").mem.zeroes(ImVec4),
};
pub const ImColor = struct_ImColor;
pub const ImGuiConfigFlags = c_int;
pub const ImGuiBackendFlags = c_int;
pub const ImGuiContext = struct_ImGuiContext;
pub const ImGuiKeyChord = c_int;
pub const struct_ImGuiKeyData = extern struct {
    Down: bool = @import("std").mem.zeroes(bool),
    DownDuration: f32 = @import("std").mem.zeroes(f32),
    DownDurationPrev: f32 = @import("std").mem.zeroes(f32),
    AnalogValue: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiKeyData = struct_ImGuiKeyData;
pub const struct_ImVector_ImWchar = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImWchar = @import("std").mem.zeroes([*c]ImWchar),
};
pub const ImVector_ImWchar = struct_ImVector_ImWchar;
pub const struct_ImGuiIO = extern struct {
    ConfigFlags: ImGuiConfigFlags = @import("std").mem.zeroes(ImGuiConfigFlags),
    BackendFlags: ImGuiBackendFlags = @import("std").mem.zeroes(ImGuiBackendFlags),
    DisplaySize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DeltaTime: f32 = @import("std").mem.zeroes(f32),
    IniSavingRate: f32 = @import("std").mem.zeroes(f32),
    IniFilename: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    LogFilename: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Fonts: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    FontGlobalScale: f32 = @import("std").mem.zeroes(f32),
    FontAllowUserScaling: bool = @import("std").mem.zeroes(bool),
    FontDefault: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    DisplayFramebufferScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ConfigNavSwapGamepadButtons: bool = @import("std").mem.zeroes(bool),
    ConfigNavMoveSetMousePos: bool = @import("std").mem.zeroes(bool),
    ConfigNavCaptureKeyboard: bool = @import("std").mem.zeroes(bool),
    ConfigNavEscapeClearFocusItem: bool = @import("std").mem.zeroes(bool),
    ConfigNavEscapeClearFocusWindow: bool = @import("std").mem.zeroes(bool),
    ConfigNavCursorVisibleAuto: bool = @import("std").mem.zeroes(bool),
    ConfigNavCursorVisibleAlways: bool = @import("std").mem.zeroes(bool),
    ConfigDockingNoSplit: bool = @import("std").mem.zeroes(bool),
    ConfigDockingWithShift: bool = @import("std").mem.zeroes(bool),
    ConfigDockingAlwaysTabBar: bool = @import("std").mem.zeroes(bool),
    ConfigDockingTransparentPayload: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoAutoMerge: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoTaskBarIcon: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoDecoration: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoDefaultParent: bool = @import("std").mem.zeroes(bool),
    MouseDrawCursor: bool = @import("std").mem.zeroes(bool),
    ConfigMacOSXBehaviors: bool = @import("std").mem.zeroes(bool),
    ConfigInputTrickleEventQueue: bool = @import("std").mem.zeroes(bool),
    ConfigInputTextCursorBlink: bool = @import("std").mem.zeroes(bool),
    ConfigInputTextEnterKeepActive: bool = @import("std").mem.zeroes(bool),
    ConfigDragClickToInputText: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsResizeFromEdges: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsMoveFromTitleBarOnly: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsCopyContentsWithCtrlC: bool = @import("std").mem.zeroes(bool),
    ConfigScrollbarScrollByPage: bool = @import("std").mem.zeroes(bool),
    ConfigMemoryCompactTimer: f32 = @import("std").mem.zeroes(f32),
    MouseDoubleClickTime: f32 = @import("std").mem.zeroes(f32),
    MouseDoubleClickMaxDist: f32 = @import("std").mem.zeroes(f32),
    MouseDragThreshold: f32 = @import("std").mem.zeroes(f32),
    KeyRepeatDelay: f32 = @import("std").mem.zeroes(f32),
    KeyRepeatRate: f32 = @import("std").mem.zeroes(f32),
    ConfigErrorRecovery: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableAssert: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableDebugLog: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableTooltip: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIsDebuggerPresent: bool = @import("std").mem.zeroes(bool),
    ConfigDebugHighlightIdConflicts: bool = @import("std").mem.zeroes(bool),
    ConfigDebugHighlightIdConflictsShowItemPicker: bool = @import("std").mem.zeroes(bool),
    ConfigDebugBeginReturnValueOnce: bool = @import("std").mem.zeroes(bool),
    ConfigDebugBeginReturnValueLoop: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIgnoreFocusLoss: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIniSettings: bool = @import("std").mem.zeroes(bool),
    BackendPlatformName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    BackendRendererName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    BackendPlatformUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BackendRendererUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BackendLanguageUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    WantCaptureMouse: bool = @import("std").mem.zeroes(bool),
    WantCaptureKeyboard: bool = @import("std").mem.zeroes(bool),
    WantTextInput: bool = @import("std").mem.zeroes(bool),
    WantSetMousePos: bool = @import("std").mem.zeroes(bool),
    WantSaveIniSettings: bool = @import("std").mem.zeroes(bool),
    NavActive: bool = @import("std").mem.zeroes(bool),
    NavVisible: bool = @import("std").mem.zeroes(bool),
    Framerate: f32 = @import("std").mem.zeroes(f32),
    MetricsRenderVertices: c_int = @import("std").mem.zeroes(c_int),
    MetricsRenderIndices: c_int = @import("std").mem.zeroes(c_int),
    MetricsRenderWindows: c_int = @import("std").mem.zeroes(c_int),
    MetricsActiveWindows: c_int = @import("std").mem.zeroes(c_int),
    MouseDelta: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    MousePos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MouseDown: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheel: f32 = @import("std").mem.zeroes(f32),
    MouseWheelH: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
    MouseHoveredViewport: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    KeyCtrl: bool = @import("std").mem.zeroes(bool),
    KeyShift: bool = @import("std").mem.zeroes(bool),
    KeyAlt: bool = @import("std").mem.zeroes(bool),
    KeySuper: bool = @import("std").mem.zeroes(bool),
    KeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    KeysData: [155]ImGuiKeyData = @import("std").mem.zeroes([155]ImGuiKeyData),
    WantCaptureMouseUnlessPopupClose: bool = @import("std").mem.zeroes(bool),
    MousePosPrev: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MouseClickedPos: [5]ImVec2 = @import("std").mem.zeroes([5]ImVec2),
    MouseClickedTime: [5]f64 = @import("std").mem.zeroes([5]f64),
    MouseClicked: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseDoubleClicked: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseClickedCount: [5]ImU16 = @import("std").mem.zeroes([5]ImU16),
    MouseClickedLastCount: [5]ImU16 = @import("std").mem.zeroes([5]ImU16),
    MouseReleased: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseReleasedTime: [5]f64 = @import("std").mem.zeroes([5]f64),
    MouseDownOwned: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseDownOwnedUnlessPopupClose: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheelRequestAxisSwap: bool = @import("std").mem.zeroes(bool),
    MouseCtrlLeftAsRightClick: bool = @import("std").mem.zeroes(bool),
    MouseDownDuration: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDownDurationPrev: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDragMaxDistanceAbs: [5]ImVec2 = @import("std").mem.zeroes([5]ImVec2),
    MouseDragMaxDistanceSqr: [5]f32 = @import("std").mem.zeroes([5]f32),
    PenPressure: f32 = @import("std").mem.zeroes(f32),
    AppFocusLost: bool = @import("std").mem.zeroes(bool),
    AppAcceptingEvents: bool = @import("std").mem.zeroes(bool),
    InputQueueSurrogate: ImWchar16 = @import("std").mem.zeroes(ImWchar16),
    InputQueueCharacters: ImVector_ImWchar = @import("std").mem.zeroes(ImVector_ImWchar),
};
pub const ImGuiIO = struct_ImGuiIO;
pub const struct_ImGuiPlatformImeData = extern struct {
    WantVisible: bool = @import("std").mem.zeroes(bool),
    InputPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    InputLineHeight: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiPlatformImeData = struct_ImGuiPlatformImeData;
pub const struct_ImGuiPlatformMonitor = extern struct {
    MainPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MainSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DpiScale: f32 = @import("std").mem.zeroes(f32),
    PlatformHandle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiPlatformMonitor = struct_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiPlatformMonitor = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPlatformMonitor = @import("std").mem.zeroes([*c]ImGuiPlatformMonitor),
};
pub const ImVector_ImGuiPlatformMonitor = struct_ImVector_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiViewportPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImGuiViewport = @import("std").mem.zeroes([*c][*c]ImGuiViewport),
};
pub const ImVector_ImGuiViewportPtr = struct_ImVector_ImGuiViewportPtr;
pub const struct_ImGuiPlatformIO = extern struct {
    Platform_GetClipboardTextFn: ?*const fn (?*ImGuiContext) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (?*ImGuiContext) callconv(.c) [*c]const u8),
    Platform_SetClipboardTextFn: ?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) void),
    Platform_ClipboardUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_OpenInShellFn: ?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) bool),
    Platform_OpenInShellUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_SetImeDataFn: ?*const fn (?*ImGuiContext, [*c]ImGuiViewport, [*c]ImGuiPlatformImeData) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiViewport, [*c]ImGuiPlatformImeData) callconv(.c) void),
    Platform_ImeUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_LocaleDecimalPoint: ImWchar = @import("std").mem.zeroes(ImWchar),
    Renderer_RenderState: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_ShowWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_SetWindowPos: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Platform_GetWindowPos: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2),
    Platform_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Platform_GetWindowSize: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2),
    Platform_SetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_GetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) bool),
    Platform_GetWindowMinimized: ?*const fn ([*c]ImGuiViewport) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) bool),
    Platform_SetWindowTitle: ?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.c) void),
    Platform_SetWindowAlpha: ?*const fn ([*c]ImGuiViewport, f32) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, f32) callconv(.c) void),
    Platform_UpdateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Platform_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Platform_GetWindowDpiScale: ?*const fn ([*c]ImGuiViewport) callconv(.c) f32 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) f32),
    Platform_OnChangedViewport: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_GetWindowWorkAreaInsets: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec4 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec4),
    Platform_CreateVkSurface: ?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.c) c_int),
    Renderer_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Renderer_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Renderer_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Renderer_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Renderer_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Monitors: ImVector_ImGuiPlatformMonitor = @import("std").mem.zeroes(ImVector_ImGuiPlatformMonitor),
    Viewports: ImVector_ImGuiViewportPtr = @import("std").mem.zeroes(ImVector_ImGuiViewportPtr),
};
pub const ImGuiPlatformIO = struct_ImGuiPlatformIO;
pub const ImGuiHoveredFlags = c_int;
pub const struct_ImGuiStyle = extern struct {
    Alpha: f32 = @import("std").mem.zeroes(f32),
    DisabledAlpha: f32 = @import("std").mem.zeroes(f32),
    WindowPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowRounding: f32 = @import("std").mem.zeroes(f32),
    WindowBorderSize: f32 = @import("std").mem.zeroes(f32),
    WindowBorderHoverPadding: f32 = @import("std").mem.zeroes(f32),
    WindowMinSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowTitleAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowMenuButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ChildRounding: f32 = @import("std").mem.zeroes(f32),
    ChildBorderSize: f32 = @import("std").mem.zeroes(f32),
    PopupRounding: f32 = @import("std").mem.zeroes(f32),
    PopupBorderSize: f32 = @import("std").mem.zeroes(f32),
    FramePadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FrameRounding: f32 = @import("std").mem.zeroes(f32),
    FrameBorderSize: f32 = @import("std").mem.zeroes(f32),
    ItemSpacing: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ItemInnerSpacing: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CellPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TouchExtraPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    IndentSpacing: f32 = @import("std").mem.zeroes(f32),
    ColumnsMinSpacing: f32 = @import("std").mem.zeroes(f32),
    ScrollbarSize: f32 = @import("std").mem.zeroes(f32),
    ScrollbarRounding: f32 = @import("std").mem.zeroes(f32),
    GrabMinSize: f32 = @import("std").mem.zeroes(f32),
    GrabRounding: f32 = @import("std").mem.zeroes(f32),
    LogSliderDeadzone: f32 = @import("std").mem.zeroes(f32),
    ImageBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabRounding: f32 = @import("std").mem.zeroes(f32),
    TabBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabCloseButtonMinWidthSelected: f32 = @import("std").mem.zeroes(f32),
    TabCloseButtonMinWidthUnselected: f32 = @import("std").mem.zeroes(f32),
    TabBarBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabBarOverlineSize: f32 = @import("std").mem.zeroes(f32),
    TableAngledHeadersAngle: f32 = @import("std").mem.zeroes(f32),
    TableAngledHeadersTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ColorButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ButtonTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SelectableTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SeparatorTextBorderSize: f32 = @import("std").mem.zeroes(f32),
    SeparatorTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SeparatorTextPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplayWindowPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplaySafeAreaPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DockingSeparatorSize: f32 = @import("std").mem.zeroes(f32),
    MouseCursorScale: f32 = @import("std").mem.zeroes(f32),
    AntiAliasedLines: bool = @import("std").mem.zeroes(bool),
    AntiAliasedLinesUseTex: bool = @import("std").mem.zeroes(bool),
    AntiAliasedFill: bool = @import("std").mem.zeroes(bool),
    CurveTessellationTol: f32 = @import("std").mem.zeroes(f32),
    CircleTessellationMaxError: f32 = @import("std").mem.zeroes(f32),
    Colors: [58]ImVec4 = @import("std").mem.zeroes([58]ImVec4),
    HoverStationaryDelay: f32 = @import("std").mem.zeroes(f32),
    HoverDelayShort: f32 = @import("std").mem.zeroes(f32),
    HoverDelayNormal: f32 = @import("std").mem.zeroes(f32),
    HoverFlagsForTooltipMouse: ImGuiHoveredFlags = @import("std").mem.zeroes(ImGuiHoveredFlags),
    HoverFlagsForTooltipNav: ImGuiHoveredFlags = @import("std").mem.zeroes(ImGuiHoveredFlags),
};
pub const ImGuiStyle = struct_ImGuiStyle;
pub const struct_ImGuiInputEventMousePos = extern struct {
    PosX: f32 = @import("std").mem.zeroes(f32),
    PosY: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMousePos = struct_ImGuiInputEventMousePos;
pub const struct_ImGuiInputEventMouseWheel = extern struct {
    WheelX: f32 = @import("std").mem.zeroes(f32),
    WheelY: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMouseWheel = struct_ImGuiInputEventMouseWheel;
pub const struct_ImGuiInputEventMouseButton = extern struct {
    Button: c_int = @import("std").mem.zeroes(c_int),
    Down: bool = @import("std").mem.zeroes(bool),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMouseButton = struct_ImGuiInputEventMouseButton;
pub const struct_ImGuiInputEventMouseViewport = extern struct {
    HoveredViewportID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiInputEventMouseViewport = struct_ImGuiInputEventMouseViewport;
pub const struct_ImGuiInputEventKey = extern struct {
    Key: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    Down: bool = @import("std").mem.zeroes(bool),
    AnalogValue: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiInputEventKey = struct_ImGuiInputEventKey;
pub const struct_ImGuiInputEventText = extern struct {
    Char: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ImGuiInputEventText = struct_ImGuiInputEventText;
pub const struct_ImGuiInputEventAppFocused = extern struct {
    Focused: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiInputEventAppFocused = struct_ImGuiInputEventAppFocused;
const union_unnamed_1 = extern union {
    MousePos: ImGuiInputEventMousePos,
    MouseWheel: ImGuiInputEventMouseWheel,
    MouseButton: ImGuiInputEventMouseButton,
    MouseViewport: ImGuiInputEventMouseViewport,
    Key: ImGuiInputEventKey,
    Text: ImGuiInputEventText,
    AppFocused: ImGuiInputEventAppFocused,
};
pub const struct_ImGuiInputEvent = extern struct {
    Type: ImGuiInputEventType = @import("std").mem.zeroes(ImGuiInputEventType),
    Source: ImGuiInputSource = @import("std").mem.zeroes(ImGuiInputSource),
    EventId: ImU32 = @import("std").mem.zeroes(ImU32),
    unnamed_0: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
    AddedByTestEngine: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiInputEvent = struct_ImGuiInputEvent;
pub const struct_ImVector_ImGuiInputEvent = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiInputEvent = @import("std").mem.zeroes([*c]ImGuiInputEvent),
};
pub const ImVector_ImGuiInputEvent = struct_ImVector_ImGuiInputEvent;
pub const ImGuiWindowFlags = c_int;
pub const ImGuiChildFlags = c_int;
pub const ImGuiTabItemFlags = c_int;
pub const ImGuiDockNodeFlags = c_int;
pub const struct_ImGuiWindowClass = extern struct {
    ClassId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ParentViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    FocusRouteParentWindowId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ViewportFlagsOverrideSet: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    ViewportFlagsOverrideClear: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    TabItemFlagsOverrideSet: ImGuiTabItemFlags = @import("std").mem.zeroes(ImGuiTabItemFlags),
    DockNodeFlagsOverrideSet: ImGuiDockNodeFlags = @import("std").mem.zeroes(ImGuiDockNodeFlags),
    DockingAlwaysTabBar: bool = @import("std").mem.zeroes(bool),
    DockingAllowUnclassed: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiWindowClass = struct_ImGuiWindowClass;
pub const struct_ImDrawDataBuilder = extern struct {
    Layers: [2][*c]ImVector_ImDrawListPtr = @import("std").mem.zeroes([2][*c]ImVector_ImDrawListPtr),
    LayerData1: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
};
pub const ImDrawDataBuilder = struct_ImDrawDataBuilder;
pub const struct_ImGuiViewportP = extern struct {
    _ImGuiViewport: ImGuiViewport = @import("std").mem.zeroes(ImGuiViewport),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    Idx: c_int = @import("std").mem.zeroes(c_int),
    LastFrameActive: c_int = @import("std").mem.zeroes(c_int),
    LastFocusedStampCount: c_int = @import("std").mem.zeroes(c_int),
    LastNameHash: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LastSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Alpha: f32 = @import("std").mem.zeroes(f32),
    LastAlpha: f32 = @import("std").mem.zeroes(f32),
    LastFocusedHadNavWindow: bool = @import("std").mem.zeroes(bool),
    PlatformMonitor: c_short = @import("std").mem.zeroes(c_short),
    BgFgDrawListsLastFrame: [2]c_int = @import("std").mem.zeroes([2]c_int),
    BgFgDrawLists: [2][*c]ImDrawList = @import("std").mem.zeroes([2][*c]ImDrawList),
    DrawDataP: ImDrawData = @import("std").mem.zeroes(ImDrawData),
    DrawDataBuilder: ImDrawDataBuilder = @import("std").mem.zeroes(ImDrawDataBuilder),
    LastPlatformPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LastPlatformSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LastRendererSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkInsetMin: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkInsetMax: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BuildWorkInsetMin: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BuildWorkInsetMax: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImGuiViewportP = struct_ImGuiViewportP;
pub const ImS8 = i8;
pub const struct_ImGuiWindow = opaque {};
pub const ImGuiWindow = struct_ImGuiWindow;
pub const struct_ImVector_ImGuiWindowPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]?*ImGuiWindow = @import("std").mem.zeroes([*c]?*ImGuiWindow),
};
pub const ImVector_ImGuiWindowPtr = struct_ImVector_ImGuiWindowPtr;
pub const ImGuiItemFlags = c_int;
pub const ImGuiItemStatusFlags = c_int;
pub const struct_ImRect = extern struct {
    Min: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Max: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImRect = struct_ImRect;
pub const struct_ImGuiLastItemData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    StatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    Rect: ImRect = @import("std").mem.zeroes(ImRect),
    NavRect: ImRect = @import("std").mem.zeroes(ImRect),
    DisplayRect: ImRect = @import("std").mem.zeroes(ImRect),
    ClipRect: ImRect = @import("std").mem.zeroes(ImRect),
    Shortcut: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
};
pub const ImGuiLastItemData = struct_ImGuiLastItemData;
pub const struct_ImGuiErrorRecoveryState = extern struct {
    SizeOfWindowStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfIDStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfTreeStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfColorStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfStyleVarStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfFontStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfFocusScopeStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfGroupStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfItemFlagsStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfBeginPopupStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfDisabledStack: c_short = @import("std").mem.zeroes(c_short),
};
pub const ImGuiErrorRecoveryState = struct_ImGuiErrorRecoveryState;
pub const struct_ImGuiWindowStackData = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ParentLastItemDataBackup: ImGuiLastItemData = @import("std").mem.zeroes(ImGuiLastItemData),
    StackSizesInBegin: ImGuiErrorRecoveryState = @import("std").mem.zeroes(ImGuiErrorRecoveryState),
    DisabledOverrideReenable: bool = @import("std").mem.zeroes(bool),
    DisabledOverrideReenableAlphaBackup: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiWindowStackData = struct_ImGuiWindowStackData;
pub const struct_ImVector_ImGuiWindowStackData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiWindowStackData = @import("std").mem.zeroes([*c]ImGuiWindowStackData),
};
pub const ImVector_ImGuiWindowStackData = struct_ImVector_ImGuiWindowStackData;
const union_unnamed_2 = extern union {
    val_i: c_int,
    val_f: f32,
    val_p: ?*anyopaque,
};
pub const struct_ImGuiStoragePair = extern struct {
    key: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    unnamed_0: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const ImGuiStoragePair = struct_ImGuiStoragePair;
pub const struct_ImVector_ImGuiStoragePair = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiStoragePair = @import("std").mem.zeroes([*c]ImGuiStoragePair),
};
pub const ImVector_ImGuiStoragePair = struct_ImVector_ImGuiStoragePair;
pub const struct_ImGuiStorage = extern struct {
    Data: ImVector_ImGuiStoragePair = @import("std").mem.zeroes(ImVector_ImGuiStoragePair),
};
pub const ImGuiStorage = struct_ImGuiStorage;
pub const struct_ImGuiContext = opaque {};
pub const ImGuiInputTextFlags = c_int;
pub const struct_ImGuiInputTextCallbackData = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    EventFlag: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    Flags: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    EventChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    EventKey: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    Buf: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    BufTextLen: c_int = @import("std").mem.zeroes(c_int),
    BufSize: c_int = @import("std").mem.zeroes(c_int),
    BufDirty: bool = @import("std").mem.zeroes(bool),
    CursorPos: c_int = @import("std").mem.zeroes(c_int),
    SelectionStart: c_int = @import("std").mem.zeroes(c_int),
    SelectionEnd: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiInputTextCallbackData = struct_ImGuiInputTextCallbackData;
pub const struct_ImGuiListClipper = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    DisplayStart: c_int = @import("std").mem.zeroes(c_int),
    DisplayEnd: c_int = @import("std").mem.zeroes(c_int),
    ItemsCount: c_int = @import("std").mem.zeroes(c_int),
    ItemsHeight: f32 = @import("std").mem.zeroes(f32),
    StartPosY: f32 = @import("std").mem.zeroes(f32),
    StartSeekOffsetY: f64 = @import("std").mem.zeroes(f64),
    TempData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiListClipper = struct_ImGuiListClipper;
pub const ImS64 = c_longlong;
pub const ImGuiSelectionUserData = ImS64;
pub const struct_ImGuiSelectionRequest = extern struct {
    Type: ImGuiSelectionRequestType = @import("std").mem.zeroes(ImGuiSelectionRequestType),
    Selected: bool = @import("std").mem.zeroes(bool),
    RangeDirection: ImS8 = @import("std").mem.zeroes(ImS8),
    RangeFirstItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    RangeLastItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiSelectionRequest = struct_ImGuiSelectionRequest;
pub const struct_ImVector_ImGuiSelectionRequest = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiSelectionRequest = @import("std").mem.zeroes([*c]ImGuiSelectionRequest),
};
pub const ImVector_ImGuiSelectionRequest = struct_ImVector_ImGuiSelectionRequest;
pub const struct_ImGuiMultiSelectIO = extern struct {
    Requests: ImVector_ImGuiSelectionRequest = @import("std").mem.zeroes(ImVector_ImGuiSelectionRequest),
    RangeSrcItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdSelected: bool = @import("std").mem.zeroes(bool),
    RangeSrcReset: bool = @import("std").mem.zeroes(bool),
    ItemsCount: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiMultiSelectIO = struct_ImGuiMultiSelectIO;
pub const struct_ImGuiOnceUponAFrame = extern struct {
    RefFrame: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiOnceUponAFrame = struct_ImGuiOnceUponAFrame;
pub const struct_ImGuiPayload = extern struct {
    Data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    DataSize: c_int = @import("std").mem.zeroes(c_int),
    SourceId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SourceParentId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DataFrameCount: c_int = @import("std").mem.zeroes(c_int),
    DataType: [33]u8 = @import("std").mem.zeroes([33]u8),
    Preview: bool = @import("std").mem.zeroes(bool),
    Delivery: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiPayload = struct_ImGuiPayload;
pub const ImGuiSelectionBasicStorage = struct_ImGuiSelectionBasicStorage;
pub const struct_ImGuiSelectionBasicStorage = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    PreserveOrder: bool = @import("std").mem.zeroes(bool),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    AdapterIndexToStorageId: ?*const fn ([*c]ImGuiSelectionBasicStorage, c_int) callconv(.c) ImGuiID = @import("std").mem.zeroes(?*const fn ([*c]ImGuiSelectionBasicStorage, c_int) callconv(.c) ImGuiID),
    _SelectionOrder: c_int = @import("std").mem.zeroes(c_int),
    _Storage: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
};
pub const ImGuiSelectionExternalStorage = struct_ImGuiSelectionExternalStorage;
pub const struct_ImGuiSelectionExternalStorage = extern struct {
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    AdapterSetItemSelected: ?*const fn ([*c]ImGuiSelectionExternalStorage, c_int, bool) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiSelectionExternalStorage, c_int, bool) callconv(.c) void),
};
pub const struct_ImGuiSizeCallbackData = extern struct {
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CurrentSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DesiredSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImGuiSizeCallbackData = struct_ImGuiSizeCallbackData;
pub const ImS16 = c_short;
pub const struct_ImGuiTableColumnSortSpecs = extern struct {
    ColumnUserID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ColumnIndex: ImS16 = @import("std").mem.zeroes(ImS16),
    SortOrder: ImS16 = @import("std").mem.zeroes(ImS16),
    SortDirection: ImGuiSortDirection = @import("std").mem.zeroes(ImGuiSortDirection),
};
pub const ImGuiTableColumnSortSpecs = struct_ImGuiTableColumnSortSpecs;
pub const struct_ImGuiTableSortSpecs = extern struct {
    Specs: [*c]const ImGuiTableColumnSortSpecs = @import("std").mem.zeroes([*c]const ImGuiTableColumnSortSpecs),
    SpecsCount: c_int = @import("std").mem.zeroes(c_int),
    SpecsDirty: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTableSortSpecs = struct_ImGuiTableSortSpecs;
pub const struct_ImVector_char = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const ImVector_char = struct_ImVector_char;
pub const struct_ImGuiTextBuffer = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImGuiTextBuffer = struct_ImGuiTextBuffer;
pub const struct_ImGuiTextRange = extern struct {
    b: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    e: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiTextRange = struct_ImGuiTextRange;
pub const struct_ImVector_ImGuiTextRange = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTextRange = @import("std").mem.zeroes([*c]ImGuiTextRange),
};
pub const ImVector_ImGuiTextRange = struct_ImVector_ImGuiTextRange;
pub const struct_ImGuiTextFilter = extern struct {
    InputBuf: [256]u8 = @import("std").mem.zeroes([256]u8),
    Filters: ImVector_ImGuiTextRange = @import("std").mem.zeroes(ImVector_ImGuiTextRange),
    CountGrep: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTextFilter = struct_ImGuiTextFilter;
pub const struct_ImBitVector = extern struct {
    Storage: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
};
pub const ImBitVector = struct_ImBitVector;
pub const struct_ImVector_int = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
};
pub const ImVector_int = struct_ImVector_int;
pub const struct_ImGuiTextIndex = extern struct {
    LineOffsets: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    EndOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTextIndex = struct_ImGuiTextIndex;
pub const struct_ImGuiBoxSelectState = opaque {};
pub const ImGuiBoxSelectState = struct_ImGuiBoxSelectState;
pub const ImGuiCol = c_int;
pub const struct_ImGuiColorMod = extern struct {
    Col: ImGuiCol = @import("std").mem.zeroes(ImGuiCol),
    BackupValue: ImVec4 = @import("std").mem.zeroes(ImVec4),
};
pub const ImGuiColorMod = struct_ImGuiColorMod;
pub const ImGuiContextHook = struct_ImGuiContextHook;
pub const ImGuiContextHookCallback = ?*const fn (?*ImGuiContext, [*c]ImGuiContextHook) callconv(.c) void;
pub const struct_ImGuiContextHook = extern struct {
    HookId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Type: ImGuiContextHookType = @import("std").mem.zeroes(ImGuiContextHookType),
    Owner: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Callback: ImGuiContextHookCallback = @import("std").mem.zeroes(ImGuiContextHookCallback),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct_ImGuiDataTypeInfo = extern struct {
    Size: usize = @import("std").mem.zeroes(usize),
    Name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    PrintFmt: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    ScanFmt: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiDataTypeInfo = struct_ImGuiDataTypeInfo;
pub const struct_ImGuiDeactivatedItemData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ElapseFrame: c_int = @import("std").mem.zeroes(c_int),
    HasBeenEditedBefore: bool = @import("std").mem.zeroes(bool),
    IsAlive: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiDeactivatedItemData = struct_ImGuiDeactivatedItemData;
pub const struct_ImGuiDockRequest = opaque {};
pub const ImGuiDockRequest = struct_ImGuiDockRequest;
pub const struct_ImVector_ImGuiDockRequest = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiDockRequest = @import("std").mem.zeroes(?*ImGuiDockRequest),
};
pub const ImVector_ImGuiDockRequest = struct_ImVector_ImGuiDockRequest;
pub const struct_ImGuiDockNodeSettings = opaque {};
pub const ImGuiDockNodeSettings = struct_ImGuiDockNodeSettings;
pub const struct_ImVector_ImGuiDockNodeSettings = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiDockNodeSettings = @import("std").mem.zeroes(?*ImGuiDockNodeSettings),
};
pub const ImVector_ImGuiDockNodeSettings = struct_ImVector_ImGuiDockNodeSettings;
pub const struct_ImGuiDockContext = extern struct {
    Nodes: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    Requests: ImVector_ImGuiDockRequest = @import("std").mem.zeroes(ImVector_ImGuiDockRequest),
    NodesSettings: ImVector_ImGuiDockNodeSettings = @import("std").mem.zeroes(ImVector_ImGuiDockNodeSettings),
    WantFullRebuild: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiDockContext = struct_ImGuiDockContext;
pub const ImGuiDockNode = struct_ImGuiDockNode;
pub const ImS32 = c_int;
pub const struct_ImGuiTabItem = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiTabItemFlags = @import("std").mem.zeroes(ImGuiTabItemFlags),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    LastFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    LastFrameSelected: c_int = @import("std").mem.zeroes(c_int),
    Offset: f32 = @import("std").mem.zeroes(f32),
    Width: f32 = @import("std").mem.zeroes(f32),
    ContentWidth: f32 = @import("std").mem.zeroes(f32),
    RequestedWidth: f32 = @import("std").mem.zeroes(f32),
    NameOffset: ImS32 = @import("std").mem.zeroes(ImS32),
    BeginOrder: ImS16 = @import("std").mem.zeroes(ImS16),
    IndexDuringLayout: ImS16 = @import("std").mem.zeroes(ImS16),
    WantClose: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTabItem = struct_ImGuiTabItem;
pub const struct_ImVector_ImGuiTabItem = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTabItem = @import("std").mem.zeroes([*c]ImGuiTabItem),
};
pub const ImVector_ImGuiTabItem = struct_ImVector_ImGuiTabItem;
pub const ImGuiTabBarFlags = c_int;
pub const struct_ImGuiTabBar = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    Tabs: ImVector_ImGuiTabItem = @import("std").mem.zeroes(ImVector_ImGuiTabItem),
    Flags: ImGuiTabBarFlags = @import("std").mem.zeroes(ImGuiTabBarFlags),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SelectedTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NextSelectedTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    VisibleTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    CurrFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    PrevFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    BarRect: ImRect = @import("std").mem.zeroes(ImRect),
    CurrTabsContentsHeight: f32 = @import("std").mem.zeroes(f32),
    PrevTabsContentsHeight: f32 = @import("std").mem.zeroes(f32),
    WidthAllTabs: f32 = @import("std").mem.zeroes(f32),
    WidthAllTabsIdeal: f32 = @import("std").mem.zeroes(f32),
    ScrollingAnim: f32 = @import("std").mem.zeroes(f32),
    ScrollingTarget: f32 = @import("std").mem.zeroes(f32),
    ScrollingTargetDistToVisibility: f32 = @import("std").mem.zeroes(f32),
    ScrollingSpeed: f32 = @import("std").mem.zeroes(f32),
    ScrollingRectMinX: f32 = @import("std").mem.zeroes(f32),
    ScrollingRectMaxX: f32 = @import("std").mem.zeroes(f32),
    SeparatorMinX: f32 = @import("std").mem.zeroes(f32),
    SeparatorMaxX: f32 = @import("std").mem.zeroes(f32),
    ReorderRequestTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ReorderRequestOffset: ImS16 = @import("std").mem.zeroes(ImS16),
    BeginCount: ImS8 = @import("std").mem.zeroes(ImS8),
    WantLayout: bool = @import("std").mem.zeroes(bool),
    VisibleTabWasSubmitted: bool = @import("std").mem.zeroes(bool),
    TabsAddedNew: bool = @import("std").mem.zeroes(bool),
    TabsActiveCount: ImS16 = @import("std").mem.zeroes(ImS16),
    LastTabItemIdx: ImS16 = @import("std").mem.zeroes(ImS16),
    ItemSpacingY: f32 = @import("std").mem.zeroes(f32),
    FramePadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TabsNames: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
};
pub const ImGuiTabBar = struct_ImGuiTabBar;
pub const struct_ImGuiDockNode = opaque {};
pub const struct_ImVec1 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec1 = struct_ImVec1;
pub const struct_ImGuiGroupData = extern struct {
    WindowID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    BackupCursorPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorPosPrevLine: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupIndent: ImVec1 = @import("std").mem.zeroes(ImVec1),
    BackupGroupOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    BackupCurrLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCurrLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    BackupActiveIdIsAlive: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    BackupDeactivatedIdIsAlive: bool = @import("std").mem.zeroes(bool),
    BackupHoveredIdIsAlive: bool = @import("std").mem.zeroes(bool),
    BackupIsSameLine: bool = @import("std").mem.zeroes(bool),
    EmitItem: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiGroupData = struct_ImGuiGroupData;
pub const struct_STB_TexteditState = opaque {};
pub const STB_TexteditState = struct_STB_TexteditState;
pub const ImStbTexteditState = STB_TexteditState;
pub const struct_ImGuiInputTextState = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    Stb: ?*ImStbTexteditState = @import("std").mem.zeroes(?*ImStbTexteditState),
    Flags: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TextLen: c_int = @import("std").mem.zeroes(c_int),
    TextSrc: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    TextA: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    TextToRevertTo: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    CallbackTextBackup: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    BufCapacity: c_int = @import("std").mem.zeroes(c_int),
    Scroll: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CursorAnim: f32 = @import("std").mem.zeroes(f32),
    CursorFollow: bool = @import("std").mem.zeroes(bool),
    SelectedAllMouseLock: bool = @import("std").mem.zeroes(bool),
    Edited: bool = @import("std").mem.zeroes(bool),
    WantReloadUserBuf: bool = @import("std").mem.zeroes(bool),
    ReloadSelectionStart: c_int = @import("std").mem.zeroes(c_int),
    ReloadSelectionEnd: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiInputTextState = struct_ImGuiInputTextState;
pub const struct_ImGuiInputTextDeactivateData = opaque {};
pub const ImGuiInputTextDeactivateData = struct_ImGuiInputTextDeactivateData;
pub const struct_ImGuiLocEntry = extern struct {
    Key: ImGuiLocKey = @import("std").mem.zeroes(ImGuiLocKey),
    Text: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiLocEntry = struct_ImGuiLocEntry;
pub const struct_ImGuiMenuColumns = extern struct {
    TotalWidth: ImU32 = @import("std").mem.zeroes(ImU32),
    NextTotalWidth: ImU32 = @import("std").mem.zeroes(ImU32),
    Spacing: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetIcon: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetLabel: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetShortcut: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetMark: ImU16 = @import("std").mem.zeroes(ImU16),
    Widths: [4]ImU16 = @import("std").mem.zeroes([4]ImU16),
};
pub const ImGuiMenuColumns = struct_ImGuiMenuColumns;
pub const struct_ImGuiMultiSelectState = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastFrameActive: c_int = @import("std").mem.zeroes(c_int),
    LastSelectionSize: c_int = @import("std").mem.zeroes(c_int),
    RangeSelected: ImS8 = @import("std").mem.zeroes(ImS8),
    NavIdSelected: ImS8 = @import("std").mem.zeroes(ImS8),
    RangeSrcItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiMultiSelectState = struct_ImGuiMultiSelectState;
pub const ImGuiMultiSelectFlags = c_int;
pub const struct_ImGuiMultiSelectTempData = extern struct {
    IO: ImGuiMultiSelectIO = @import("std").mem.zeroes(ImGuiMultiSelectIO),
    Storage: [*c]ImGuiMultiSelectState = @import("std").mem.zeroes([*c]ImGuiMultiSelectState),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiMultiSelectFlags = @import("std").mem.zeroes(ImGuiMultiSelectFlags),
    ScopeRectMin: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LastSubmittedItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    BoxSelectId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    KeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    LoopRequestSetAll: ImS8 = @import("std").mem.zeroes(ImS8),
    IsEndIO: bool = @import("std").mem.zeroes(bool),
    IsFocused: bool = @import("std").mem.zeroes(bool),
    IsKeyboardSetRange: bool = @import("std").mem.zeroes(bool),
    NavIdPassedBy: bool = @import("std").mem.zeroes(bool),
    RangeSrcPassedBy: bool = @import("std").mem.zeroes(bool),
    RangeDstPassedBy: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiMultiSelectTempData = struct_ImGuiMultiSelectTempData;
pub const struct_ImGuiNavItemData = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    RectRel: ImRect = @import("std").mem.zeroes(ImRect),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    DistBox: f32 = @import("std").mem.zeroes(f32),
    DistCenter: f32 = @import("std").mem.zeroes(f32),
    DistAxial: f32 = @import("std").mem.zeroes(f32),
    SelectionUserData: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiNavItemData = struct_ImGuiNavItemData;
pub const struct_ImGuiMetricsConfig = extern struct {
    ShowDebugLog: bool = @import("std").mem.zeroes(bool),
    ShowIDStackTool: bool = @import("std").mem.zeroes(bool),
    ShowWindowsRects: bool = @import("std").mem.zeroes(bool),
    ShowWindowsBeginOrder: bool = @import("std").mem.zeroes(bool),
    ShowTablesRects: bool = @import("std").mem.zeroes(bool),
    ShowDrawCmdMesh: bool = @import("std").mem.zeroes(bool),
    ShowDrawCmdBoundingBoxes: bool = @import("std").mem.zeroes(bool),
    ShowTextEncodingViewer: bool = @import("std").mem.zeroes(bool),
    ShowDockingNodes: bool = @import("std").mem.zeroes(bool),
    ShowWindowsRectsType: c_int = @import("std").mem.zeroes(c_int),
    ShowTablesRectsType: c_int = @import("std").mem.zeroes(c_int),
    HighlightMonitorIdx: c_int = @import("std").mem.zeroes(c_int),
    HighlightViewportID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiMetricsConfig = struct_ImGuiMetricsConfig;
pub const ImGuiNextWindowDataFlags = c_int;
pub const ImGuiCond = c_int;
pub const ImGuiSizeCallback = ?*const fn ([*c]ImGuiSizeCallbackData) callconv(.c) void;
pub const ImGuiWindowRefreshFlags = c_int;
pub const struct_ImGuiNextWindowData = extern struct {
    HasFlags: ImGuiNextWindowDataFlags = @import("std").mem.zeroes(ImGuiNextWindowDataFlags),
    PosCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    SizeCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    CollapsedCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    DockCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    PosVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    PosPivotVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SizeVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ContentSizeVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ScrollVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowFlags: ImGuiWindowFlags = @import("std").mem.zeroes(ImGuiWindowFlags),
    ChildFlags: ImGuiChildFlags = @import("std").mem.zeroes(ImGuiChildFlags),
    PosUndock: bool = @import("std").mem.zeroes(bool),
    CollapsedVal: bool = @import("std").mem.zeroes(bool),
    SizeConstraintRect: ImRect = @import("std").mem.zeroes(ImRect),
    SizeCallback: ImGuiSizeCallback = @import("std").mem.zeroes(ImGuiSizeCallback),
    SizeCallbackUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BgAlphaVal: f32 = @import("std").mem.zeroes(f32),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    WindowClass: ImGuiWindowClass = @import("std").mem.zeroes(ImGuiWindowClass),
    MenuBarOffsetMinVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    RefreshFlagsVal: ImGuiWindowRefreshFlags = @import("std").mem.zeroes(ImGuiWindowRefreshFlags),
};
pub const ImGuiNextWindowData = struct_ImGuiNextWindowData;
pub const ImGuiNextItemDataFlags = c_int;
pub const ImGuiInputFlags = c_int;
pub const struct_ImGuiDataTypeStorage = extern struct {
    Data: [8]ImU8 = @import("std").mem.zeroes([8]ImU8),
};
pub const ImGuiDataTypeStorage = struct_ImGuiDataTypeStorage;
pub const struct_ImGuiNextItemData = extern struct {
    HasFlags: ImGuiNextItemDataFlags = @import("std").mem.zeroes(ImGuiNextItemDataFlags),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SelectionUserData: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    Width: f32 = @import("std").mem.zeroes(f32),
    Shortcut: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    ShortcutFlags: ImGuiInputFlags = @import("std").mem.zeroes(ImGuiInputFlags),
    OpenVal: bool = @import("std").mem.zeroes(bool),
    OpenCond: ImU8 = @import("std").mem.zeroes(ImU8),
    RefVal: ImGuiDataTypeStorage = @import("std").mem.zeroes(ImGuiDataTypeStorage),
    StorageId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiNextItemData = struct_ImGuiNextItemData;
pub const ImGuiOldColumnFlags = c_int;
pub const struct_ImGuiOldColumnData = extern struct {
    OffsetNorm: f32 = @import("std").mem.zeroes(f32),
    OffsetNormBeforeResize: f32 = @import("std").mem.zeroes(f32),
    Flags: ImGuiOldColumnFlags = @import("std").mem.zeroes(ImGuiOldColumnFlags),
    ClipRect: ImRect = @import("std").mem.zeroes(ImRect),
};
pub const ImGuiOldColumnData = struct_ImGuiOldColumnData;
pub const struct_ImVector_ImGuiOldColumnData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiOldColumnData = @import("std").mem.zeroes([*c]ImGuiOldColumnData),
};
pub const ImVector_ImGuiOldColumnData = struct_ImVector_ImGuiOldColumnData;
pub const struct_ImGuiOldColumns = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiOldColumnFlags = @import("std").mem.zeroes(ImGuiOldColumnFlags),
    IsFirstFrame: bool = @import("std").mem.zeroes(bool),
    IsBeingResized: bool = @import("std").mem.zeroes(bool),
    Current: c_int = @import("std").mem.zeroes(c_int),
    Count: c_int = @import("std").mem.zeroes(c_int),
    OffMinX: f32 = @import("std").mem.zeroes(f32),
    OffMaxX: f32 = @import("std").mem.zeroes(f32),
    LineMinY: f32 = @import("std").mem.zeroes(f32),
    LineMaxY: f32 = @import("std").mem.zeroes(f32),
    HostCursorPosY: f32 = @import("std").mem.zeroes(f32),
    HostCursorMaxPosX: f32 = @import("std").mem.zeroes(f32),
    HostInitialClipRect: ImRect = @import("std").mem.zeroes(ImRect),
    HostBackupClipRect: ImRect = @import("std").mem.zeroes(ImRect),
    HostBackupParentWorkRect: ImRect = @import("std").mem.zeroes(ImRect),
    Columns: ImVector_ImGuiOldColumnData = @import("std").mem.zeroes(ImVector_ImGuiOldColumnData),
    Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
};
pub const ImGuiOldColumns = struct_ImGuiOldColumns;
pub const struct_ImGuiPopupData = extern struct {
    PopupId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    RestoreNavWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ParentNavLayer: c_int = @import("std").mem.zeroes(c_int),
    OpenFrameCount: c_int = @import("std").mem.zeroes(c_int),
    OpenParentId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    OpenPopupPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    OpenMousePos: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImGuiPopupData = struct_ImGuiPopupData;
pub const ImGuiSettingsHandler = struct_ImGuiSettingsHandler;
pub const struct_ImGuiSettingsHandler = extern struct {
    TypeName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    TypeHash: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ClearAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    ReadInitFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    ReadOpenFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]const u8) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]const u8) callconv(.c) ?*anyopaque),
    ReadLineFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, ?*anyopaque, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, ?*anyopaque, [*c]const u8) callconv(.c) void),
    ApplyAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    WriteAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]ImGuiTextBuffer) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]ImGuiTextBuffer) callconv(.c) void),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiStyleVar = c_int;
const union_unnamed_3 = extern union {
    BackupInt: [2]c_int,
    BackupFloat: [2]f32,
};
pub const struct_ImGuiStyleMod = extern struct {
    VarIdx: ImGuiStyleVar = @import("std").mem.zeroes(ImGuiStyleVar),
    unnamed_0: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
};
pub const ImGuiStyleMod = struct_ImGuiStyleMod;
pub const struct_ImGuiStyleVarInfo = opaque {};
pub const ImGuiStyleVarInfo = struct_ImGuiStyleVarInfo;
pub const ImGuiTableFlags = c_int;
pub const ImGuiTableColumnIdx = ImS16;
pub const struct_ImGuiTableHeaderData = extern struct {
    Index: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    TextColor: ImU32 = @import("std").mem.zeroes(ImU32),
    BgColor0: ImU32 = @import("std").mem.zeroes(ImU32),
    BgColor1: ImU32 = @import("std").mem.zeroes(ImU32),
};
pub const ImGuiTableHeaderData = struct_ImGuiTableHeaderData;
pub const struct_ImVector_ImGuiTableHeaderData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableHeaderData = @import("std").mem.zeroes([*c]ImGuiTableHeaderData),
};
pub const ImVector_ImGuiTableHeaderData = struct_ImVector_ImGuiTableHeaderData;
pub const struct_ImGuiTableTempData = extern struct {
    TableIndex: c_int = @import("std").mem.zeroes(c_int),
    LastTimeActive: f32 = @import("std").mem.zeroes(f32),
    AngledHeadersExtraWidth: f32 = @import("std").mem.zeroes(f32),
    AngledHeadersRequests: ImVector_ImGuiTableHeaderData = @import("std").mem.zeroes(ImVector_ImGuiTableHeaderData),
    UserOuterSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DrawSplitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    HostBackupWorkRect: ImRect = @import("std").mem.zeroes(ImRect),
    HostBackupParentWorkRect: ImRect = @import("std").mem.zeroes(ImRect),
    HostBackupPrevLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    HostBackupCurrLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    HostBackupCursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    HostBackupColumnsOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    HostBackupItemWidth: f32 = @import("std").mem.zeroes(f32),
    HostBackupItemWidthStackSize: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTableTempData = struct_ImGuiTableTempData;
pub const ImGuiTableColumnFlags = c_int;
pub const ImGuiTableDrawChannelIdx = ImU16;
pub const struct_ImGuiTableColumn = opaque {};
pub const ImGuiTableColumn = struct_ImGuiTableColumn;
pub const struct_ImSpan_ImGuiTableColumn = extern struct {
    Data: ?*ImGuiTableColumn = @import("std").mem.zeroes(?*ImGuiTableColumn),
    DataEnd: ?*ImGuiTableColumn = @import("std").mem.zeroes(?*ImGuiTableColumn),
};
pub const ImSpan_ImGuiTableColumn = struct_ImSpan_ImGuiTableColumn;
pub const struct_ImSpan_ImGuiTableColumnIdx = extern struct {
    Data: [*c]ImGuiTableColumnIdx = @import("std").mem.zeroes([*c]ImGuiTableColumnIdx),
    DataEnd: [*c]ImGuiTableColumnIdx = @import("std").mem.zeroes([*c]ImGuiTableColumnIdx),
};
pub const ImSpan_ImGuiTableColumnIdx = struct_ImSpan_ImGuiTableColumnIdx;
pub const struct_ImGuiTableCellData = extern struct {
    BgColor: ImU32 = @import("std").mem.zeroes(ImU32),
    Column: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
};
pub const ImGuiTableCellData = struct_ImGuiTableCellData;
pub const struct_ImSpan_ImGuiTableCellData = extern struct {
    Data: [*c]ImGuiTableCellData = @import("std").mem.zeroes([*c]ImGuiTableCellData),
    DataEnd: [*c]ImGuiTableCellData = @import("std").mem.zeroes([*c]ImGuiTableCellData),
};
pub const ImSpan_ImGuiTableCellData = struct_ImSpan_ImGuiTableCellData;
pub const ImBitArrayPtr = [*c]ImU32;
pub const struct_ImGuiTable = opaque {};
pub const ImGuiTable = struct_ImGuiTable;
pub const struct_ImGuiTableInstanceData = extern struct {
    TableInstanceID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastOuterHeight: f32 = @import("std").mem.zeroes(f32),
    LastTopHeadersRowHeight: f32 = @import("std").mem.zeroes(f32),
    LastFrozenHeight: f32 = @import("std").mem.zeroes(f32),
    HoveredRowLast: c_int = @import("std").mem.zeroes(c_int),
    HoveredRowNext: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTableInstanceData = struct_ImGuiTableInstanceData;
pub const struct_ImGuiTableSettings = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SaveFlags: ImGuiTableFlags = @import("std").mem.zeroes(ImGuiTableFlags),
    RefScale: f32 = @import("std").mem.zeroes(f32),
    ColumnsCount: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    ColumnsCountMax: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    WantApply: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTableSettings = struct_ImGuiTableSettings;
pub const struct_ImGuiTableColumnsSettings = opaque {};
pub const ImGuiTableColumnsSettings = struct_ImGuiTableColumnsSettings;
pub const ImGuiTreeNodeFlags = c_int;
pub const struct_ImGuiTreeNodeStackData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TreeFlags: ImGuiTreeNodeFlags = @import("std").mem.zeroes(ImGuiTreeNodeFlags),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    NavRect: ImRect = @import("std").mem.zeroes(ImRect),
};
pub const ImGuiTreeNodeStackData = struct_ImGuiTreeNodeStackData;
pub const ImGuiTypingSelectFlags = c_int;
pub const struct_ImGuiTypingSelectRequest = extern struct {
    Flags: ImGuiTypingSelectFlags = @import("std").mem.zeroes(ImGuiTypingSelectFlags),
    SearchBufferLen: c_int = @import("std").mem.zeroes(c_int),
    SearchBuffer: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    SelectRequest: bool = @import("std").mem.zeroes(bool),
    SingleCharMode: bool = @import("std").mem.zeroes(bool),
    SingleCharSize: ImS8 = @import("std").mem.zeroes(ImS8),
};
pub const ImGuiTypingSelectRequest = struct_ImGuiTypingSelectRequest;
pub const struct_ImGuiTypingSelectState = extern struct {
    Request: ImGuiTypingSelectRequest = @import("std").mem.zeroes(ImGuiTypingSelectRequest),
    SearchBuffer: [64]u8 = @import("std").mem.zeroes([64]u8),
    FocusScope: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastRequestFrame: c_int = @import("std").mem.zeroes(c_int),
    LastRequestTime: f32 = @import("std").mem.zeroes(f32),
    SingleCharModeLock: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTypingSelectState = struct_ImGuiTypingSelectState;
pub const struct_ImGuiWindowDockStyle = extern struct {
    Colors: [8]ImU32 = @import("std").mem.zeroes([8]ImU32),
};
pub const ImGuiWindowDockStyle = struct_ImGuiWindowDockStyle;
pub const ImGuiLayoutType = c_int;
pub const struct_ImGuiWindowTempData = extern struct {
    CursorPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CursorPosPrevLine: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CursorStartPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    IdealMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CurrLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    PrevLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CurrLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    PrevLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    IsSameLine: bool = @import("std").mem.zeroes(bool),
    IsSetPos: bool = @import("std").mem.zeroes(bool),
    Indent: ImVec1 = @import("std").mem.zeroes(ImVec1),
    ColumnsOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    GroupOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    CursorStartPosLossyness: ImVec2 = @import("std").mem.zeroes(ImVec2),
    NavLayerCurrent: ImGuiNavLayer = @import("std").mem.zeroes(ImGuiNavLayer),
    NavLayersActiveMask: c_short = @import("std").mem.zeroes(c_short),
    NavLayersActiveMaskNext: c_short = @import("std").mem.zeroes(c_short),
    NavIsScrollPushableX: bool = @import("std").mem.zeroes(bool),
    NavHideHighlightOneFrame: bool = @import("std").mem.zeroes(bool),
    NavWindowHasScrollY: bool = @import("std").mem.zeroes(bool),
    MenuBarAppending: bool = @import("std").mem.zeroes(bool),
    MenuBarOffset: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MenuColumns: ImGuiMenuColumns = @import("std").mem.zeroes(ImGuiMenuColumns),
    TreeDepth: c_int = @import("std").mem.zeroes(c_int),
    TreeHasStackDataDepthMask: ImU32 = @import("std").mem.zeroes(ImU32),
    ChildWindows: ImVector_ImGuiWindowPtr = @import("std").mem.zeroes(ImVector_ImGuiWindowPtr),
    StateStorage: [*c]ImGuiStorage = @import("std").mem.zeroes([*c]ImGuiStorage),
    CurrentColumns: [*c]ImGuiOldColumns = @import("std").mem.zeroes([*c]ImGuiOldColumns),
    CurrentTableIdx: c_int = @import("std").mem.zeroes(c_int),
    LayoutType: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
    ParentLayoutType: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
    ModalDimBgColor: ImU32 = @import("std").mem.zeroes(ImU32),
    WindowItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    ChildItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    DockTabItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    DockTabItemRect: ImRect = @import("std").mem.zeroes(ImRect),
    ItemWidth: f32 = @import("std").mem.zeroes(f32),
    TextWrapPos: f32 = @import("std").mem.zeroes(f32),
    ItemWidthStack: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    TextWrapPosStack: ImVector_float = @import("std").mem.zeroes(ImVector_float),
};
pub const ImGuiWindowTempData = struct_ImGuiWindowTempData;
pub const struct_ImVec2ih = extern struct {
    x: c_short = @import("std").mem.zeroes(c_short),
    y: c_short = @import("std").mem.zeroes(c_short),
};
pub const ImVec2ih = struct_ImVec2ih;
pub const struct_ImGuiWindowSettings = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Pos: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    Size: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    ViewportPos: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ClassId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockOrder: c_short = @import("std").mem.zeroes(c_short),
    Collapsed: bool = @import("std").mem.zeroes(bool),
    IsChild: bool = @import("std").mem.zeroes(bool),
    WantApply: bool = @import("std").mem.zeroes(bool),
    WantDelete: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiWindowSettings = struct_ImGuiWindowSettings;
pub const struct_ImVector_const_charPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
};
pub const ImVector_const_charPtr = struct_ImVector_const_charPtr;
pub const ImGuiDataType = c_int;
pub const ImGuiMouseButton = c_int;
pub const ImGuiMouseCursor = c_int;
pub const ImGuiTableBgTarget = c_int;
pub const ImDrawFlags = c_int;
pub const ImGuiButtonFlags = c_int;
pub const ImGuiColorEditFlags = c_int;
pub const ImGuiComboFlags = c_int;
pub const ImGuiDragDropFlags = c_int;
pub const ImGuiFocusedFlags = c_int;
pub const ImGuiPopupFlags = c_int;
pub const ImGuiSelectableFlags = c_int;
pub const ImGuiSliderFlags = c_int;
pub const ImGuiTableRowFlags = c_int;
pub const ImWchar32 = c_uint;
pub const ImGuiInputTextCallback = ?*const fn ([*c]ImGuiInputTextCallbackData) callconv(.c) c_int;
pub const ImGuiMemAllocFunc = ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque;
pub const ImGuiMemFreeFunc = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const ImGuiWindowFlags_None: c_int = 0;
pub const ImGuiWindowFlags_NoTitleBar: c_int = 1;
pub const ImGuiWindowFlags_NoResize: c_int = 2;
pub const ImGuiWindowFlags_NoMove: c_int = 4;
pub const ImGuiWindowFlags_NoScrollbar: c_int = 8;
pub const ImGuiWindowFlags_NoScrollWithMouse: c_int = 16;
pub const ImGuiWindowFlags_NoCollapse: c_int = 32;
pub const ImGuiWindowFlags_AlwaysAutoResize: c_int = 64;
pub const ImGuiWindowFlags_NoBackground: c_int = 128;
pub const ImGuiWindowFlags_NoSavedSettings: c_int = 256;
pub const ImGuiWindowFlags_NoMouseInputs: c_int = 512;
pub const ImGuiWindowFlags_MenuBar: c_int = 1024;
pub const ImGuiWindowFlags_HorizontalScrollbar: c_int = 2048;
pub const ImGuiWindowFlags_NoFocusOnAppearing: c_int = 4096;
pub const ImGuiWindowFlags_NoBringToFrontOnFocus: c_int = 8192;
pub const ImGuiWindowFlags_AlwaysVerticalScrollbar: c_int = 16384;
pub const ImGuiWindowFlags_AlwaysHorizontalScrollbar: c_int = 32768;
pub const ImGuiWindowFlags_NoNavInputs: c_int = 65536;
pub const ImGuiWindowFlags_NoNavFocus: c_int = 131072;
pub const ImGuiWindowFlags_UnsavedDocument: c_int = 262144;
pub const ImGuiWindowFlags_NoDocking: c_int = 524288;
pub const ImGuiWindowFlags_NoNav: c_int = 196608;
pub const ImGuiWindowFlags_NoDecoration: c_int = 43;
pub const ImGuiWindowFlags_NoInputs: c_int = 197120;
pub const ImGuiWindowFlags_DockNodeHost: c_int = 8388608;
pub const ImGuiWindowFlags_ChildWindow: c_int = 16777216;
pub const ImGuiWindowFlags_Tooltip: c_int = 33554432;
pub const ImGuiWindowFlags_Popup: c_int = 67108864;
pub const ImGuiWindowFlags_Modal: c_int = 134217728;
pub const ImGuiWindowFlags_ChildMenu: c_int = 268435456;
pub const ImGuiWindowFlags_ = c_uint;
pub const ImGuiChildFlags_None: c_int = 0;
pub const ImGuiChildFlags_Borders: c_int = 1;
pub const ImGuiChildFlags_AlwaysUseWindowPadding: c_int = 2;
pub const ImGuiChildFlags_ResizeX: c_int = 4;
pub const ImGuiChildFlags_ResizeY: c_int = 8;
pub const ImGuiChildFlags_AutoResizeX: c_int = 16;
pub const ImGuiChildFlags_AutoResizeY: c_int = 32;
pub const ImGuiChildFlags_AlwaysAutoResize: c_int = 64;
pub const ImGuiChildFlags_FrameStyle: c_int = 128;
pub const ImGuiChildFlags_NavFlattened: c_int = 256;
pub const ImGuiChildFlags_ = c_uint;
pub const ImGuiItemFlags_None: c_int = 0;
pub const ImGuiItemFlags_NoTabStop: c_int = 1;
pub const ImGuiItemFlags_NoNav: c_int = 2;
pub const ImGuiItemFlags_NoNavDefaultFocus: c_int = 4;
pub const ImGuiItemFlags_ButtonRepeat: c_int = 8;
pub const ImGuiItemFlags_AutoClosePopups: c_int = 16;
pub const ImGuiItemFlags_AllowDuplicateId: c_int = 32;
pub const ImGuiItemFlags_ = c_uint;
pub const ImGuiInputTextFlags_None: c_int = 0;
pub const ImGuiInputTextFlags_CharsDecimal: c_int = 1;
pub const ImGuiInputTextFlags_CharsHexadecimal: c_int = 2;
pub const ImGuiInputTextFlags_CharsScientific: c_int = 4;
pub const ImGuiInputTextFlags_CharsUppercase: c_int = 8;
pub const ImGuiInputTextFlags_CharsNoBlank: c_int = 16;
pub const ImGuiInputTextFlags_AllowTabInput: c_int = 32;
pub const ImGuiInputTextFlags_EnterReturnsTrue: c_int = 64;
pub const ImGuiInputTextFlags_EscapeClearsAll: c_int = 128;
pub const ImGuiInputTextFlags_CtrlEnterForNewLine: c_int = 256;
pub const ImGuiInputTextFlags_ReadOnly: c_int = 512;
pub const ImGuiInputTextFlags_Password: c_int = 1024;
pub const ImGuiInputTextFlags_AlwaysOverwrite: c_int = 2048;
pub const ImGuiInputTextFlags_AutoSelectAll: c_int = 4096;
pub const ImGuiInputTextFlags_ParseEmptyRefVal: c_int = 8192;
pub const ImGuiInputTextFlags_DisplayEmptyRefVal: c_int = 16384;
pub const ImGuiInputTextFlags_NoHorizontalScroll: c_int = 32768;
pub const ImGuiInputTextFlags_NoUndoRedo: c_int = 65536;
pub const ImGuiInputTextFlags_ElideLeft: c_int = 131072;
pub const ImGuiInputTextFlags_CallbackCompletion: c_int = 262144;
pub const ImGuiInputTextFlags_CallbackHistory: c_int = 524288;
pub const ImGuiInputTextFlags_CallbackAlways: c_int = 1048576;
pub const ImGuiInputTextFlags_CallbackCharFilter: c_int = 2097152;
pub const ImGuiInputTextFlags_CallbackResize: c_int = 4194304;
pub const ImGuiInputTextFlags_CallbackEdit: c_int = 8388608;
pub const ImGuiInputTextFlags_ = c_uint;
pub const ImGuiTreeNodeFlags_None: c_int = 0;
pub const ImGuiTreeNodeFlags_Selected: c_int = 1;
pub const ImGuiTreeNodeFlags_Framed: c_int = 2;
pub const ImGuiTreeNodeFlags_AllowOverlap: c_int = 4;
pub const ImGuiTreeNodeFlags_NoTreePushOnOpen: c_int = 8;
pub const ImGuiTreeNodeFlags_NoAutoOpenOnLog: c_int = 16;
pub const ImGuiTreeNodeFlags_DefaultOpen: c_int = 32;
pub const ImGuiTreeNodeFlags_OpenOnDoubleClick: c_int = 64;
pub const ImGuiTreeNodeFlags_OpenOnArrow: c_int = 128;
pub const ImGuiTreeNodeFlags_Leaf: c_int = 256;
pub const ImGuiTreeNodeFlags_Bullet: c_int = 512;
pub const ImGuiTreeNodeFlags_FramePadding: c_int = 1024;
pub const ImGuiTreeNodeFlags_SpanAvailWidth: c_int = 2048;
pub const ImGuiTreeNodeFlags_SpanFullWidth: c_int = 4096;
pub const ImGuiTreeNodeFlags_SpanLabelWidth: c_int = 8192;
pub const ImGuiTreeNodeFlags_SpanAllColumns: c_int = 16384;
pub const ImGuiTreeNodeFlags_LabelSpanAllColumns: c_int = 32768;
pub const ImGuiTreeNodeFlags_NavLeftJumpsBackHere: c_int = 131072;
pub const ImGuiTreeNodeFlags_CollapsingHeader: c_int = 26;
pub const ImGuiTreeNodeFlags_ = c_uint;
pub const ImGuiPopupFlags_None: c_int = 0;
pub const ImGuiPopupFlags_MouseButtonLeft: c_int = 0;
pub const ImGuiPopupFlags_MouseButtonRight: c_int = 1;
pub const ImGuiPopupFlags_MouseButtonMiddle: c_int = 2;
pub const ImGuiPopupFlags_MouseButtonMask_: c_int = 31;
pub const ImGuiPopupFlags_MouseButtonDefault_: c_int = 1;
pub const ImGuiPopupFlags_NoReopen: c_int = 32;
pub const ImGuiPopupFlags_NoOpenOverExistingPopup: c_int = 128;
pub const ImGuiPopupFlags_NoOpenOverItems: c_int = 256;
pub const ImGuiPopupFlags_AnyPopupId: c_int = 1024;
pub const ImGuiPopupFlags_AnyPopupLevel: c_int = 2048;
pub const ImGuiPopupFlags_AnyPopup: c_int = 3072;
pub const ImGuiPopupFlags_ = c_uint;
pub const ImGuiSelectableFlags_None: c_int = 0;
pub const ImGuiSelectableFlags_NoAutoClosePopups: c_int = 1;
pub const ImGuiSelectableFlags_SpanAllColumns: c_int = 2;
pub const ImGuiSelectableFlags_AllowDoubleClick: c_int = 4;
pub const ImGuiSelectableFlags_Disabled: c_int = 8;
pub const ImGuiSelectableFlags_AllowOverlap: c_int = 16;
pub const ImGuiSelectableFlags_Highlight: c_int = 32;
pub const ImGuiSelectableFlags_ = c_uint;
pub const ImGuiComboFlags_None: c_int = 0;
pub const ImGuiComboFlags_PopupAlignLeft: c_int = 1;
pub const ImGuiComboFlags_HeightSmall: c_int = 2;
pub const ImGuiComboFlags_HeightRegular: c_int = 4;
pub const ImGuiComboFlags_HeightLarge: c_int = 8;
pub const ImGuiComboFlags_HeightLargest: c_int = 16;
pub const ImGuiComboFlags_NoArrowButton: c_int = 32;
pub const ImGuiComboFlags_NoPreview: c_int = 64;
pub const ImGuiComboFlags_WidthFitPreview: c_int = 128;
pub const ImGuiComboFlags_HeightMask_: c_int = 30;
pub const ImGuiComboFlags_ = c_uint;
pub const ImGuiTabBarFlags_None: c_int = 0;
pub const ImGuiTabBarFlags_Reorderable: c_int = 1;
pub const ImGuiTabBarFlags_AutoSelectNewTabs: c_int = 2;
pub const ImGuiTabBarFlags_TabListPopupButton: c_int = 4;
pub const ImGuiTabBarFlags_NoCloseWithMiddleMouseButton: c_int = 8;
pub const ImGuiTabBarFlags_NoTabListScrollingButtons: c_int = 16;
pub const ImGuiTabBarFlags_NoTooltip: c_int = 32;
pub const ImGuiTabBarFlags_DrawSelectedOverline: c_int = 64;
pub const ImGuiTabBarFlags_FittingPolicyResizeDown: c_int = 128;
pub const ImGuiTabBarFlags_FittingPolicyScroll: c_int = 256;
pub const ImGuiTabBarFlags_FittingPolicyMask_: c_int = 384;
pub const ImGuiTabBarFlags_FittingPolicyDefault_: c_int = 128;
pub const ImGuiTabBarFlags_ = c_uint;
pub const ImGuiTabItemFlags_None: c_int = 0;
pub const ImGuiTabItemFlags_UnsavedDocument: c_int = 1;
pub const ImGuiTabItemFlags_SetSelected: c_int = 2;
pub const ImGuiTabItemFlags_NoCloseWithMiddleMouseButton: c_int = 4;
pub const ImGuiTabItemFlags_NoPushId: c_int = 8;
pub const ImGuiTabItemFlags_NoTooltip: c_int = 16;
pub const ImGuiTabItemFlags_NoReorder: c_int = 32;
pub const ImGuiTabItemFlags_Leading: c_int = 64;
pub const ImGuiTabItemFlags_Trailing: c_int = 128;
pub const ImGuiTabItemFlags_NoAssumedClosure: c_int = 256;
pub const ImGuiTabItemFlags_ = c_uint;
pub const ImGuiFocusedFlags_None: c_int = 0;
pub const ImGuiFocusedFlags_ChildWindows: c_int = 1;
pub const ImGuiFocusedFlags_RootWindow: c_int = 2;
pub const ImGuiFocusedFlags_AnyWindow: c_int = 4;
pub const ImGuiFocusedFlags_NoPopupHierarchy: c_int = 8;
pub const ImGuiFocusedFlags_DockHierarchy: c_int = 16;
pub const ImGuiFocusedFlags_RootAndChildWindows: c_int = 3;
pub const ImGuiFocusedFlags_ = c_uint;
pub const ImGuiHoveredFlags_None: c_int = 0;
pub const ImGuiHoveredFlags_ChildWindows: c_int = 1;
pub const ImGuiHoveredFlags_RootWindow: c_int = 2;
pub const ImGuiHoveredFlags_AnyWindow: c_int = 4;
pub const ImGuiHoveredFlags_NoPopupHierarchy: c_int = 8;
pub const ImGuiHoveredFlags_DockHierarchy: c_int = 16;
pub const ImGuiHoveredFlags_AllowWhenBlockedByPopup: c_int = 32;
pub const ImGuiHoveredFlags_AllowWhenBlockedByActiveItem: c_int = 128;
pub const ImGuiHoveredFlags_AllowWhenOverlappedByItem: c_int = 256;
pub const ImGuiHoveredFlags_AllowWhenOverlappedByWindow: c_int = 512;
pub const ImGuiHoveredFlags_AllowWhenDisabled: c_int = 1024;
pub const ImGuiHoveredFlags_NoNavOverride: c_int = 2048;
pub const ImGuiHoveredFlags_AllowWhenOverlapped: c_int = 768;
pub const ImGuiHoveredFlags_RectOnly: c_int = 928;
pub const ImGuiHoveredFlags_RootAndChildWindows: c_int = 3;
pub const ImGuiHoveredFlags_ForTooltip: c_int = 4096;
pub const ImGuiHoveredFlags_Stationary: c_int = 8192;
pub const ImGuiHoveredFlags_DelayNone: c_int = 16384;
pub const ImGuiHoveredFlags_DelayShort: c_int = 32768;
pub const ImGuiHoveredFlags_DelayNormal: c_int = 65536;
pub const ImGuiHoveredFlags_NoSharedDelay: c_int = 131072;
pub const ImGuiHoveredFlags_ = c_uint;
pub const ImGuiDockNodeFlags_None: c_int = 0;
pub const ImGuiDockNodeFlags_KeepAliveOnly: c_int = 1;
pub const ImGuiDockNodeFlags_NoDockingOverCentralNode: c_int = 4;
pub const ImGuiDockNodeFlags_PassthruCentralNode: c_int = 8;
pub const ImGuiDockNodeFlags_NoDockingSplit: c_int = 16;
pub const ImGuiDockNodeFlags_NoResize: c_int = 32;
pub const ImGuiDockNodeFlags_AutoHideTabBar: c_int = 64;
pub const ImGuiDockNodeFlags_NoUndocking: c_int = 128;
pub const ImGuiDockNodeFlags_ = c_uint;
pub const ImGuiDragDropFlags_None: c_int = 0;
pub const ImGuiDragDropFlags_SourceNoPreviewTooltip: c_int = 1;
pub const ImGuiDragDropFlags_SourceNoDisableHover: c_int = 2;
pub const ImGuiDragDropFlags_SourceNoHoldToOpenOthers: c_int = 4;
pub const ImGuiDragDropFlags_SourceAllowNullID: c_int = 8;
pub const ImGuiDragDropFlags_SourceExtern: c_int = 16;
pub const ImGuiDragDropFlags_PayloadAutoExpire: c_int = 32;
pub const ImGuiDragDropFlags_PayloadNoCrossContext: c_int = 64;
pub const ImGuiDragDropFlags_PayloadNoCrossProcess: c_int = 128;
pub const ImGuiDragDropFlags_AcceptBeforeDelivery: c_int = 1024;
pub const ImGuiDragDropFlags_AcceptNoDrawDefaultRect: c_int = 2048;
pub const ImGuiDragDropFlags_AcceptNoPreviewTooltip: c_int = 4096;
pub const ImGuiDragDropFlags_AcceptPeekOnly: c_int = 3072;
pub const ImGuiDragDropFlags_ = c_uint;
pub const ImGuiDataType_S8: c_int = 0;
pub const ImGuiDataType_U8: c_int = 1;
pub const ImGuiDataType_S16: c_int = 2;
pub const ImGuiDataType_U16: c_int = 3;
pub const ImGuiDataType_S32: c_int = 4;
pub const ImGuiDataType_U32: c_int = 5;
pub const ImGuiDataType_S64: c_int = 6;
pub const ImGuiDataType_U64: c_int = 7;
pub const ImGuiDataType_Float: c_int = 8;
pub const ImGuiDataType_Double: c_int = 9;
pub const ImGuiDataType_Bool: c_int = 10;
pub const ImGuiDataType_String: c_int = 11;
pub const ImGuiDataType_COUNT: c_int = 12;
pub const ImGuiDataType_ = c_uint;
pub const ImGuiDir_None: c_int = -1;
pub const ImGuiDir_Left: c_int = 0;
pub const ImGuiDir_Right: c_int = 1;
pub const ImGuiDir_Up: c_int = 2;
pub const ImGuiDir_Down: c_int = 3;
pub const ImGuiDir_COUNT: c_int = 4;
pub const ImGuiDir = c_int;
pub const ImGuiSortDirection_None: c_int = 0;
pub const ImGuiSortDirection_Ascending: c_int = 1;
pub const ImGuiSortDirection_Descending: c_int = 2;
pub const ImGuiSortDirection = c_uint;
pub const ImGuiKey_None: c_int = 0;
pub const ImGuiKey_NamedKey_BEGIN: c_int = 512;
pub const ImGuiKey_Tab: c_int = 512;
pub const ImGuiKey_LeftArrow: c_int = 513;
pub const ImGuiKey_RightArrow: c_int = 514;
pub const ImGuiKey_UpArrow: c_int = 515;
pub const ImGuiKey_DownArrow: c_int = 516;
pub const ImGuiKey_PageUp: c_int = 517;
pub const ImGuiKey_PageDown: c_int = 518;
pub const ImGuiKey_Home: c_int = 519;
pub const ImGuiKey_End: c_int = 520;
pub const ImGuiKey_Insert: c_int = 521;
pub const ImGuiKey_Delete: c_int = 522;
pub const ImGuiKey_Backspace: c_int = 523;
pub const ImGuiKey_Space: c_int = 524;
pub const ImGuiKey_Enter: c_int = 525;
pub const ImGuiKey_Escape: c_int = 526;
pub const ImGuiKey_LeftCtrl: c_int = 527;
pub const ImGuiKey_LeftShift: c_int = 528;
pub const ImGuiKey_LeftAlt: c_int = 529;
pub const ImGuiKey_LeftSuper: c_int = 530;
pub const ImGuiKey_RightCtrl: c_int = 531;
pub const ImGuiKey_RightShift: c_int = 532;
pub const ImGuiKey_RightAlt: c_int = 533;
pub const ImGuiKey_RightSuper: c_int = 534;
pub const ImGuiKey_Menu: c_int = 535;
pub const ImGuiKey_0: c_int = 536;
pub const ImGuiKey_1: c_int = 537;
pub const ImGuiKey_2: c_int = 538;
pub const ImGuiKey_3: c_int = 539;
pub const ImGuiKey_4: c_int = 540;
pub const ImGuiKey_5: c_int = 541;
pub const ImGuiKey_6: c_int = 542;
pub const ImGuiKey_7: c_int = 543;
pub const ImGuiKey_8: c_int = 544;
pub const ImGuiKey_9: c_int = 545;
pub const ImGuiKey_A: c_int = 546;
pub const ImGuiKey_B: c_int = 547;
pub const ImGuiKey_C: c_int = 548;
pub const ImGuiKey_D: c_int = 549;
pub const ImGuiKey_E: c_int = 550;
pub const ImGuiKey_F: c_int = 551;
pub const ImGuiKey_G: c_int = 552;
pub const ImGuiKey_H: c_int = 553;
pub const ImGuiKey_I: c_int = 554;
pub const ImGuiKey_J: c_int = 555;
pub const ImGuiKey_K: c_int = 556;
pub const ImGuiKey_L: c_int = 557;
pub const ImGuiKey_M: c_int = 558;
pub const ImGuiKey_N: c_int = 559;
pub const ImGuiKey_O: c_int = 560;
pub const ImGuiKey_P: c_int = 561;
pub const ImGuiKey_Q: c_int = 562;
pub const ImGuiKey_R: c_int = 563;
pub const ImGuiKey_S: c_int = 564;
pub const ImGuiKey_T: c_int = 565;
pub const ImGuiKey_U: c_int = 566;
pub const ImGuiKey_V: c_int = 567;
pub const ImGuiKey_W: c_int = 568;
pub const ImGuiKey_X: c_int = 569;
pub const ImGuiKey_Y: c_int = 570;
pub const ImGuiKey_Z: c_int = 571;
pub const ImGuiKey_F1: c_int = 572;
pub const ImGuiKey_F2: c_int = 573;
pub const ImGuiKey_F3: c_int = 574;
pub const ImGuiKey_F4: c_int = 575;
pub const ImGuiKey_F5: c_int = 576;
pub const ImGuiKey_F6: c_int = 577;
pub const ImGuiKey_F7: c_int = 578;
pub const ImGuiKey_F8: c_int = 579;
pub const ImGuiKey_F9: c_int = 580;
pub const ImGuiKey_F10: c_int = 581;
pub const ImGuiKey_F11: c_int = 582;
pub const ImGuiKey_F12: c_int = 583;
pub const ImGuiKey_F13: c_int = 584;
pub const ImGuiKey_F14: c_int = 585;
pub const ImGuiKey_F15: c_int = 586;
pub const ImGuiKey_F16: c_int = 587;
pub const ImGuiKey_F17: c_int = 588;
pub const ImGuiKey_F18: c_int = 589;
pub const ImGuiKey_F19: c_int = 590;
pub const ImGuiKey_F20: c_int = 591;
pub const ImGuiKey_F21: c_int = 592;
pub const ImGuiKey_F22: c_int = 593;
pub const ImGuiKey_F23: c_int = 594;
pub const ImGuiKey_F24: c_int = 595;
pub const ImGuiKey_Apostrophe: c_int = 596;
pub const ImGuiKey_Comma: c_int = 597;
pub const ImGuiKey_Minus: c_int = 598;
pub const ImGuiKey_Period: c_int = 599;
pub const ImGuiKey_Slash: c_int = 600;
pub const ImGuiKey_Semicolon: c_int = 601;
pub const ImGuiKey_Equal: c_int = 602;
pub const ImGuiKey_LeftBracket: c_int = 603;
pub const ImGuiKey_Backslash: c_int = 604;
pub const ImGuiKey_RightBracket: c_int = 605;
pub const ImGuiKey_GraveAccent: c_int = 606;
pub const ImGuiKey_CapsLock: c_int = 607;
pub const ImGuiKey_ScrollLock: c_int = 608;
pub const ImGuiKey_NumLock: c_int = 609;
pub const ImGuiKey_PrintScreen: c_int = 610;
pub const ImGuiKey_Pause: c_int = 611;
pub const ImGuiKey_Keypad0: c_int = 612;
pub const ImGuiKey_Keypad1: c_int = 613;
pub const ImGuiKey_Keypad2: c_int = 614;
pub const ImGuiKey_Keypad3: c_int = 615;
pub const ImGuiKey_Keypad4: c_int = 616;
pub const ImGuiKey_Keypad5: c_int = 617;
pub const ImGuiKey_Keypad6: c_int = 618;
pub const ImGuiKey_Keypad7: c_int = 619;
pub const ImGuiKey_Keypad8: c_int = 620;
pub const ImGuiKey_Keypad9: c_int = 621;
pub const ImGuiKey_KeypadDecimal: c_int = 622;
pub const ImGuiKey_KeypadDivide: c_int = 623;
pub const ImGuiKey_KeypadMultiply: c_int = 624;
pub const ImGuiKey_KeypadSubtract: c_int = 625;
pub const ImGuiKey_KeypadAdd: c_int = 626;
pub const ImGuiKey_KeypadEnter: c_int = 627;
pub const ImGuiKey_KeypadEqual: c_int = 628;
pub const ImGuiKey_AppBack: c_int = 629;
pub const ImGuiKey_AppForward: c_int = 630;
pub const ImGuiKey_Oem102: c_int = 631;
pub const ImGuiKey_GamepadStart: c_int = 632;
pub const ImGuiKey_GamepadBack: c_int = 633;
pub const ImGuiKey_GamepadFaceLeft: c_int = 634;
pub const ImGuiKey_GamepadFaceRight: c_int = 635;
pub const ImGuiKey_GamepadFaceUp: c_int = 636;
pub const ImGuiKey_GamepadFaceDown: c_int = 637;
pub const ImGuiKey_GamepadDpadLeft: c_int = 638;
pub const ImGuiKey_GamepadDpadRight: c_int = 639;
pub const ImGuiKey_GamepadDpadUp: c_int = 640;
pub const ImGuiKey_GamepadDpadDown: c_int = 641;
pub const ImGuiKey_GamepadL1: c_int = 642;
pub const ImGuiKey_GamepadR1: c_int = 643;
pub const ImGuiKey_GamepadL2: c_int = 644;
pub const ImGuiKey_GamepadR2: c_int = 645;
pub const ImGuiKey_GamepadL3: c_int = 646;
pub const ImGuiKey_GamepadR3: c_int = 647;
pub const ImGuiKey_GamepadLStickLeft: c_int = 648;
pub const ImGuiKey_GamepadLStickRight: c_int = 649;
pub const ImGuiKey_GamepadLStickUp: c_int = 650;
pub const ImGuiKey_GamepadLStickDown: c_int = 651;
pub const ImGuiKey_GamepadRStickLeft: c_int = 652;
pub const ImGuiKey_GamepadRStickRight: c_int = 653;
pub const ImGuiKey_GamepadRStickUp: c_int = 654;
pub const ImGuiKey_GamepadRStickDown: c_int = 655;
pub const ImGuiKey_MouseLeft: c_int = 656;
pub const ImGuiKey_MouseRight: c_int = 657;
pub const ImGuiKey_MouseMiddle: c_int = 658;
pub const ImGuiKey_MouseX1: c_int = 659;
pub const ImGuiKey_MouseX2: c_int = 660;
pub const ImGuiKey_MouseWheelX: c_int = 661;
pub const ImGuiKey_MouseWheelY: c_int = 662;
pub const ImGuiKey_ReservedForModCtrl: c_int = 663;
pub const ImGuiKey_ReservedForModShift: c_int = 664;
pub const ImGuiKey_ReservedForModAlt: c_int = 665;
pub const ImGuiKey_ReservedForModSuper: c_int = 666;
pub const ImGuiKey_NamedKey_END: c_int = 667;
pub const ImGuiMod_None: c_int = 0;
pub const ImGuiMod_Ctrl: c_int = 4096;
pub const ImGuiMod_Shift: c_int = 8192;
pub const ImGuiMod_Alt: c_int = 16384;
pub const ImGuiMod_Super: c_int = 32768;
pub const ImGuiMod_Mask_: c_int = 61440;
pub const ImGuiKey_NamedKey_COUNT: c_int = 155;
pub const ImGuiKey = c_uint;
pub const ImGuiInputFlags_None: c_int = 0;
pub const ImGuiInputFlags_Repeat: c_int = 1;
pub const ImGuiInputFlags_RouteActive: c_int = 1024;
pub const ImGuiInputFlags_RouteFocused: c_int = 2048;
pub const ImGuiInputFlags_RouteGlobal: c_int = 4096;
pub const ImGuiInputFlags_RouteAlways: c_int = 8192;
pub const ImGuiInputFlags_RouteOverFocused: c_int = 16384;
pub const ImGuiInputFlags_RouteOverActive: c_int = 32768;
pub const ImGuiInputFlags_RouteUnlessBgFocused: c_int = 65536;
pub const ImGuiInputFlags_RouteFromRootWindow: c_int = 131072;
pub const ImGuiInputFlags_Tooltip: c_int = 262144;
pub const ImGuiInputFlags_ = c_uint;
pub const ImGuiConfigFlags_None: c_int = 0;
pub const ImGuiConfigFlags_NavEnableKeyboard: c_int = 1;
pub const ImGuiConfigFlags_NavEnableGamepad: c_int = 2;
pub const ImGuiConfigFlags_NoMouse: c_int = 16;
pub const ImGuiConfigFlags_NoMouseCursorChange: c_int = 32;
pub const ImGuiConfigFlags_NoKeyboard: c_int = 64;
pub const ImGuiConfigFlags_DockingEnable: c_int = 128;
pub const ImGuiConfigFlags_ViewportsEnable: c_int = 1024;
pub const ImGuiConfigFlags_DpiEnableScaleViewports: c_int = 16384;
pub const ImGuiConfigFlags_DpiEnableScaleFonts: c_int = 32768;
pub const ImGuiConfigFlags_IsSRGB: c_int = 1048576;
pub const ImGuiConfigFlags_IsTouchScreen: c_int = 2097152;
pub const ImGuiConfigFlags_ = c_uint;
pub const ImGuiBackendFlags_None: c_int = 0;
pub const ImGuiBackendFlags_HasGamepad: c_int = 1;
pub const ImGuiBackendFlags_HasMouseCursors: c_int = 2;
pub const ImGuiBackendFlags_HasSetMousePos: c_int = 4;
pub const ImGuiBackendFlags_RendererHasVtxOffset: c_int = 8;
pub const ImGuiBackendFlags_PlatformHasViewports: c_int = 1024;
pub const ImGuiBackendFlags_HasMouseHoveredViewport: c_int = 2048;
pub const ImGuiBackendFlags_RendererHasViewports: c_int = 4096;
pub const ImGuiBackendFlags_ = c_uint;
pub const ImGuiCol_Text: c_int = 0;
pub const ImGuiCol_TextDisabled: c_int = 1;
pub const ImGuiCol_WindowBg: c_int = 2;
pub const ImGuiCol_ChildBg: c_int = 3;
pub const ImGuiCol_PopupBg: c_int = 4;
pub const ImGuiCol_Border: c_int = 5;
pub const ImGuiCol_BorderShadow: c_int = 6;
pub const ImGuiCol_FrameBg: c_int = 7;
pub const ImGuiCol_FrameBgHovered: c_int = 8;
pub const ImGuiCol_FrameBgActive: c_int = 9;
pub const ImGuiCol_TitleBg: c_int = 10;
pub const ImGuiCol_TitleBgActive: c_int = 11;
pub const ImGuiCol_TitleBgCollapsed: c_int = 12;
pub const ImGuiCol_MenuBarBg: c_int = 13;
pub const ImGuiCol_ScrollbarBg: c_int = 14;
pub const ImGuiCol_ScrollbarGrab: c_int = 15;
pub const ImGuiCol_ScrollbarGrabHovered: c_int = 16;
pub const ImGuiCol_ScrollbarGrabActive: c_int = 17;
pub const ImGuiCol_CheckMark: c_int = 18;
pub const ImGuiCol_SliderGrab: c_int = 19;
pub const ImGuiCol_SliderGrabActive: c_int = 20;
pub const ImGuiCol_Button: c_int = 21;
pub const ImGuiCol_ButtonHovered: c_int = 22;
pub const ImGuiCol_ButtonActive: c_int = 23;
pub const ImGuiCol_Header: c_int = 24;
pub const ImGuiCol_HeaderHovered: c_int = 25;
pub const ImGuiCol_HeaderActive: c_int = 26;
pub const ImGuiCol_Separator: c_int = 27;
pub const ImGuiCol_SeparatorHovered: c_int = 28;
pub const ImGuiCol_SeparatorActive: c_int = 29;
pub const ImGuiCol_ResizeGrip: c_int = 30;
pub const ImGuiCol_ResizeGripHovered: c_int = 31;
pub const ImGuiCol_ResizeGripActive: c_int = 32;
pub const ImGuiCol_TabHovered: c_int = 33;
pub const ImGuiCol_Tab: c_int = 34;
pub const ImGuiCol_TabSelected: c_int = 35;
pub const ImGuiCol_TabSelectedOverline: c_int = 36;
pub const ImGuiCol_TabDimmed: c_int = 37;
pub const ImGuiCol_TabDimmedSelected: c_int = 38;
pub const ImGuiCol_TabDimmedSelectedOverline: c_int = 39;
pub const ImGuiCol_DockingPreview: c_int = 40;
pub const ImGuiCol_DockingEmptyBg: c_int = 41;
pub const ImGuiCol_PlotLines: c_int = 42;
pub const ImGuiCol_PlotLinesHovered: c_int = 43;
pub const ImGuiCol_PlotHistogram: c_int = 44;
pub const ImGuiCol_PlotHistogramHovered: c_int = 45;
pub const ImGuiCol_TableHeaderBg: c_int = 46;
pub const ImGuiCol_TableBorderStrong: c_int = 47;
pub const ImGuiCol_TableBorderLight: c_int = 48;
pub const ImGuiCol_TableRowBg: c_int = 49;
pub const ImGuiCol_TableRowBgAlt: c_int = 50;
pub const ImGuiCol_TextLink: c_int = 51;
pub const ImGuiCol_TextSelectedBg: c_int = 52;
pub const ImGuiCol_DragDropTarget: c_int = 53;
pub const ImGuiCol_NavCursor: c_int = 54;
pub const ImGuiCol_NavWindowingHighlight: c_int = 55;
pub const ImGuiCol_NavWindowingDimBg: c_int = 56;
pub const ImGuiCol_ModalWindowDimBg: c_int = 57;
pub const ImGuiCol_COUNT: c_int = 58;
pub const ImGuiCol_ = c_uint;
pub const ImGuiStyleVar_Alpha: c_int = 0;
pub const ImGuiStyleVar_DisabledAlpha: c_int = 1;
pub const ImGuiStyleVar_WindowPadding: c_int = 2;
pub const ImGuiStyleVar_WindowRounding: c_int = 3;
pub const ImGuiStyleVar_WindowBorderSize: c_int = 4;
pub const ImGuiStyleVar_WindowMinSize: c_int = 5;
pub const ImGuiStyleVar_WindowTitleAlign: c_int = 6;
pub const ImGuiStyleVar_ChildRounding: c_int = 7;
pub const ImGuiStyleVar_ChildBorderSize: c_int = 8;
pub const ImGuiStyleVar_PopupRounding: c_int = 9;
pub const ImGuiStyleVar_PopupBorderSize: c_int = 10;
pub const ImGuiStyleVar_FramePadding: c_int = 11;
pub const ImGuiStyleVar_FrameRounding: c_int = 12;
pub const ImGuiStyleVar_FrameBorderSize: c_int = 13;
pub const ImGuiStyleVar_ItemSpacing: c_int = 14;
pub const ImGuiStyleVar_ItemInnerSpacing: c_int = 15;
pub const ImGuiStyleVar_IndentSpacing: c_int = 16;
pub const ImGuiStyleVar_CellPadding: c_int = 17;
pub const ImGuiStyleVar_ScrollbarSize: c_int = 18;
pub const ImGuiStyleVar_ScrollbarRounding: c_int = 19;
pub const ImGuiStyleVar_GrabMinSize: c_int = 20;
pub const ImGuiStyleVar_GrabRounding: c_int = 21;
pub const ImGuiStyleVar_ImageBorderSize: c_int = 22;
pub const ImGuiStyleVar_TabRounding: c_int = 23;
pub const ImGuiStyleVar_TabBorderSize: c_int = 24;
pub const ImGuiStyleVar_TabBarBorderSize: c_int = 25;
pub const ImGuiStyleVar_TabBarOverlineSize: c_int = 26;
pub const ImGuiStyleVar_TableAngledHeadersAngle: c_int = 27;
pub const ImGuiStyleVar_TableAngledHeadersTextAlign: c_int = 28;
pub const ImGuiStyleVar_ButtonTextAlign: c_int = 29;
pub const ImGuiStyleVar_SelectableTextAlign: c_int = 30;
pub const ImGuiStyleVar_SeparatorTextBorderSize: c_int = 31;
pub const ImGuiStyleVar_SeparatorTextAlign: c_int = 32;
pub const ImGuiStyleVar_SeparatorTextPadding: c_int = 33;
pub const ImGuiStyleVar_DockingSeparatorSize: c_int = 34;
pub const ImGuiStyleVar_COUNT: c_int = 35;
pub const ImGuiStyleVar_ = c_uint;
pub const ImGuiButtonFlags_None: c_int = 0;
pub const ImGuiButtonFlags_MouseButtonLeft: c_int = 1;
pub const ImGuiButtonFlags_MouseButtonRight: c_int = 2;
pub const ImGuiButtonFlags_MouseButtonMiddle: c_int = 4;
pub const ImGuiButtonFlags_MouseButtonMask_: c_int = 7;
pub const ImGuiButtonFlags_EnableNav: c_int = 8;
pub const ImGuiButtonFlags_ = c_uint;
pub const ImGuiColorEditFlags_None: c_int = 0;
pub const ImGuiColorEditFlags_NoAlpha: c_int = 2;
pub const ImGuiColorEditFlags_NoPicker: c_int = 4;
pub const ImGuiColorEditFlags_NoOptions: c_int = 8;
pub const ImGuiColorEditFlags_NoSmallPreview: c_int = 16;
pub const ImGuiColorEditFlags_NoInputs: c_int = 32;
pub const ImGuiColorEditFlags_NoTooltip: c_int = 64;
pub const ImGuiColorEditFlags_NoLabel: c_int = 128;
pub const ImGuiColorEditFlags_NoSidePreview: c_int = 256;
pub const ImGuiColorEditFlags_NoDragDrop: c_int = 512;
pub const ImGuiColorEditFlags_NoBorder: c_int = 1024;
pub const ImGuiColorEditFlags_AlphaOpaque: c_int = 2048;
pub const ImGuiColorEditFlags_AlphaNoBg: c_int = 4096;
pub const ImGuiColorEditFlags_AlphaPreviewHalf: c_int = 8192;
pub const ImGuiColorEditFlags_AlphaBar: c_int = 65536;
pub const ImGuiColorEditFlags_HDR: c_int = 524288;
pub const ImGuiColorEditFlags_DisplayRGB: c_int = 1048576;
pub const ImGuiColorEditFlags_DisplayHSV: c_int = 2097152;
pub const ImGuiColorEditFlags_DisplayHex: c_int = 4194304;
pub const ImGuiColorEditFlags_Uint8: c_int = 8388608;
pub const ImGuiColorEditFlags_Float: c_int = 16777216;
pub const ImGuiColorEditFlags_PickerHueBar: c_int = 33554432;
pub const ImGuiColorEditFlags_PickerHueWheel: c_int = 67108864;
pub const ImGuiColorEditFlags_InputRGB: c_int = 134217728;
pub const ImGuiColorEditFlags_InputHSV: c_int = 268435456;
pub const ImGuiColorEditFlags_DefaultOptions_: c_int = 177209344;
pub const ImGuiColorEditFlags_AlphaMask_: c_int = 14338;
pub const ImGuiColorEditFlags_DisplayMask_: c_int = 7340032;
pub const ImGuiColorEditFlags_DataTypeMask_: c_int = 25165824;
pub const ImGuiColorEditFlags_PickerMask_: c_int = 100663296;
pub const ImGuiColorEditFlags_InputMask_: c_int = 402653184;
pub const ImGuiColorEditFlags_ = c_uint;
pub const ImGuiSliderFlags_None: c_int = 0;
pub const ImGuiSliderFlags_Logarithmic: c_int = 32;
pub const ImGuiSliderFlags_NoRoundToFormat: c_int = 64;
pub const ImGuiSliderFlags_NoInput: c_int = 128;
pub const ImGuiSliderFlags_WrapAround: c_int = 256;
pub const ImGuiSliderFlags_ClampOnInput: c_int = 512;
pub const ImGuiSliderFlags_ClampZeroRange: c_int = 1024;
pub const ImGuiSliderFlags_NoSpeedTweaks: c_int = 2048;
pub const ImGuiSliderFlags_AlwaysClamp: c_int = 1536;
pub const ImGuiSliderFlags_InvalidMask_: c_int = 1879048207;
pub const ImGuiSliderFlags_ = c_uint;
pub const ImGuiMouseButton_Left: c_int = 0;
pub const ImGuiMouseButton_Right: c_int = 1;
pub const ImGuiMouseButton_Middle: c_int = 2;
pub const ImGuiMouseButton_COUNT: c_int = 5;
pub const ImGuiMouseButton_ = c_uint;
pub const ImGuiMouseCursor_None: c_int = -1;
pub const ImGuiMouseCursor_Arrow: c_int = 0;
pub const ImGuiMouseCursor_TextInput: c_int = 1;
pub const ImGuiMouseCursor_ResizeAll: c_int = 2;
pub const ImGuiMouseCursor_ResizeNS: c_int = 3;
pub const ImGuiMouseCursor_ResizeEW: c_int = 4;
pub const ImGuiMouseCursor_ResizeNESW: c_int = 5;
pub const ImGuiMouseCursor_ResizeNWSE: c_int = 6;
pub const ImGuiMouseCursor_Hand: c_int = 7;
pub const ImGuiMouseCursor_Wait: c_int = 8;
pub const ImGuiMouseCursor_Progress: c_int = 9;
pub const ImGuiMouseCursor_NotAllowed: c_int = 10;
pub const ImGuiMouseCursor_COUNT: c_int = 11;
pub const ImGuiMouseCursor_ = c_int;
pub const ImGuiMouseSource_Mouse: c_int = 0;
pub const ImGuiMouseSource_TouchScreen: c_int = 1;
pub const ImGuiMouseSource_Pen: c_int = 2;
pub const ImGuiMouseSource_COUNT: c_int = 3;
pub const ImGuiMouseSource = c_uint;
pub const ImGuiCond_None: c_int = 0;
pub const ImGuiCond_Always: c_int = 1;
pub const ImGuiCond_Once: c_int = 2;
pub const ImGuiCond_FirstUseEver: c_int = 4;
pub const ImGuiCond_Appearing: c_int = 8;
pub const ImGuiCond_ = c_uint;
pub const ImGuiTableFlags_None: c_int = 0;
pub const ImGuiTableFlags_Resizable: c_int = 1;
pub const ImGuiTableFlags_Reorderable: c_int = 2;
pub const ImGuiTableFlags_Hideable: c_int = 4;
pub const ImGuiTableFlags_Sortable: c_int = 8;
pub const ImGuiTableFlags_NoSavedSettings: c_int = 16;
pub const ImGuiTableFlags_ContextMenuInBody: c_int = 32;
pub const ImGuiTableFlags_RowBg: c_int = 64;
pub const ImGuiTableFlags_BordersInnerH: c_int = 128;
pub const ImGuiTableFlags_BordersOuterH: c_int = 256;
pub const ImGuiTableFlags_BordersInnerV: c_int = 512;
pub const ImGuiTableFlags_BordersOuterV: c_int = 1024;
pub const ImGuiTableFlags_BordersH: c_int = 384;
pub const ImGuiTableFlags_BordersV: c_int = 1536;
pub const ImGuiTableFlags_BordersInner: c_int = 640;
pub const ImGuiTableFlags_BordersOuter: c_int = 1280;
pub const ImGuiTableFlags_Borders: c_int = 1920;
pub const ImGuiTableFlags_NoBordersInBody: c_int = 2048;
pub const ImGuiTableFlags_NoBordersInBodyUntilResize: c_int = 4096;
pub const ImGuiTableFlags_SizingFixedFit: c_int = 8192;
pub const ImGuiTableFlags_SizingFixedSame: c_int = 16384;
pub const ImGuiTableFlags_SizingStretchProp: c_int = 24576;
pub const ImGuiTableFlags_SizingStretchSame: c_int = 32768;
pub const ImGuiTableFlags_NoHostExtendX: c_int = 65536;
pub const ImGuiTableFlags_NoHostExtendY: c_int = 131072;
pub const ImGuiTableFlags_NoKeepColumnsVisible: c_int = 262144;
pub const ImGuiTableFlags_PreciseWidths: c_int = 524288;
pub const ImGuiTableFlags_NoClip: c_int = 1048576;
pub const ImGuiTableFlags_PadOuterX: c_int = 2097152;
pub const ImGuiTableFlags_NoPadOuterX: c_int = 4194304;
pub const ImGuiTableFlags_NoPadInnerX: c_int = 8388608;
pub const ImGuiTableFlags_ScrollX: c_int = 16777216;
pub const ImGuiTableFlags_ScrollY: c_int = 33554432;
pub const ImGuiTableFlags_SortMulti: c_int = 67108864;
pub const ImGuiTableFlags_SortTristate: c_int = 134217728;
pub const ImGuiTableFlags_HighlightHoveredColumn: c_int = 268435456;
pub const ImGuiTableFlags_SizingMask_: c_int = 57344;
pub const ImGuiTableFlags_ = c_uint;
pub const ImGuiTableColumnFlags_None: c_int = 0;
pub const ImGuiTableColumnFlags_Disabled: c_int = 1;
pub const ImGuiTableColumnFlags_DefaultHide: c_int = 2;
pub const ImGuiTableColumnFlags_DefaultSort: c_int = 4;
pub const ImGuiTableColumnFlags_WidthStretch: c_int = 8;
pub const ImGuiTableColumnFlags_WidthFixed: c_int = 16;
pub const ImGuiTableColumnFlags_NoResize: c_int = 32;
pub const ImGuiTableColumnFlags_NoReorder: c_int = 64;
pub const ImGuiTableColumnFlags_NoHide: c_int = 128;
pub const ImGuiTableColumnFlags_NoClip: c_int = 256;
pub const ImGuiTableColumnFlags_NoSort: c_int = 512;
pub const ImGuiTableColumnFlags_NoSortAscending: c_int = 1024;
pub const ImGuiTableColumnFlags_NoSortDescending: c_int = 2048;
pub const ImGuiTableColumnFlags_NoHeaderLabel: c_int = 4096;
pub const ImGuiTableColumnFlags_NoHeaderWidth: c_int = 8192;
pub const ImGuiTableColumnFlags_PreferSortAscending: c_int = 16384;
pub const ImGuiTableColumnFlags_PreferSortDescending: c_int = 32768;
pub const ImGuiTableColumnFlags_IndentEnable: c_int = 65536;
pub const ImGuiTableColumnFlags_IndentDisable: c_int = 131072;
pub const ImGuiTableColumnFlags_AngledHeader: c_int = 262144;
pub const ImGuiTableColumnFlags_IsEnabled: c_int = 16777216;
pub const ImGuiTableColumnFlags_IsVisible: c_int = 33554432;
pub const ImGuiTableColumnFlags_IsSorted: c_int = 67108864;
pub const ImGuiTableColumnFlags_IsHovered: c_int = 134217728;
pub const ImGuiTableColumnFlags_WidthMask_: c_int = 24;
pub const ImGuiTableColumnFlags_IndentMask_: c_int = 196608;
pub const ImGuiTableColumnFlags_StatusMask_: c_int = 251658240;
pub const ImGuiTableColumnFlags_NoDirectResize_: c_int = 1073741824;
pub const ImGuiTableColumnFlags_ = c_uint;
pub const ImGuiTableRowFlags_None: c_int = 0;
pub const ImGuiTableRowFlags_Headers: c_int = 1;
pub const ImGuiTableRowFlags_ = c_uint;
pub const ImGuiTableBgTarget_None: c_int = 0;
pub const ImGuiTableBgTarget_RowBg0: c_int = 1;
pub const ImGuiTableBgTarget_RowBg1: c_int = 2;
pub const ImGuiTableBgTarget_CellBg: c_int = 3;
pub const ImGuiTableBgTarget_ = c_uint;
pub const ImGuiMultiSelectFlags_None: c_int = 0;
pub const ImGuiMultiSelectFlags_SingleSelect: c_int = 1;
pub const ImGuiMultiSelectFlags_NoSelectAll: c_int = 2;
pub const ImGuiMultiSelectFlags_NoRangeSelect: c_int = 4;
pub const ImGuiMultiSelectFlags_NoAutoSelect: c_int = 8;
pub const ImGuiMultiSelectFlags_NoAutoClear: c_int = 16;
pub const ImGuiMultiSelectFlags_NoAutoClearOnReselect: c_int = 32;
pub const ImGuiMultiSelectFlags_BoxSelect1d: c_int = 64;
pub const ImGuiMultiSelectFlags_BoxSelect2d: c_int = 128;
pub const ImGuiMultiSelectFlags_BoxSelectNoScroll: c_int = 256;
pub const ImGuiMultiSelectFlags_ClearOnEscape: c_int = 512;
pub const ImGuiMultiSelectFlags_ClearOnClickVoid: c_int = 1024;
pub const ImGuiMultiSelectFlags_ScopeWindow: c_int = 2048;
pub const ImGuiMultiSelectFlags_ScopeRect: c_int = 4096;
pub const ImGuiMultiSelectFlags_SelectOnClick: c_int = 8192;
pub const ImGuiMultiSelectFlags_SelectOnClickRelease: c_int = 16384;
pub const ImGuiMultiSelectFlags_NavWrapX: c_int = 65536;
pub const ImGuiMultiSelectFlags_ = c_uint;
pub const ImGuiSelectionRequestType_None: c_int = 0;
pub const ImGuiSelectionRequestType_SetAll: c_int = 1;
pub const ImGuiSelectionRequestType_SetRange: c_int = 2;
pub const ImGuiSelectionRequestType = c_uint;
pub const ImDrawFlags_None: c_int = 0;
pub const ImDrawFlags_Closed: c_int = 1;
pub const ImDrawFlags_RoundCornersTopLeft: c_int = 16;
pub const ImDrawFlags_RoundCornersTopRight: c_int = 32;
pub const ImDrawFlags_RoundCornersBottomLeft: c_int = 64;
pub const ImDrawFlags_RoundCornersBottomRight: c_int = 128;
pub const ImDrawFlags_RoundCornersNone: c_int = 256;
pub const ImDrawFlags_RoundCornersTop: c_int = 48;
pub const ImDrawFlags_RoundCornersBottom: c_int = 192;
pub const ImDrawFlags_RoundCornersLeft: c_int = 80;
pub const ImDrawFlags_RoundCornersRight: c_int = 160;
pub const ImDrawFlags_RoundCornersAll: c_int = 240;
pub const ImDrawFlags_RoundCornersDefault_: c_int = 240;
pub const ImDrawFlags_RoundCornersMask_: c_int = 496;
pub const ImDrawFlags_ = c_uint;
pub const ImDrawListFlags_None: c_int = 0;
pub const ImDrawListFlags_AntiAliasedLines: c_int = 1;
pub const ImDrawListFlags_AntiAliasedLinesUseTex: c_int = 2;
pub const ImDrawListFlags_AntiAliasedFill: c_int = 4;
pub const ImDrawListFlags_AllowVtxOffset: c_int = 8;
pub const ImDrawListFlags_ = c_uint;
pub const ImFontAtlasFlags_None: c_int = 0;
pub const ImFontAtlasFlags_NoPowerOfTwoHeight: c_int = 1;
pub const ImFontAtlasFlags_NoMouseCursors: c_int = 2;
pub const ImFontAtlasFlags_NoBakedLines: c_int = 4;
pub const ImFontAtlasFlags_ = c_uint;
pub const ImGuiViewportFlags_None: c_int = 0;
pub const ImGuiViewportFlags_IsPlatformWindow: c_int = 1;
pub const ImGuiViewportFlags_IsPlatformMonitor: c_int = 2;
pub const ImGuiViewportFlags_OwnedByApp: c_int = 4;
pub const ImGuiViewportFlags_NoDecoration: c_int = 8;
pub const ImGuiViewportFlags_NoTaskBarIcon: c_int = 16;
pub const ImGuiViewportFlags_NoFocusOnAppearing: c_int = 32;
pub const ImGuiViewportFlags_NoFocusOnClick: c_int = 64;
pub const ImGuiViewportFlags_NoInputs: c_int = 128;
pub const ImGuiViewportFlags_NoRendererClear: c_int = 256;
pub const ImGuiViewportFlags_NoAutoMerge: c_int = 512;
pub const ImGuiViewportFlags_TopMost: c_int = 1024;
pub const ImGuiViewportFlags_CanHostOtherWindows: c_int = 2048;
pub const ImGuiViewportFlags_IsMinimized: c_int = 4096;
pub const ImGuiViewportFlags_IsFocused: c_int = 8192;
pub const ImGuiViewportFlags_ = c_uint;
pub const ImGuiDataAuthority = c_int;
pub const ImGuiActivateFlags = c_int;
pub const ImGuiDebugLogFlags = c_int;
pub const ImGuiFocusRequestFlags = c_int;
pub const ImGuiLogFlags = c_int;
pub const ImGuiNavRenderCursorFlags = c_int;
pub const ImGuiNavMoveFlags = c_int;
pub const ImGuiScrollFlags = c_int;
pub const ImGuiSeparatorFlags = c_int;
pub const ImGuiTextFlags = c_int;
pub const ImGuiTooltipFlags = c_int;
pub extern var GImGui: ?*ImGuiContext;
pub const ImFileHandle = [*c]FILE;
pub const ImPoolIdx = c_int;
pub const ImGuiDataType_Pointer: c_int = 12;
pub const ImGuiDataType_ID: c_int = 13;
pub const ImGuiDataTypePrivate_ = c_uint;
pub const ImGuiItemFlags_Disabled: c_int = 1024;
pub const ImGuiItemFlags_ReadOnly: c_int = 2048;
pub const ImGuiItemFlags_MixedValue: c_int = 4096;
pub const ImGuiItemFlags_NoWindowHoverableCheck: c_int = 8192;
pub const ImGuiItemFlags_AllowOverlap: c_int = 16384;
pub const ImGuiItemFlags_NoNavDisableMouseHover: c_int = 32768;
pub const ImGuiItemFlags_NoMarkEdited: c_int = 65536;
pub const ImGuiItemFlags_Inputable: c_int = 1048576;
pub const ImGuiItemFlags_HasSelectionUserData: c_int = 2097152;
pub const ImGuiItemFlags_IsMultiSelect: c_int = 4194304;
pub const ImGuiItemFlags_Default_: c_int = 16;
pub const ImGuiItemFlagsPrivate_ = c_uint;
pub const ImGuiItemStatusFlags_None: c_int = 0;
pub const ImGuiItemStatusFlags_HoveredRect: c_int = 1;
pub const ImGuiItemStatusFlags_HasDisplayRect: c_int = 2;
pub const ImGuiItemStatusFlags_Edited: c_int = 4;
pub const ImGuiItemStatusFlags_ToggledSelection: c_int = 8;
pub const ImGuiItemStatusFlags_ToggledOpen: c_int = 16;
pub const ImGuiItemStatusFlags_HasDeactivated: c_int = 32;
pub const ImGuiItemStatusFlags_Deactivated: c_int = 64;
pub const ImGuiItemStatusFlags_HoveredWindow: c_int = 128;
pub const ImGuiItemStatusFlags_Visible: c_int = 256;
pub const ImGuiItemStatusFlags_HasClipRect: c_int = 512;
pub const ImGuiItemStatusFlags_HasShortcut: c_int = 1024;
pub const ImGuiItemStatusFlags_ = c_uint;
pub const ImGuiHoveredFlags_DelayMask_: c_int = 245760;
pub const ImGuiHoveredFlags_AllowedMaskForIsWindowHovered: c_int = 12479;
pub const ImGuiHoveredFlags_AllowedMaskForIsItemHovered: c_int = 262048;
pub const ImGuiHoveredFlagsPrivate_ = c_uint;
pub const ImGuiInputTextFlags_Multiline: c_int = 67108864;
pub const ImGuiInputTextFlags_MergedItem: c_int = 134217728;
pub const ImGuiInputTextFlags_LocalizeDecimalPoint: c_int = 268435456;
pub const ImGuiInputTextFlagsPrivate_ = c_uint;
pub const ImGuiButtonFlags_PressedOnClick: c_int = 16;
pub const ImGuiButtonFlags_PressedOnClickRelease: c_int = 32;
pub const ImGuiButtonFlags_PressedOnClickReleaseAnywhere: c_int = 64;
pub const ImGuiButtonFlags_PressedOnRelease: c_int = 128;
pub const ImGuiButtonFlags_PressedOnDoubleClick: c_int = 256;
pub const ImGuiButtonFlags_PressedOnDragDropHold: c_int = 512;
pub const ImGuiButtonFlags_FlattenChildren: c_int = 2048;
pub const ImGuiButtonFlags_AllowOverlap: c_int = 4096;
pub const ImGuiButtonFlags_AlignTextBaseLine: c_int = 32768;
pub const ImGuiButtonFlags_NoKeyModsAllowed: c_int = 65536;
pub const ImGuiButtonFlags_NoHoldingActiveId: c_int = 131072;
pub const ImGuiButtonFlags_NoNavFocus: c_int = 262144;
pub const ImGuiButtonFlags_NoHoveredOnFocus: c_int = 524288;
pub const ImGuiButtonFlags_NoSetKeyOwner: c_int = 1048576;
pub const ImGuiButtonFlags_NoTestKeyOwner: c_int = 2097152;
pub const ImGuiButtonFlags_PressedOnMask_: c_int = 1008;
pub const ImGuiButtonFlags_PressedOnDefault_: c_int = 32;
pub const ImGuiButtonFlagsPrivate_ = c_uint;
pub const ImGuiComboFlags_CustomPreview: c_int = 1048576;
pub const ImGuiComboFlagsPrivate_ = c_uint;
pub const ImGuiSliderFlags_Vertical: c_int = 1048576;
pub const ImGuiSliderFlags_ReadOnly: c_int = 2097152;
pub const ImGuiSliderFlagsPrivate_ = c_uint;
pub const ImGuiSelectableFlags_NoHoldingActiveID: c_int = 1048576;
pub const ImGuiSelectableFlags_SelectOnNav: c_int = 2097152;
pub const ImGuiSelectableFlags_SelectOnClick: c_int = 4194304;
pub const ImGuiSelectableFlags_SelectOnRelease: c_int = 8388608;
pub const ImGuiSelectableFlags_SpanAvailWidth: c_int = 16777216;
pub const ImGuiSelectableFlags_SetNavIdOnHover: c_int = 33554432;
pub const ImGuiSelectableFlags_NoPadWithHalfSpacing: c_int = 67108864;
pub const ImGuiSelectableFlags_NoSetKeyOwner: c_int = 134217728;
pub const ImGuiSelectableFlagsPrivate_ = c_uint;
pub const ImGuiTreeNodeFlags_ClipLabelForTrailingButton: c_int = 268435456;
pub const ImGuiTreeNodeFlags_UpsideDownArrow: c_int = 536870912;
pub const ImGuiTreeNodeFlags_OpenOnMask_: c_int = 192;
pub const ImGuiTreeNodeFlagsPrivate_ = c_uint;
pub const ImGuiSeparatorFlags_None: c_int = 0;
pub const ImGuiSeparatorFlags_Horizontal: c_int = 1;
pub const ImGuiSeparatorFlags_Vertical: c_int = 2;
pub const ImGuiSeparatorFlags_SpanAllColumns: c_int = 4;
pub const ImGuiSeparatorFlags_ = c_uint;
pub const ImGuiFocusRequestFlags_None: c_int = 0;
pub const ImGuiFocusRequestFlags_RestoreFocusedChild: c_int = 1;
pub const ImGuiFocusRequestFlags_UnlessBelowModal: c_int = 2;
pub const ImGuiFocusRequestFlags_ = c_uint;
pub const ImGuiTextFlags_None: c_int = 0;
pub const ImGuiTextFlags_NoWidthForLargeClippedText: c_int = 1;
pub const ImGuiTextFlags_ = c_uint;
pub const ImGuiTooltipFlags_None: c_int = 0;
pub const ImGuiTooltipFlags_OverridePrevious: c_int = 2;
pub const ImGuiTooltipFlags_ = c_uint;
pub const ImGuiLayoutType_Horizontal: c_int = 0;
pub const ImGuiLayoutType_Vertical: c_int = 1;
pub const ImGuiLayoutType_ = c_uint;
pub const ImGuiLogFlags_None: c_int = 0;
pub const ImGuiLogFlags_OutputTTY: c_int = 1;
pub const ImGuiLogFlags_OutputFile: c_int = 2;
pub const ImGuiLogFlags_OutputBuffer: c_int = 4;
pub const ImGuiLogFlags_OutputClipboard: c_int = 8;
pub const ImGuiLogFlags_OutputMask_: c_int = 15;
pub const ImGuiLogFlags_ = c_uint;
pub const ImGuiAxis_None: c_int = -1;
pub const ImGuiAxis_X: c_int = 0;
pub const ImGuiAxis_Y: c_int = 1;
pub const ImGuiAxis = c_int;
pub const ImGuiPlotType_Lines: c_int = 0;
pub const ImGuiPlotType_Histogram: c_int = 1;
pub const ImGuiPlotType = c_uint;
pub const struct_ImGuiComboPreviewData = extern struct {
    PreviewRect: ImRect = @import("std").mem.zeroes(ImRect),
    BackupCursorPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorPosPrevLine: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupPrevLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    BackupLayout: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
};
pub const ImGuiComboPreviewData = struct_ImGuiComboPreviewData;
pub const struct_ImGuiInputTextDeactivatedState = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TextA: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImGuiInputTextDeactivatedState = struct_ImGuiInputTextDeactivatedState;
pub const ImGuiWindowRefreshFlags_None: c_int = 0;
pub const ImGuiWindowRefreshFlags_TryToAvoidRefresh: c_int = 1;
pub const ImGuiWindowRefreshFlags_RefreshOnHover: c_int = 2;
pub const ImGuiWindowRefreshFlags_RefreshOnFocus: c_int = 4;
pub const ImGuiWindowRefreshFlags_ = c_uint;
pub const ImGuiNextWindowDataFlags_None: c_int = 0;
pub const ImGuiNextWindowDataFlags_HasPos: c_int = 1;
pub const ImGuiNextWindowDataFlags_HasSize: c_int = 2;
pub const ImGuiNextWindowDataFlags_HasContentSize: c_int = 4;
pub const ImGuiNextWindowDataFlags_HasCollapsed: c_int = 8;
pub const ImGuiNextWindowDataFlags_HasSizeConstraint: c_int = 16;
pub const ImGuiNextWindowDataFlags_HasFocus: c_int = 32;
pub const ImGuiNextWindowDataFlags_HasBgAlpha: c_int = 64;
pub const ImGuiNextWindowDataFlags_HasScroll: c_int = 128;
pub const ImGuiNextWindowDataFlags_HasWindowFlags: c_int = 256;
pub const ImGuiNextWindowDataFlags_HasChildFlags: c_int = 512;
pub const ImGuiNextWindowDataFlags_HasRefreshPolicy: c_int = 1024;
pub const ImGuiNextWindowDataFlags_HasViewport: c_int = 2048;
pub const ImGuiNextWindowDataFlags_HasDock: c_int = 4096;
pub const ImGuiNextWindowDataFlags_HasWindowClass: c_int = 8192;
pub const ImGuiNextWindowDataFlags_ = c_uint;
pub const ImGuiNextItemDataFlags_None: c_int = 0;
pub const ImGuiNextItemDataFlags_HasWidth: c_int = 1;
pub const ImGuiNextItemDataFlags_HasOpen: c_int = 2;
pub const ImGuiNextItemDataFlags_HasShortcut: c_int = 4;
pub const ImGuiNextItemDataFlags_HasRefVal: c_int = 8;
pub const ImGuiNextItemDataFlags_HasStorageID: c_int = 16;
pub const ImGuiNextItemDataFlags_ = c_uint;
pub const struct_ImGuiShrinkWidthItem = extern struct {
    Index: c_int = @import("std").mem.zeroes(c_int),
    Width: f32 = @import("std").mem.zeroes(f32),
    InitialWidth: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiShrinkWidthItem = struct_ImGuiShrinkWidthItem;
pub const struct_ImGuiPtrOrIndex = extern struct {
    Ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Index: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiPtrOrIndex = struct_ImGuiPtrOrIndex;
pub const ImGuiPopupPositionPolicy_Default: c_int = 0;
pub const ImGuiPopupPositionPolicy_ComboBox: c_int = 1;
pub const ImGuiPopupPositionPolicy_Tooltip: c_int = 2;
pub const ImGuiPopupPositionPolicy = c_uint;
pub const struct_ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN = extern struct {
    Storage: [5]ImU32 = @import("std").mem.zeroes([5]ImU32),
};
pub const ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN = struct_ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
pub const ImBitArrayForNamedKeys = ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
pub const ImGuiInputEventType_None: c_int = 0;
pub const ImGuiInputEventType_MousePos: c_int = 1;
pub const ImGuiInputEventType_MouseWheel: c_int = 2;
pub const ImGuiInputEventType_MouseButton: c_int = 3;
pub const ImGuiInputEventType_MouseViewport: c_int = 4;
pub const ImGuiInputEventType_Key: c_int = 5;
pub const ImGuiInputEventType_Text: c_int = 6;
pub const ImGuiInputEventType_Focus: c_int = 7;
pub const ImGuiInputEventType_COUNT: c_int = 8;
pub const ImGuiInputEventType = c_uint;
pub const ImGuiInputSource_None: c_int = 0;
pub const ImGuiInputSource_Mouse: c_int = 1;
pub const ImGuiInputSource_Keyboard: c_int = 2;
pub const ImGuiInputSource_Gamepad: c_int = 3;
pub const ImGuiInputSource_COUNT: c_int = 4;
pub const ImGuiInputSource = c_uint;
pub const ImGuiKeyRoutingIndex = ImS16;
pub const struct_ImGuiKeyRoutingData = extern struct {
    NextEntryIndex: ImGuiKeyRoutingIndex = @import("std").mem.zeroes(ImGuiKeyRoutingIndex),
    Mods: ImU16 = @import("std").mem.zeroes(ImU16),
    RoutingCurrScore: ImU8 = @import("std").mem.zeroes(ImU8),
    RoutingNextScore: ImU8 = @import("std").mem.zeroes(ImU8),
    RoutingCurr: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    RoutingNext: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiKeyRoutingData = struct_ImGuiKeyRoutingData;
pub const struct_ImVector_ImGuiKeyRoutingData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiKeyRoutingData = @import("std").mem.zeroes([*c]ImGuiKeyRoutingData),
};
pub const ImVector_ImGuiKeyRoutingData = struct_ImVector_ImGuiKeyRoutingData;
pub const struct_ImGuiKeyRoutingTable = extern struct {
    Index: [155]ImGuiKeyRoutingIndex = @import("std").mem.zeroes([155]ImGuiKeyRoutingIndex),
    Entries: ImVector_ImGuiKeyRoutingData = @import("std").mem.zeroes(ImVector_ImGuiKeyRoutingData),
    EntriesNext: ImVector_ImGuiKeyRoutingData = @import("std").mem.zeroes(ImVector_ImGuiKeyRoutingData),
};
pub const ImGuiKeyRoutingTable = struct_ImGuiKeyRoutingTable;
pub const struct_ImGuiKeyOwnerData = extern struct {
    OwnerCurr: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    OwnerNext: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LockThisFrame: bool = @import("std").mem.zeroes(bool),
    LockUntilRelease: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiKeyOwnerData = struct_ImGuiKeyOwnerData;
pub const ImGuiInputFlags_RepeatRateDefault: c_int = 2;
pub const ImGuiInputFlags_RepeatRateNavMove: c_int = 4;
pub const ImGuiInputFlags_RepeatRateNavTweak: c_int = 8;
pub const ImGuiInputFlags_RepeatUntilRelease: c_int = 16;
pub const ImGuiInputFlags_RepeatUntilKeyModsChange: c_int = 32;
pub const ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone: c_int = 64;
pub const ImGuiInputFlags_RepeatUntilOtherKeyPress: c_int = 128;
pub const ImGuiInputFlags_LockThisFrame: c_int = 1048576;
pub const ImGuiInputFlags_LockUntilRelease: c_int = 2097152;
pub const ImGuiInputFlags_CondHovered: c_int = 4194304;
pub const ImGuiInputFlags_CondActive: c_int = 8388608;
pub const ImGuiInputFlags_CondDefault_: c_int = 12582912;
pub const ImGuiInputFlags_RepeatRateMask_: c_int = 14;
pub const ImGuiInputFlags_RepeatUntilMask_: c_int = 240;
pub const ImGuiInputFlags_RepeatMask_: c_int = 255;
pub const ImGuiInputFlags_CondMask_: c_int = 12582912;
pub const ImGuiInputFlags_RouteTypeMask_: c_int = 15360;
pub const ImGuiInputFlags_RouteOptionsMask_: c_int = 245760;
pub const ImGuiInputFlags_SupportedByIsKeyPressed: c_int = 255;
pub const ImGuiInputFlags_SupportedByIsMouseClicked: c_int = 1;
pub const ImGuiInputFlags_SupportedByShortcut: c_int = 261375;
pub const ImGuiInputFlags_SupportedBySetNextItemShortcut: c_int = 523519;
pub const ImGuiInputFlags_SupportedBySetKeyOwner: c_int = 3145728;
pub const ImGuiInputFlags_SupportedBySetItemKeyOwner: c_int = 15728640;
pub const ImGuiInputFlagsPrivate_ = c_uint;
pub const struct_ImGuiListClipperRange = extern struct {
    Min: c_int = @import("std").mem.zeroes(c_int),
    Max: c_int = @import("std").mem.zeroes(c_int),
    PosToIndexConvert: bool = @import("std").mem.zeroes(bool),
    PosToIndexOffsetMin: ImS8 = @import("std").mem.zeroes(ImS8),
    PosToIndexOffsetMax: ImS8 = @import("std").mem.zeroes(ImS8),
};
pub const ImGuiListClipperRange = struct_ImGuiListClipperRange;
pub const struct_ImVector_ImGuiListClipperRange = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiListClipperRange = @import("std").mem.zeroes([*c]ImGuiListClipperRange),
};
pub const ImVector_ImGuiListClipperRange = struct_ImVector_ImGuiListClipperRange;
pub const struct_ImGuiListClipperData = extern struct {
    ListClipper: [*c]ImGuiListClipper = @import("std").mem.zeroes([*c]ImGuiListClipper),
    LossynessOffset: f32 = @import("std").mem.zeroes(f32),
    StepNo: c_int = @import("std").mem.zeroes(c_int),
    ItemsFrozen: c_int = @import("std").mem.zeroes(c_int),
    Ranges: ImVector_ImGuiListClipperRange = @import("std").mem.zeroes(ImVector_ImGuiListClipperRange),
};
pub const ImGuiListClipperData = struct_ImGuiListClipperData;
pub const ImGuiActivateFlags_None: c_int = 0;
pub const ImGuiActivateFlags_PreferInput: c_int = 1;
pub const ImGuiActivateFlags_PreferTweak: c_int = 2;
pub const ImGuiActivateFlags_TryToPreserveState: c_int = 4;
pub const ImGuiActivateFlags_FromTabbing: c_int = 8;
pub const ImGuiActivateFlags_FromShortcut: c_int = 16;
pub const ImGuiActivateFlags_ = c_uint;
pub const ImGuiScrollFlags_None: c_int = 0;
pub const ImGuiScrollFlags_KeepVisibleEdgeX: c_int = 1;
pub const ImGuiScrollFlags_KeepVisibleEdgeY: c_int = 2;
pub const ImGuiScrollFlags_KeepVisibleCenterX: c_int = 4;
pub const ImGuiScrollFlags_KeepVisibleCenterY: c_int = 8;
pub const ImGuiScrollFlags_AlwaysCenterX: c_int = 16;
pub const ImGuiScrollFlags_AlwaysCenterY: c_int = 32;
pub const ImGuiScrollFlags_NoScrollParent: c_int = 64;
pub const ImGuiScrollFlags_MaskX_: c_int = 21;
pub const ImGuiScrollFlags_MaskY_: c_int = 42;
pub const ImGuiScrollFlags_ = c_uint;
pub const ImGuiNavRenderCursorFlags_None: c_int = 0;
pub const ImGuiNavRenderCursorFlags_Compact: c_int = 2;
pub const ImGuiNavRenderCursorFlags_AlwaysDraw: c_int = 4;
pub const ImGuiNavRenderCursorFlags_NoRounding: c_int = 8;
pub const ImGuiNavRenderCursorFlags_ = c_uint;
pub const ImGuiNavMoveFlags_None: c_int = 0;
pub const ImGuiNavMoveFlags_LoopX: c_int = 1;
pub const ImGuiNavMoveFlags_LoopY: c_int = 2;
pub const ImGuiNavMoveFlags_WrapX: c_int = 4;
pub const ImGuiNavMoveFlags_WrapY: c_int = 8;
pub const ImGuiNavMoveFlags_WrapMask_: c_int = 15;
pub const ImGuiNavMoveFlags_AllowCurrentNavId: c_int = 16;
pub const ImGuiNavMoveFlags_AlsoScoreVisibleSet: c_int = 32;
pub const ImGuiNavMoveFlags_ScrollToEdgeY: c_int = 64;
pub const ImGuiNavMoveFlags_Forwarded: c_int = 128;
pub const ImGuiNavMoveFlags_DebugNoResult: c_int = 256;
pub const ImGuiNavMoveFlags_FocusApi: c_int = 512;
pub const ImGuiNavMoveFlags_IsTabbing: c_int = 1024;
pub const ImGuiNavMoveFlags_IsPageMove: c_int = 2048;
pub const ImGuiNavMoveFlags_Activate: c_int = 4096;
pub const ImGuiNavMoveFlags_NoSelect: c_int = 8192;
pub const ImGuiNavMoveFlags_NoSetNavCursorVisible: c_int = 16384;
pub const ImGuiNavMoveFlags_NoClearActiveId: c_int = 32768;
pub const ImGuiNavMoveFlags_ = c_uint;
pub const ImGuiNavLayer_Main: c_int = 0;
pub const ImGuiNavLayer_Menu: c_int = 1;
pub const ImGuiNavLayer_COUNT: c_int = 2;
pub const ImGuiNavLayer = c_uint;
pub const struct_ImGuiFocusScopeData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    WindowID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiFocusScopeData = struct_ImGuiFocusScopeData;
pub const ImGuiTypingSelectFlags_None: c_int = 0;
pub const ImGuiTypingSelectFlags_AllowBackspace: c_int = 1;
pub const ImGuiTypingSelectFlags_AllowSingleCharMode: c_int = 2;
pub const ImGuiTypingSelectFlags_ = c_uint;
pub const ImGuiOldColumnFlags_None: c_int = 0;
pub const ImGuiOldColumnFlags_NoBorder: c_int = 1;
pub const ImGuiOldColumnFlags_NoResize: c_int = 2;
pub const ImGuiOldColumnFlags_NoPreserveWidths: c_int = 4;
pub const ImGuiOldColumnFlags_NoForceWithinWindow: c_int = 8;
pub const ImGuiOldColumnFlags_GrowParentContentsSize: c_int = 16;
pub const ImGuiOldColumnFlags_ = c_uint;
pub const ImGuiDockNodeFlags_DockSpace: c_int = 1024;
pub const ImGuiDockNodeFlags_CentralNode: c_int = 2048;
pub const ImGuiDockNodeFlags_NoTabBar: c_int = 4096;
pub const ImGuiDockNodeFlags_HiddenTabBar: c_int = 8192;
pub const ImGuiDockNodeFlags_NoWindowMenuButton: c_int = 16384;
pub const ImGuiDockNodeFlags_NoCloseButton: c_int = 32768;
pub const ImGuiDockNodeFlags_NoResizeX: c_int = 65536;
pub const ImGuiDockNodeFlags_NoResizeY: c_int = 131072;
pub const ImGuiDockNodeFlags_DockedWindowsInFocusRoute: c_int = 262144;
pub const ImGuiDockNodeFlags_NoDockingSplitOther: c_int = 524288;
pub const ImGuiDockNodeFlags_NoDockingOverMe: c_int = 1048576;
pub const ImGuiDockNodeFlags_NoDockingOverOther: c_int = 2097152;
pub const ImGuiDockNodeFlags_NoDockingOverEmpty: c_int = 4194304;
pub const ImGuiDockNodeFlags_NoDocking: c_int = 7864336;
pub const ImGuiDockNodeFlags_SharedFlagsInheritMask_: c_int = -1;
pub const ImGuiDockNodeFlags_NoResizeFlagsMask_: c_int = 196640;
pub const ImGuiDockNodeFlags_LocalFlagsTransferMask_: c_int = 260208;
pub const ImGuiDockNodeFlags_SavedFlagsMask_: c_int = 261152;
pub const ImGuiDockNodeFlagsPrivate_ = c_int;
pub const ImGuiDataAuthority_Auto: c_int = 0;
pub const ImGuiDataAuthority_DockNode: c_int = 1;
pub const ImGuiDataAuthority_Window: c_int = 2;
pub const ImGuiDataAuthority_ = c_uint;
pub const ImGuiDockNodeState_Unknown: c_int = 0;
pub const ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow: c_int = 1;
pub const ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing: c_int = 2;
pub const ImGuiDockNodeState_HostWindowVisible: c_int = 3;
pub const ImGuiDockNodeState = c_uint;
pub const ImGuiWindowDockStyleCol_Text: c_int = 0;
pub const ImGuiWindowDockStyleCol_TabHovered: c_int = 1;
pub const ImGuiWindowDockStyleCol_TabFocused: c_int = 2;
pub const ImGuiWindowDockStyleCol_TabSelected: c_int = 3;
pub const ImGuiWindowDockStyleCol_TabSelectedOverline: c_int = 4;
pub const ImGuiWindowDockStyleCol_TabDimmed: c_int = 5;
pub const ImGuiWindowDockStyleCol_TabDimmedSelected: c_int = 6;
pub const ImGuiWindowDockStyleCol_TabDimmedSelectedOverline: c_int = 7;
pub const ImGuiWindowDockStyleCol_COUNT: c_int = 8;
pub const ImGuiWindowDockStyleCol = c_uint;
pub const ImGuiLocKey_VersionStr: c_int = 0;
pub const ImGuiLocKey_TableSizeOne: c_int = 1;
pub const ImGuiLocKey_TableSizeAllFit: c_int = 2;
pub const ImGuiLocKey_TableSizeAllDefault: c_int = 3;
pub const ImGuiLocKey_TableResetOrder: c_int = 4;
pub const ImGuiLocKey_WindowingMainMenuBar: c_int = 5;
pub const ImGuiLocKey_WindowingPopup: c_int = 6;
pub const ImGuiLocKey_WindowingUntitled: c_int = 7;
pub const ImGuiLocKey_OpenLink_s: c_int = 8;
pub const ImGuiLocKey_CopyLink: c_int = 9;
pub const ImGuiLocKey_DockingHideTabBar: c_int = 10;
pub const ImGuiLocKey_DockingHoldShiftToDock: c_int = 11;
pub const ImGuiLocKey_DockingDragToUndockOrMoveNode: c_int = 12;
pub const ImGuiLocKey_COUNT: c_int = 13;
pub const ImGuiLocKey = c_uint;
pub const ImGuiErrorCallback = ?*const fn (?*ImGuiContext, ?*anyopaque, [*c]const u8) callconv(.c) void;
pub const ImGuiDebugLogFlags_None: c_int = 0;
pub const ImGuiDebugLogFlags_EventError: c_int = 1;
pub const ImGuiDebugLogFlags_EventActiveId: c_int = 2;
pub const ImGuiDebugLogFlags_EventFocus: c_int = 4;
pub const ImGuiDebugLogFlags_EventPopup: c_int = 8;
pub const ImGuiDebugLogFlags_EventNav: c_int = 16;
pub const ImGuiDebugLogFlags_EventClipper: c_int = 32;
pub const ImGuiDebugLogFlags_EventSelection: c_int = 64;
pub const ImGuiDebugLogFlags_EventIO: c_int = 128;
pub const ImGuiDebugLogFlags_EventFont: c_int = 256;
pub const ImGuiDebugLogFlags_EventInputRouting: c_int = 512;
pub const ImGuiDebugLogFlags_EventDocking: c_int = 1024;
pub const ImGuiDebugLogFlags_EventViewport: c_int = 2048;
pub const ImGuiDebugLogFlags_EventMask_: c_int = 4095;
pub const ImGuiDebugLogFlags_OutputToTTY: c_int = 1048576;
pub const ImGuiDebugLogFlags_OutputToTestEngine: c_int = 2097152;
pub const ImGuiDebugLogFlags_ = c_uint;
pub const struct_ImGuiDebugAllocEntry = extern struct {
    FrameCount: c_int = @import("std").mem.zeroes(c_int),
    AllocCount: ImS16 = @import("std").mem.zeroes(ImS16),
    FreeCount: ImS16 = @import("std").mem.zeroes(ImS16),
};
pub const ImGuiDebugAllocEntry = struct_ImGuiDebugAllocEntry;
pub const struct_ImGuiDebugAllocInfo = extern struct {
    TotalAllocCount: c_int = @import("std").mem.zeroes(c_int),
    TotalFreeCount: c_int = @import("std").mem.zeroes(c_int),
    LastEntriesIdx: ImS16 = @import("std").mem.zeroes(ImS16),
    LastEntriesBuf: [6]ImGuiDebugAllocEntry = @import("std").mem.zeroes([6]ImGuiDebugAllocEntry),
};
pub const ImGuiDebugAllocInfo = struct_ImGuiDebugAllocInfo;
pub const struct_ImGuiStackLevelInfo = opaque {};
pub const ImGuiStackLevelInfo = struct_ImGuiStackLevelInfo;
pub const struct_ImVector_ImGuiStackLevelInfo = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiStackLevelInfo = @import("std").mem.zeroes(?*ImGuiStackLevelInfo),
};
pub const ImVector_ImGuiStackLevelInfo = struct_ImVector_ImGuiStackLevelInfo;
pub const struct_ImGuiIDStackTool = extern struct {
    LastActiveFrame: c_int = @import("std").mem.zeroes(c_int),
    StackLevel: c_int = @import("std").mem.zeroes(c_int),
    QueryId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Results: ImVector_ImGuiStackLevelInfo = @import("std").mem.zeroes(ImVector_ImGuiStackLevelInfo),
    CopyToClipboardOnCtrlC: bool = @import("std").mem.zeroes(bool),
    CopyToClipboardLastTime: f32 = @import("std").mem.zeroes(f32),
    ResultPathBuf: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
};
pub const ImGuiIDStackTool = struct_ImGuiIDStackTool;
pub const ImGuiContextHookType_NewFramePre: c_int = 0;
pub const ImGuiContextHookType_NewFramePost: c_int = 1;
pub const ImGuiContextHookType_EndFramePre: c_int = 2;
pub const ImGuiContextHookType_EndFramePost: c_int = 3;
pub const ImGuiContextHookType_RenderPre: c_int = 4;
pub const ImGuiContextHookType_RenderPost: c_int = 5;
pub const ImGuiContextHookType_Shutdown: c_int = 6;
pub const ImGuiContextHookType_PendingRemoval_: c_int = 7;
pub const ImGuiContextHookType = c_uint;
pub const struct_ImVector_ImGuiColorMod = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiColorMod = @import("std").mem.zeroes([*c]ImGuiColorMod),
};
pub const ImVector_ImGuiColorMod = struct_ImVector_ImGuiColorMod;
pub const struct_ImVector_ImGuiStyleMod = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiStyleMod = @import("std").mem.zeroes([*c]ImGuiStyleMod),
};
pub const ImVector_ImGuiStyleMod = struct_ImVector_ImGuiStyleMod;
pub const struct_ImVector_ImGuiFocusScopeData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiFocusScopeData = @import("std").mem.zeroes([*c]ImGuiFocusScopeData),
};
pub const ImVector_ImGuiFocusScopeData = struct_ImVector_ImGuiFocusScopeData;
pub const struct_ImVector_ImGuiItemFlags = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiItemFlags = @import("std").mem.zeroes([*c]ImGuiItemFlags),
};
pub const ImVector_ImGuiItemFlags = struct_ImVector_ImGuiItemFlags;
pub const struct_ImVector_ImGuiGroupData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiGroupData = @import("std").mem.zeroes([*c]ImGuiGroupData),
};
pub const ImVector_ImGuiGroupData = struct_ImVector_ImGuiGroupData;
pub const struct_ImVector_ImGuiPopupData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPopupData = @import("std").mem.zeroes([*c]ImGuiPopupData),
};
pub const ImVector_ImGuiPopupData = struct_ImVector_ImGuiPopupData;
pub const struct_ImVector_ImGuiTreeNodeStackData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTreeNodeStackData = @import("std").mem.zeroes([*c]ImGuiTreeNodeStackData),
};
pub const ImVector_ImGuiTreeNodeStackData = struct_ImVector_ImGuiTreeNodeStackData;
pub const struct_ImVector_ImGuiViewportPPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImGuiViewportP = @import("std").mem.zeroes([*c][*c]ImGuiViewportP),
};
pub const ImVector_ImGuiViewportPPtr = struct_ImVector_ImGuiViewportPPtr;
pub const struct_ImVector_unsigned_char = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const ImVector_unsigned_char = struct_ImVector_unsigned_char;
pub const struct_ImVector_ImGuiListClipperData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiListClipperData = @import("std").mem.zeroes([*c]ImGuiListClipperData),
};
pub const ImVector_ImGuiListClipperData = struct_ImVector_ImGuiListClipperData;
pub const struct_ImVector_ImGuiTableTempData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableTempData = @import("std").mem.zeroes([*c]ImGuiTableTempData),
};
pub const ImVector_ImGuiTableTempData = struct_ImVector_ImGuiTableTempData;
pub const struct_ImVector_ImGuiTable = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiTable = @import("std").mem.zeroes(?*ImGuiTable),
};
pub const ImVector_ImGuiTable = struct_ImVector_ImGuiTable;
pub const struct_ImPool_ImGuiTable = extern struct {
    Buf: ImVector_ImGuiTable = @import("std").mem.zeroes(ImVector_ImGuiTable),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiTable = struct_ImPool_ImGuiTable;
pub const struct_ImVector_ImGuiTabBar = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTabBar = @import("std").mem.zeroes([*c]ImGuiTabBar),
};
pub const ImVector_ImGuiTabBar = struct_ImVector_ImGuiTabBar;
pub const struct_ImPool_ImGuiTabBar = extern struct {
    Buf: ImVector_ImGuiTabBar = @import("std").mem.zeroes(ImVector_ImGuiTabBar),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiTabBar = struct_ImPool_ImGuiTabBar;
pub const struct_ImVector_ImGuiPtrOrIndex = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPtrOrIndex = @import("std").mem.zeroes([*c]ImGuiPtrOrIndex),
};
pub const ImVector_ImGuiPtrOrIndex = struct_ImVector_ImGuiPtrOrIndex;
pub const struct_ImVector_ImGuiShrinkWidthItem = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiShrinkWidthItem = @import("std").mem.zeroes([*c]ImGuiShrinkWidthItem),
};
pub const ImVector_ImGuiShrinkWidthItem = struct_ImVector_ImGuiShrinkWidthItem;
pub const struct_ImVector_ImGuiMultiSelectTempData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiMultiSelectTempData = @import("std").mem.zeroes([*c]ImGuiMultiSelectTempData),
};
pub const ImVector_ImGuiMultiSelectTempData = struct_ImVector_ImGuiMultiSelectTempData;
pub const struct_ImVector_ImGuiMultiSelectState = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiMultiSelectState = @import("std").mem.zeroes([*c]ImGuiMultiSelectState),
};
pub const ImVector_ImGuiMultiSelectState = struct_ImVector_ImGuiMultiSelectState;
pub const struct_ImPool_ImGuiMultiSelectState = extern struct {
    Buf: ImVector_ImGuiMultiSelectState = @import("std").mem.zeroes(ImVector_ImGuiMultiSelectState),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiMultiSelectState = struct_ImPool_ImGuiMultiSelectState;
pub const struct_ImVector_ImGuiID = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiID = @import("std").mem.zeroes([*c]ImGuiID),
};
pub const ImVector_ImGuiID = struct_ImVector_ImGuiID;
pub const struct_ImVector_ImGuiSettingsHandler = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiSettingsHandler = @import("std").mem.zeroes([*c]ImGuiSettingsHandler),
};
pub const ImVector_ImGuiSettingsHandler = struct_ImVector_ImGuiSettingsHandler;
pub const struct_ImChunkStream_ImGuiWindowSettings = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImChunkStream_ImGuiWindowSettings = struct_ImChunkStream_ImGuiWindowSettings;
pub const struct_ImChunkStream_ImGuiTableSettings = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImChunkStream_ImGuiTableSettings = struct_ImChunkStream_ImGuiTableSettings;
pub const struct_ImVector_ImGuiContextHook = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiContextHook = @import("std").mem.zeroes([*c]ImGuiContextHook),
};
pub const ImVector_ImGuiContextHook = struct_ImVector_ImGuiContextHook;
pub const struct_ImVector_ImGuiOldColumns = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiOldColumns = @import("std").mem.zeroes([*c]ImGuiOldColumns),
};
pub const ImVector_ImGuiOldColumns = struct_ImVector_ImGuiOldColumns;
pub const ImGuiTabBarFlags_DockNode: c_int = 1048576;
pub const ImGuiTabBarFlags_IsFocused: c_int = 2097152;
pub const ImGuiTabBarFlags_SaveSettings: c_int = 4194304;
pub const ImGuiTabBarFlagsPrivate_ = c_uint;
pub const ImGuiTabItemFlags_SectionMask_: c_int = 192;
pub const ImGuiTabItemFlags_NoCloseButton: c_int = 1048576;
pub const ImGuiTabItemFlags_Button: c_int = 2097152;
pub const ImGuiTabItemFlags_Invisible: c_int = 4194304;
pub const ImGuiTabItemFlags_Unsorted: c_int = 8388608;
pub const ImGuiTabItemFlagsPrivate_ = c_uint;
pub const struct_ImVector_ImGuiTableInstanceData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableInstanceData = @import("std").mem.zeroes([*c]ImGuiTableInstanceData),
};
pub const ImVector_ImGuiTableInstanceData = struct_ImVector_ImGuiTableInstanceData;
pub const struct_ImVector_ImGuiTableColumnSortSpecs = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableColumnSortSpecs = @import("std").mem.zeroes([*c]ImGuiTableColumnSortSpecs),
};
pub const ImVector_ImGuiTableColumnSortSpecs = struct_ImVector_ImGuiTableColumnSortSpecs;
pub const struct_ImGuiTableColumnSettings = opaque {};
pub const ImGuiTableColumnSettings = struct_ImGuiTableColumnSettings;
pub extern fn ImVec2_ImVec2_Nil() [*c]ImVec2;
pub extern fn ImVec2_destroy(self: [*c]ImVec2) void;
pub extern fn ImVec2_ImVec2_Float(_x: f32, _y: f32) [*c]ImVec2;
pub extern fn ImVec4_ImVec4_Nil() [*c]ImVec4;
pub extern fn ImVec4_destroy(self: [*c]ImVec4) void;
pub extern fn ImVec4_ImVec4_Float(_x: f32, _y: f32, _z: f32, _w: f32) [*c]ImVec4;
pub extern fn igCreateContext(shared_font_atlas: [*c]ImFontAtlas) ?*ImGuiContext;
pub extern fn igDestroyContext(ctx: ?*ImGuiContext) void;
pub extern fn igGetCurrentContext() ?*ImGuiContext;
pub extern fn igSetCurrentContext(ctx: ?*ImGuiContext) void;
pub extern fn igGetIO_Nil() [*c]ImGuiIO;
pub extern fn igGetPlatformIO_Nil() [*c]ImGuiPlatformIO;
pub extern fn igGetStyle() [*c]ImGuiStyle;
pub extern fn igNewFrame() void;
pub extern fn igEndFrame() void;
pub extern fn igRender() void;
pub extern fn igGetDrawData() [*c]ImDrawData;
pub extern fn igShowDemoWindow(p_open: [*c]bool) void;
pub extern fn igShowMetricsWindow(p_open: [*c]bool) void;
pub extern fn igShowDebugLogWindow(p_open: [*c]bool) void;
pub extern fn igShowIDStackToolWindow(p_open: [*c]bool) void;
pub extern fn igShowAboutWindow(p_open: [*c]bool) void;
pub extern fn igShowStyleEditor(ref: [*c]ImGuiStyle) void;
pub extern fn igShowStyleSelector(label: [*c]const u8) bool;
pub extern fn igShowFontSelector(label: [*c]const u8) void;
pub extern fn igShowUserGuide() void;
pub extern fn igGetVersion() [*c]const u8;
pub extern fn igStyleColorsDark(dst: [*c]ImGuiStyle) void;
pub extern fn igStyleColorsLight(dst: [*c]ImGuiStyle) void;
pub extern fn igStyleColorsClassic(dst: [*c]ImGuiStyle) void;
pub extern fn igBegin(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEnd() void;
pub extern fn igBeginChild_Str(str_id: [*c]const u8, size: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginChild_ID(id: ImGuiID, size: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igEndChild() void;
pub extern fn igIsWindowAppearing() bool;
pub extern fn igIsWindowCollapsed() bool;
pub extern fn igIsWindowFocused(flags: ImGuiFocusedFlags) bool;
pub extern fn igIsWindowHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igGetWindowDrawList() [*c]ImDrawList;
pub extern fn igGetWindowDpiScale() f32;
pub extern fn igGetWindowPos(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowSize(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowWidth() f32;
pub extern fn igGetWindowHeight() f32;
pub extern fn igGetWindowViewport() [*c]ImGuiViewport;
pub extern fn igSetNextWindowPos(pos: ImVec2, cond: ImGuiCond, pivot: ImVec2) void;
pub extern fn igSetNextWindowSize(size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetNextWindowSizeConstraints(size_min: ImVec2, size_max: ImVec2, custom_callback: ImGuiSizeCallback, custom_callback_data: ?*anyopaque) void;
pub extern fn igSetNextWindowContentSize(size: ImVec2) void;
pub extern fn igSetNextWindowCollapsed(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetNextWindowFocus() void;
pub extern fn igSetNextWindowScroll(scroll: ImVec2) void;
pub extern fn igSetNextWindowBgAlpha(alpha: f32) void;
pub extern fn igSetNextWindowViewport(viewport_id: ImGuiID) void;
pub extern fn igSetWindowPos_Vec2(pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_Vec2(size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_Bool(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocus_Nil() void;
pub extern fn igSetWindowFontScale(scale: f32) void;
pub extern fn igSetWindowPos_Str(name: [*c]const u8, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_Str(name: [*c]const u8, size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_Str(name: [*c]const u8, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocus_Str(name: [*c]const u8) void;
pub extern fn igGetScrollX() f32;
pub extern fn igGetScrollY() f32;
pub extern fn igSetScrollX_Float(scroll_x: f32) void;
pub extern fn igSetScrollY_Float(scroll_y: f32) void;
pub extern fn igGetScrollMaxX() f32;
pub extern fn igGetScrollMaxY() f32;
pub extern fn igSetScrollHereX(center_x_ratio: f32) void;
pub extern fn igSetScrollHereY(center_y_ratio: f32) void;
pub extern fn igSetScrollFromPosX_Float(local_x: f32, center_x_ratio: f32) void;
pub extern fn igSetScrollFromPosY_Float(local_y: f32, center_y_ratio: f32) void;
pub extern fn igPushFont(font: [*c]ImFont) void;
pub extern fn igPopFont() void;
pub extern fn igPushStyleColor_U32(idx: ImGuiCol, col: ImU32) void;
pub extern fn igPushStyleColor_Vec4(idx: ImGuiCol, col: ImVec4) void;
pub extern fn igPopStyleColor(count: c_int) void;
pub extern fn igPushStyleVar_Float(idx: ImGuiStyleVar, val: f32) void;
pub extern fn igPushStyleVar_Vec2(idx: ImGuiStyleVar, val: ImVec2) void;
pub extern fn igPushStyleVarX(idx: ImGuiStyleVar, val_x: f32) void;
pub extern fn igPushStyleVarY(idx: ImGuiStyleVar, val_y: f32) void;
pub extern fn igPopStyleVar(count: c_int) void;
pub extern fn igPushItemFlag(option: ImGuiItemFlags, enabled: bool) void;
pub extern fn igPopItemFlag() void;
pub extern fn igPushItemWidth(item_width: f32) void;
pub extern fn igPopItemWidth() void;
pub extern fn igSetNextItemWidth(item_width: f32) void;
pub extern fn igCalcItemWidth() f32;
pub extern fn igPushTextWrapPos(wrap_local_pos_x: f32) void;
pub extern fn igPopTextWrapPos() void;
pub extern fn igGetFont() [*c]ImFont;
pub extern fn igGetFontSize() f32;
pub extern fn igGetFontTexUvWhitePixel(pOut: [*c]ImVec2) void;
pub extern fn igGetColorU32_Col(idx: ImGuiCol, alpha_mul: f32) ImU32;
pub extern fn igGetColorU32_Vec4(col: ImVec4) ImU32;
pub extern fn igGetColorU32_U32(col: ImU32, alpha_mul: f32) ImU32;
pub extern fn igGetStyleColorVec4(idx: ImGuiCol) [*c]const ImVec4;
pub extern fn igGetCursorScreenPos(pOut: [*c]ImVec2) void;
pub extern fn igSetCursorScreenPos(pos: ImVec2) void;
pub extern fn igGetContentRegionAvail(pOut: [*c]ImVec2) void;
pub extern fn igGetCursorPos(pOut: [*c]ImVec2) void;
pub extern fn igGetCursorPosX() f32;
pub extern fn igGetCursorPosY() f32;
pub extern fn igSetCursorPos(local_pos: ImVec2) void;
pub extern fn igSetCursorPosX(local_x: f32) void;
pub extern fn igSetCursorPosY(local_y: f32) void;
pub extern fn igGetCursorStartPos(pOut: [*c]ImVec2) void;
pub extern fn igSeparator() void;
pub extern fn igSameLine(offset_from_start_x: f32, spacing: f32) void;
pub extern fn igNewLine() void;
pub extern fn igSpacing() void;
pub extern fn igDummy(size: ImVec2) void;
pub extern fn igIndent(indent_w: f32) void;
pub extern fn igUnindent(indent_w: f32) void;
pub extern fn igBeginGroup() void;
pub extern fn igEndGroup() void;
pub extern fn igAlignTextToFramePadding() void;
pub extern fn igGetTextLineHeight() f32;
pub extern fn igGetTextLineHeightWithSpacing() f32;
pub extern fn igGetFrameHeight() f32;
pub extern fn igGetFrameHeightWithSpacing() f32;
pub extern fn igPushID_Str(str_id: [*c]const u8) void;
pub extern fn igPushID_StrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) void;
pub extern fn igPushID_Ptr(ptr_id: ?*const anyopaque) void;
pub extern fn igPushID_Int(int_id: c_int) void;
pub extern fn igPopID() void;
pub extern fn igGetID_Str(str_id: [*c]const u8) ImGuiID;
pub extern fn igGetID_StrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) ImGuiID;
pub extern fn igGetID_Ptr(ptr_id: ?*const anyopaque) ImGuiID;
pub extern fn igGetID_Int(int_id: c_int) ImGuiID;
pub extern fn igTextUnformatted(text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn igText(fmt: [*c]const u8, ...) void;
pub extern fn igTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextColored(col: ImVec4, fmt: [*c]const u8, ...) void;
pub extern fn igTextColoredV(col: ImVec4, fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextDisabled(fmt: [*c]const u8, ...) void;
pub extern fn igTextDisabledV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextWrapped(fmt: [*c]const u8, ...) void;
pub extern fn igTextWrappedV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igLabelText(label: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn igLabelTextV(label: [*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn igBulletText(fmt: [*c]const u8, ...) void;
pub extern fn igBulletTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igSeparatorText(label: [*c]const u8) void;
pub extern fn igButton(label: [*c]const u8, size: ImVec2) bool;
pub extern fn igSmallButton(label: [*c]const u8) bool;
pub extern fn igInvisibleButton(str_id: [*c]const u8, size: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igArrowButton(str_id: [*c]const u8, dir: ImGuiDir) bool;
pub extern fn igCheckbox(label: [*c]const u8, v: [*c]bool) bool;
pub extern fn igCheckboxFlags_IntPtr(label: [*c]const u8, flags: [*c]c_int, flags_value: c_int) bool;
pub extern fn igCheckboxFlags_UintPtr(label: [*c]const u8, flags: [*c]c_uint, flags_value: c_uint) bool;
pub extern fn igRadioButton_Bool(label: [*c]const u8, active: bool) bool;
pub extern fn igRadioButton_IntPtr(label: [*c]const u8, v: [*c]c_int, v_button: c_int) bool;
pub extern fn igProgressBar(fraction: f32, size_arg: ImVec2, overlay: [*c]const u8) void;
pub extern fn igBullet() void;
pub extern fn igTextLink(label: [*c]const u8) bool;
pub extern fn igTextLinkOpenURL(label: [*c]const u8, url: [*c]const u8) void;
pub extern fn igImage(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2) void;
pub extern fn igImageWithBg(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) void;
pub extern fn igImageButton(str_id: [*c]const u8, user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) bool;
pub extern fn igBeginCombo(label: [*c]const u8, preview_value: [*c]const u8, flags: ImGuiComboFlags) bool;
pub extern fn igEndCombo() void;
pub extern fn igCombo_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igCombo_Str(label: [*c]const u8, current_item: [*c]c_int, items_separated_by_zeros: [*c]const u8, popup_max_height_in_items: c_int) bool;
pub extern fn igCombo_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igDragFloat(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat2(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat3(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat4(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloatRange2(label: [*c]const u8, v_current_min: [*c]f32, v_current_max: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt2(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt3(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt4(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragIntRange2(label: [*c]const u8, v_current_min: [*c]c_int, v_current_max: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat2(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat3(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat4(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderAngle(label: [*c]const u8, v_rad: [*c]f32, v_degrees_min: f32, v_degrees_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt2(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt3(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt4(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderFloat(label: [*c]const u8, size: ImVec2, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderInt(label: [*c]const u8, size: ImVec2, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderScalar(label: [*c]const u8, size: ImVec2, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igInputText(label: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextMultiline(label: [*c]const u8, buf: [*c]u8, buf_size: usize, size: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextWithHint(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputFloat(label: [*c]const u8, v: [*c]f32, step: f32, step_fast: f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat2(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat3(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat4(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt(label: [*c]const u8, v: [*c]c_int, step: c_int, step_fast: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt2(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt3(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt4(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputDouble(label: [*c]const u8, v: [*c]f64, step: f64, step_fast: f64, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igColorEdit3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorEdit4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags, ref_col: [*c]const f32) bool;
pub extern fn igColorButton(desc_id: [*c]const u8, col: ImVec4, flags: ImGuiColorEditFlags, size: ImVec2) bool;
pub extern fn igSetColorEditOptions(flags: ImGuiColorEditFlags) void;
pub extern fn igTreeNode_Str(label: [*c]const u8) bool;
pub extern fn igTreeNode_StrStr(str_id: [*c]const u8, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNode_Ptr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeV_Str(str_id: [*c]const u8, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeV_Ptr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeEx_Str(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igTreeNodeEx_StrStr(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeEx_Ptr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeExV_Str(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeExV_Ptr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreePush_Str(str_id: [*c]const u8) void;
pub extern fn igTreePush_Ptr(ptr_id: ?*const anyopaque) void;
pub extern fn igTreePop() void;
pub extern fn igGetTreeNodeToLabelSpacing() f32;
pub extern fn igCollapsingHeader_TreeNodeFlags(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igCollapsingHeader_BoolPtr(label: [*c]const u8, p_visible: [*c]bool, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igSetNextItemOpen(is_open: bool, cond: ImGuiCond) void;
pub extern fn igSetNextItemStorageID(storage_id: ImGuiID) void;
pub extern fn igSelectable_Bool(label: [*c]const u8, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn igSelectable_BoolPtr(label: [*c]const u8, p_selected: [*c]bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn igBeginMultiSelect(flags: ImGuiMultiSelectFlags, selection_size: c_int, items_count: c_int) [*c]ImGuiMultiSelectIO;
pub extern fn igEndMultiSelect() [*c]ImGuiMultiSelectIO;
pub extern fn igSetNextItemSelectionUserData(selection_user_data: ImGuiSelectionUserData) void;
pub extern fn igIsItemToggledSelection() bool;
pub extern fn igBeginListBox(label: [*c]const u8, size: ImVec2) bool;
pub extern fn igEndListBox() void;
pub extern fn igListBox_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBox_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igPlotLines_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn igPlotLines_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn igPlotHistogram_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn igPlotHistogram_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn igValue_Bool(prefix: [*c]const u8, b: bool) void;
pub extern fn igValue_Int(prefix: [*c]const u8, v: c_int) void;
pub extern fn igValue_Uint(prefix: [*c]const u8, v: c_uint) void;
pub extern fn igValue_Float(prefix: [*c]const u8, v: f32, float_format: [*c]const u8) void;
pub extern fn igBeginMenuBar() bool;
pub extern fn igEndMenuBar() void;
pub extern fn igBeginMainMenuBar() bool;
pub extern fn igEndMainMenuBar() void;
pub extern fn igBeginMenu(label: [*c]const u8, enabled: bool) bool;
pub extern fn igEndMenu() void;
pub extern fn igMenuItem_Bool(label: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn igMenuItem_BoolPtr(label: [*c]const u8, shortcut: [*c]const u8, p_selected: [*c]bool, enabled: bool) bool;
pub extern fn igBeginTooltip() bool;
pub extern fn igEndTooltip() void;
pub extern fn igSetTooltip(fmt: [*c]const u8, ...) void;
pub extern fn igSetTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginItemTooltip() bool;
pub extern fn igSetItemTooltip(fmt: [*c]const u8, ...) void;
pub extern fn igSetItemTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginPopup(str_id: [*c]const u8, flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupModal(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEndPopup() void;
pub extern fn igOpenPopup_Str(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn igOpenPopup_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn igOpenPopupOnItemClick(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn igCloseCurrentPopup() void;
pub extern fn igBeginPopupContextItem(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupContextWindow(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupContextVoid(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igIsPopupOpen_Str(str_id: [*c]const u8, flags: ImGuiPopupFlags) bool;
pub extern fn igBeginTable(str_id: [*c]const u8, columns: c_int, flags: ImGuiTableFlags, outer_size: ImVec2, inner_width: f32) bool;
pub extern fn igEndTable() void;
pub extern fn igTableNextRow(row_flags: ImGuiTableRowFlags, min_row_height: f32) void;
pub extern fn igTableNextColumn() bool;
pub extern fn igTableSetColumnIndex(column_n: c_int) bool;
pub extern fn igTableSetupColumn(label: [*c]const u8, flags: ImGuiTableColumnFlags, init_width_or_weight: f32, user_id: ImGuiID) void;
pub extern fn igTableSetupScrollFreeze(cols: c_int, rows: c_int) void;
pub extern fn igTableHeader(label: [*c]const u8) void;
pub extern fn igTableHeadersRow() void;
pub extern fn igTableAngledHeadersRow() void;
pub extern fn igTableGetSortSpecs() [*c]ImGuiTableSortSpecs;
pub extern fn igTableGetColumnCount() c_int;
pub extern fn igTableGetColumnIndex() c_int;
pub extern fn igTableGetRowIndex() c_int;
pub extern fn igTableGetColumnName_Int(column_n: c_int) [*c]const u8;
pub extern fn igTableGetColumnFlags(column_n: c_int) ImGuiTableColumnFlags;
pub extern fn igTableSetColumnEnabled(column_n: c_int, v: bool) void;
pub extern fn igTableGetHoveredColumn() c_int;
pub extern fn igTableSetBgColor(target: ImGuiTableBgTarget, color: ImU32, column_n: c_int) void;
pub extern fn igColumns(count: c_int, id: [*c]const u8, borders: bool) void;
pub extern fn igNextColumn() void;
pub extern fn igGetColumnIndex() c_int;
pub extern fn igGetColumnWidth(column_index: c_int) f32;
pub extern fn igSetColumnWidth(column_index: c_int, width: f32) void;
pub extern fn igGetColumnOffset(column_index: c_int) f32;
pub extern fn igSetColumnOffset(column_index: c_int, offset_x: f32) void;
pub extern fn igGetColumnsCount() c_int;
pub extern fn igBeginTabBar(str_id: [*c]const u8, flags: ImGuiTabBarFlags) bool;
pub extern fn igEndTabBar() void;
pub extern fn igBeginTabItem(label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags) bool;
pub extern fn igEndTabItem() void;
pub extern fn igTabItemButton(label: [*c]const u8, flags: ImGuiTabItemFlags) bool;
pub extern fn igSetTabItemClosed(tab_or_docked_window_label: [*c]const u8) void;
pub extern fn igDockSpace(dockspace_id: ImGuiID, size: ImVec2, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn igDockSpaceOverViewport(dockspace_id: ImGuiID, viewport: [*c]const ImGuiViewport, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn igSetNextWindowDockID(dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn igSetNextWindowClass(window_class: [*c]const ImGuiWindowClass) void;
pub extern fn igGetWindowDockID() ImGuiID;
pub extern fn igIsWindowDocked() bool;
pub extern fn igLogToTTY(auto_open_depth: c_int) void;
pub extern fn igLogToFile(auto_open_depth: c_int, filename: [*c]const u8) void;
pub extern fn igLogToClipboard(auto_open_depth: c_int) void;
pub extern fn igLogFinish() void;
pub extern fn igLogButtons() void;
pub extern fn igLogTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginDragDropSource(flags: ImGuiDragDropFlags) bool;
pub extern fn igSetDragDropPayload(@"type": [*c]const u8, data: ?*const anyopaque, sz: usize, cond: ImGuiCond) bool;
pub extern fn igEndDragDropSource() void;
pub extern fn igBeginDragDropTarget() bool;
pub extern fn igAcceptDragDropPayload(@"type": [*c]const u8, flags: ImGuiDragDropFlags) [*c]const ImGuiPayload;
pub extern fn igEndDragDropTarget() void;
pub extern fn igGetDragDropPayload() [*c]const ImGuiPayload;
pub extern fn igBeginDisabled(disabled: bool) void;
pub extern fn igEndDisabled() void;
pub extern fn igPushClipRect(clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn igPopClipRect() void;
pub extern fn igSetItemDefaultFocus() void;
pub extern fn igSetKeyboardFocusHere(offset: c_int) void;
pub extern fn igSetNavCursorVisible(visible: bool) void;
pub extern fn igSetNextItemAllowOverlap() void;
pub extern fn igIsItemHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igIsItemActive() bool;
pub extern fn igIsItemFocused() bool;
pub extern fn igIsItemClicked(mouse_button: ImGuiMouseButton) bool;
pub extern fn igIsItemVisible() bool;
pub extern fn igIsItemEdited() bool;
pub extern fn igIsItemActivated() bool;
pub extern fn igIsItemDeactivated() bool;
pub extern fn igIsItemDeactivatedAfterEdit() bool;
pub extern fn igIsItemToggledOpen() bool;
pub extern fn igIsAnyItemHovered() bool;
pub extern fn igIsAnyItemActive() bool;
pub extern fn igIsAnyItemFocused() bool;
pub extern fn igGetItemID() ImGuiID;
pub extern fn igGetItemRectMin(pOut: [*c]ImVec2) void;
pub extern fn igGetItemRectMax(pOut: [*c]ImVec2) void;
pub extern fn igGetItemRectSize(pOut: [*c]ImVec2) void;
pub extern fn igGetMainViewport() [*c]ImGuiViewport;
pub extern fn igGetBackgroundDrawList(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn igGetForegroundDrawList_ViewportPtr(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn igIsRectVisible_Nil(size: ImVec2) bool;
pub extern fn igIsRectVisible_Vec2(rect_min: ImVec2, rect_max: ImVec2) bool;
pub extern fn igGetTime() f64;
pub extern fn igGetFrameCount() c_int;
pub extern fn igGetDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn igGetStyleColorName(idx: ImGuiCol) [*c]const u8;
pub extern fn igSetStateStorage(storage: [*c]ImGuiStorage) void;
pub extern fn igGetStateStorage() [*c]ImGuiStorage;
pub extern fn igCalcTextSize(pOut: [*c]ImVec2, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_double_hash: bool, wrap_width: f32) void;
pub extern fn igColorConvertU32ToFloat4(pOut: [*c]ImVec4, in: ImU32) void;
pub extern fn igColorConvertFloat4ToU32(in: ImVec4) ImU32;
pub extern fn igColorConvertRGBtoHSV(r: f32, g: f32, b: f32, out_h: [*c]f32, out_s: [*c]f32, out_v: [*c]f32) void;
pub extern fn igColorConvertHSVtoRGB(h: f32, s: f32, v: f32, out_r: [*c]f32, out_g: [*c]f32, out_b: [*c]f32) void;
pub extern fn igIsKeyDown_Nil(key: ImGuiKey) bool;
pub extern fn igIsKeyPressed_Bool(key: ImGuiKey, repeat: bool) bool;
pub extern fn igIsKeyReleased_Nil(key: ImGuiKey) bool;
pub extern fn igIsKeyChordPressed_Nil(key_chord: ImGuiKeyChord) bool;
pub extern fn igGetKeyPressedAmount(key: ImGuiKey, repeat_delay: f32, rate: f32) c_int;
pub extern fn igGetKeyName(key: ImGuiKey) [*c]const u8;
pub extern fn igSetNextFrameWantCaptureKeyboard(want_capture_keyboard: bool) void;
pub extern fn igShortcut_Nil(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) bool;
pub extern fn igSetNextItemShortcut(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) void;
pub extern fn igSetItemKeyOwner_Nil(key: ImGuiKey) void;
pub extern fn igIsMouseDown_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseClicked_Bool(button: ImGuiMouseButton, repeat: bool) bool;
pub extern fn igIsMouseReleased_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseDoubleClicked_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseReleasedWithDelay(button: ImGuiMouseButton, delay: f32) bool;
pub extern fn igGetMouseClickedCount(button: ImGuiMouseButton) c_int;
pub extern fn igIsMouseHoveringRect(r_min: ImVec2, r_max: ImVec2, clip: bool) bool;
pub extern fn igIsMousePosValid(mouse_pos: [*c]const ImVec2) bool;
pub extern fn igIsAnyMouseDown() bool;
pub extern fn igGetMousePos(pOut: [*c]ImVec2) void;
pub extern fn igGetMousePosOnOpeningCurrentPopup(pOut: [*c]ImVec2) void;
pub extern fn igIsMouseDragging(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn igGetMouseDragDelta(pOut: [*c]ImVec2, button: ImGuiMouseButton, lock_threshold: f32) void;
pub extern fn igResetMouseDragDelta(button: ImGuiMouseButton) void;
pub extern fn igGetMouseCursor() ImGuiMouseCursor;
pub extern fn igSetMouseCursor(cursor_type: ImGuiMouseCursor) void;
pub extern fn igSetNextFrameWantCaptureMouse(want_capture_mouse: bool) void;
pub extern fn igGetClipboardText() [*c]const u8;
pub extern fn igSetClipboardText(text: [*c]const u8) void;
pub extern fn igLoadIniSettingsFromDisk(ini_filename: [*c]const u8) void;
pub extern fn igLoadIniSettingsFromMemory(ini_data: [*c]const u8, ini_size: usize) void;
pub extern fn igSaveIniSettingsToDisk(ini_filename: [*c]const u8) void;
pub extern fn igSaveIniSettingsToMemory(out_ini_size: [*c]usize) [*c]const u8;
pub extern fn igDebugTextEncoding(text: [*c]const u8) void;
pub extern fn igDebugFlashStyleColor(idx: ImGuiCol) void;
pub extern fn igDebugStartItemPicker() void;
pub extern fn igDebugCheckVersionAndDataLayout(version_str: [*c]const u8, sz_io: usize, sz_style: usize, sz_vec2: usize, sz_vec4: usize, sz_drawvert: usize, sz_drawidx: usize) bool;
pub extern fn igDebugLog(fmt: [*c]const u8, ...) void;
pub extern fn igDebugLogV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igSetAllocatorFunctions(alloc_func: ImGuiMemAllocFunc, free_func: ImGuiMemFreeFunc, user_data: ?*anyopaque) void;
pub extern fn igGetAllocatorFunctions(p_alloc_func: [*c]ImGuiMemAllocFunc, p_free_func: [*c]ImGuiMemFreeFunc, p_user_data: [*c]?*anyopaque) void;
pub extern fn igMemAlloc(size: usize) ?*anyopaque;
pub extern fn igMemFree(ptr: ?*anyopaque) void;
pub extern fn igUpdatePlatformWindows() void;
pub extern fn igRenderPlatformWindowsDefault(platform_render_arg: ?*anyopaque, renderer_render_arg: ?*anyopaque) void;
pub extern fn igDestroyPlatformWindows() void;
pub extern fn igFindViewportByID(id: ImGuiID) [*c]ImGuiViewport;
pub extern fn igFindViewportByPlatformHandle(platform_handle: ?*anyopaque) [*c]ImGuiViewport;
pub extern fn ImGuiTableSortSpecs_ImGuiTableSortSpecs() [*c]ImGuiTableSortSpecs;
pub extern fn ImGuiTableSortSpecs_destroy(self: [*c]ImGuiTableSortSpecs) void;
pub extern fn ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs() [*c]ImGuiTableColumnSortSpecs;
pub extern fn ImGuiTableColumnSortSpecs_destroy(self: [*c]ImGuiTableColumnSortSpecs) void;
pub extern fn ImGuiStyle_ImGuiStyle() [*c]ImGuiStyle;
pub extern fn ImGuiStyle_destroy(self: [*c]ImGuiStyle) void;
pub extern fn ImGuiStyle_ScaleAllSizes(self: [*c]ImGuiStyle, scale_factor: f32) void;
pub extern fn ImGuiIO_AddKeyEvent(self: [*c]ImGuiIO, key: ImGuiKey, down: bool) void;
pub extern fn ImGuiIO_AddKeyAnalogEvent(self: [*c]ImGuiIO, key: ImGuiKey, down: bool, v: f32) void;
pub extern fn ImGuiIO_AddMousePosEvent(self: [*c]ImGuiIO, x: f32, y: f32) void;
pub extern fn ImGuiIO_AddMouseButtonEvent(self: [*c]ImGuiIO, button: c_int, down: bool) void;
pub extern fn ImGuiIO_AddMouseWheelEvent(self: [*c]ImGuiIO, wheel_x: f32, wheel_y: f32) void;
pub extern fn ImGuiIO_AddMouseSourceEvent(self: [*c]ImGuiIO, source: ImGuiMouseSource) void;
pub extern fn ImGuiIO_AddMouseViewportEvent(self: [*c]ImGuiIO, id: ImGuiID) void;
pub extern fn ImGuiIO_AddFocusEvent(self: [*c]ImGuiIO, focused: bool) void;
pub extern fn ImGuiIO_AddInputCharacter(self: [*c]ImGuiIO, c: c_uint) void;
pub extern fn ImGuiIO_AddInputCharacterUTF16(self: [*c]ImGuiIO, c: ImWchar16) void;
pub extern fn ImGuiIO_AddInputCharactersUTF8(self: [*c]ImGuiIO, str: [*c]const u8) void;
pub extern fn ImGuiIO_SetKeyEventNativeData(self: [*c]ImGuiIO, key: ImGuiKey, native_keycode: c_int, native_scancode: c_int, native_legacy_index: c_int) void;
pub extern fn ImGuiIO_SetAppAcceptingEvents(self: [*c]ImGuiIO, accepting_events: bool) void;
pub extern fn ImGuiIO_ClearEventsQueue(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputKeys(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputMouse(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ImGuiIO() [*c]ImGuiIO;
pub extern fn ImGuiIO_destroy(self: [*c]ImGuiIO) void;
pub extern fn ImGuiInputTextCallbackData_ImGuiInputTextCallbackData() [*c]ImGuiInputTextCallbackData;
pub extern fn ImGuiInputTextCallbackData_destroy(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_DeleteChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, bytes_count: c_int) void;
pub extern fn ImGuiInputTextCallbackData_InsertChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImGuiInputTextCallbackData_SelectAll(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_ClearSelection(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_HasSelection(self: [*c]ImGuiInputTextCallbackData) bool;
pub extern fn ImGuiWindowClass_ImGuiWindowClass() [*c]ImGuiWindowClass;
pub extern fn ImGuiWindowClass_destroy(self: [*c]ImGuiWindowClass) void;
pub extern fn ImGuiPayload_ImGuiPayload() [*c]ImGuiPayload;
pub extern fn ImGuiPayload_destroy(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_Clear(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_IsDataType(self: [*c]ImGuiPayload, @"type": [*c]const u8) bool;
pub extern fn ImGuiPayload_IsPreview(self: [*c]ImGuiPayload) bool;
pub extern fn ImGuiPayload_IsDelivery(self: [*c]ImGuiPayload) bool;
pub extern fn ImGuiOnceUponAFrame_ImGuiOnceUponAFrame() [*c]ImGuiOnceUponAFrame;
pub extern fn ImGuiOnceUponAFrame_destroy(self: [*c]ImGuiOnceUponAFrame) void;
pub extern fn ImGuiTextFilter_ImGuiTextFilter(default_filter: [*c]const u8) [*c]ImGuiTextFilter;
pub extern fn ImGuiTextFilter_destroy(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Draw(self: [*c]ImGuiTextFilter, label: [*c]const u8, width: f32) bool;
pub extern fn ImGuiTextFilter_PassFilter(self: [*c]ImGuiTextFilter, text: [*c]const u8, text_end: [*c]const u8) bool;
pub extern fn ImGuiTextFilter_Build(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Clear(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_IsActive(self: [*c]ImGuiTextFilter) bool;
pub extern fn ImGuiTextRange_ImGuiTextRange_Nil() [*c]ImGuiTextRange;
pub extern fn ImGuiTextRange_destroy(self: [*c]ImGuiTextRange) void;
pub extern fn ImGuiTextRange_ImGuiTextRange_Str(_b: [*c]const u8, _e: [*c]const u8) [*c]ImGuiTextRange;
pub extern fn ImGuiTextRange_empty(self: [*c]ImGuiTextRange) bool;
pub extern fn ImGuiTextRange_split(self: [*c]ImGuiTextRange, separator: u8, out: [*c]ImVector_ImGuiTextRange) void;
pub extern fn ImGuiTextBuffer_ImGuiTextBuffer() [*c]ImGuiTextBuffer;
pub extern fn ImGuiTextBuffer_destroy(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_begin(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_end(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_size(self: [*c]ImGuiTextBuffer) c_int;
pub extern fn ImGuiTextBuffer_empty(self: [*c]ImGuiTextBuffer) bool;
pub extern fn ImGuiTextBuffer_clear(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_resize(self: [*c]ImGuiTextBuffer, size: c_int) void;
pub extern fn ImGuiTextBuffer_reserve(self: [*c]ImGuiTextBuffer, capacity: c_int) void;
pub extern fn ImGuiTextBuffer_c_str(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_append(self: [*c]ImGuiTextBuffer, str: [*c]const u8, str_end: [*c]const u8) void;
pub extern fn ImGuiTextBuffer_appendfv(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Int(_key: ImGuiID, _val: c_int) [*c]ImGuiStoragePair;
pub extern fn ImGuiStoragePair_destroy(self: [*c]ImGuiStoragePair) void;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Float(_key: ImGuiID, _val: f32) [*c]ImGuiStoragePair;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Ptr(_key: ImGuiID, _val: ?*anyopaque) [*c]ImGuiStoragePair;
pub extern fn ImGuiStorage_Clear(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_GetInt(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) c_int;
pub extern fn ImGuiStorage_SetInt(self: [*c]ImGuiStorage, key: ImGuiID, val: c_int) void;
pub extern fn ImGuiStorage_GetBool(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) bool;
pub extern fn ImGuiStorage_SetBool(self: [*c]ImGuiStorage, key: ImGuiID, val: bool) void;
pub extern fn ImGuiStorage_GetFloat(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) f32;
pub extern fn ImGuiStorage_SetFloat(self: [*c]ImGuiStorage, key: ImGuiID, val: f32) void;
pub extern fn ImGuiStorage_GetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID) ?*anyopaque;
pub extern fn ImGuiStorage_SetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID, val: ?*anyopaque) void;
pub extern fn ImGuiStorage_GetIntRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) [*c]c_int;
pub extern fn ImGuiStorage_GetBoolRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) [*c]bool;
pub extern fn ImGuiStorage_GetFloatRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) [*c]f32;
pub extern fn ImGuiStorage_GetVoidPtrRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: ?*anyopaque) [*c]?*anyopaque;
pub extern fn ImGuiStorage_BuildSortByKey(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_SetAllInt(self: [*c]ImGuiStorage, val: c_int) void;
pub extern fn ImGuiListClipper_ImGuiListClipper() [*c]ImGuiListClipper;
pub extern fn ImGuiListClipper_destroy(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Begin(self: [*c]ImGuiListClipper, items_count: c_int, items_height: f32) void;
pub extern fn ImGuiListClipper_End(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Step(self: [*c]ImGuiListClipper) bool;
pub extern fn ImGuiListClipper_IncludeItemByIndex(self: [*c]ImGuiListClipper, item_index: c_int) void;
pub extern fn ImGuiListClipper_IncludeItemsByIndex(self: [*c]ImGuiListClipper, item_begin: c_int, item_end: c_int) void;
pub extern fn ImGuiListClipper_SeekCursorForItem(self: [*c]ImGuiListClipper, item_index: c_int) void;
pub extern fn ImColor_ImColor_Nil() [*c]ImColor;
pub extern fn ImColor_destroy(self: [*c]ImColor) void;
pub extern fn ImColor_ImColor_Float(r: f32, g: f32, b: f32, a: f32) [*c]ImColor;
pub extern fn ImColor_ImColor_Vec4(col: ImVec4) [*c]ImColor;
pub extern fn ImColor_ImColor_Int(r: c_int, g: c_int, b: c_int, a: c_int) [*c]ImColor;
pub extern fn ImColor_ImColor_U32(rgba: ImU32) [*c]ImColor;
pub extern fn ImColor_SetHSV(self: [*c]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImColor_HSV(pOut: [*c]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage() [*c]ImGuiSelectionBasicStorage;
pub extern fn ImGuiSelectionBasicStorage_destroy(self: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_ApplyRequests(self: [*c]ImGuiSelectionBasicStorage, ms_io: [*c]ImGuiMultiSelectIO) void;
pub extern fn ImGuiSelectionBasicStorage_Contains(self: [*c]ImGuiSelectionBasicStorage, id: ImGuiID) bool;
pub extern fn ImGuiSelectionBasicStorage_Clear(self: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_Swap(self: [*c]ImGuiSelectionBasicStorage, r: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_SetItemSelected(self: [*c]ImGuiSelectionBasicStorage, id: ImGuiID, selected: bool) void;
pub extern fn ImGuiSelectionBasicStorage_GetNextSelectedItem(self: [*c]ImGuiSelectionBasicStorage, opaque_it: [*c]?*anyopaque, out_id: [*c]ImGuiID) bool;
pub extern fn ImGuiSelectionBasicStorage_GetStorageIdFromIndex(self: [*c]ImGuiSelectionBasicStorage, idx: c_int) ImGuiID;
pub extern fn ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage() [*c]ImGuiSelectionExternalStorage;
pub extern fn ImGuiSelectionExternalStorage_destroy(self: [*c]ImGuiSelectionExternalStorage) void;
pub extern fn ImGuiSelectionExternalStorage_ApplyRequests(self: [*c]ImGuiSelectionExternalStorage, ms_io: [*c]ImGuiMultiSelectIO) void;
pub extern fn ImDrawCmd_ImDrawCmd() [*c]ImDrawCmd;
pub extern fn ImDrawCmd_destroy(self: [*c]ImDrawCmd) void;
pub extern fn ImDrawCmd_GetTexID(self: [*c]ImDrawCmd) ImTextureID;
pub extern fn ImDrawListSplitter_ImDrawListSplitter() [*c]ImDrawListSplitter;
pub extern fn ImDrawListSplitter_destroy(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Clear(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_ClearFreeMemory(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Split(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawListSplitter_Merge(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawListSplitter_SetCurrentChannel(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, channel_idx: c_int) void;
pub extern fn ImDrawList_ImDrawList(shared_data: [*c]ImDrawListSharedData) [*c]ImDrawList;
pub extern fn ImDrawList_destroy(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushClipRect(self: [*c]ImDrawList, clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn ImDrawList_PushClipRectFullScreen(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PopClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushTextureID(self: [*c]ImDrawList, texture_id: ImTextureID) void;
pub extern fn ImDrawList_PopTextureID(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMin(pOut: [*c]ImVec2, self: [*c]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMax(pOut: [*c]ImVec2, self: [*c]ImDrawList) void;
pub extern fn ImDrawList_AddLine(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddRect(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_AddRectFilled(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_AddRectFilledMultiColor(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32) void;
pub extern fn ImDrawList_AddQuad(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddQuadFilled(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddTriangle(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddTriangleFilled(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddCircle(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddCircleFilled(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddNgon(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddNgonFilled(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddEllipse(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32, rot: f32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddEllipseFilled(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32, rot: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddText_Vec2(self: [*c]ImDrawList, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImDrawList_AddText_FontPtr(self: [*c]ImDrawList, font: [*c]ImFont, font_size: f32, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip_rect: [*c]const ImVec4) void;
pub extern fn ImDrawList_AddBezierCubic(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddBezierQuadratic(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddPolyline(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_AddConvexPolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddConcavePolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddImage(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageQuad(self: [*c]ImDrawList, user_texture_id: ImTextureID, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, uv1: ImVec2, uv2: ImVec2, uv3: ImVec2, uv4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageRounded(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_PathClear(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PathLineTo(self: [*c]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathLineToMergeDuplicate(self: [*c]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathFillConvex(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathFillConcave(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathStroke(self: [*c]ImDrawList, col: ImU32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_PathArcTo(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathArcToFast(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min_of_12: c_int, a_max_of_12: c_int) void;
pub extern fn ImDrawList_PathEllipticalArcTo(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, rot: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathBezierCubicCurveTo(self: [*c]ImDrawList, p2: ImVec2, p3: ImVec2, p4: ImVec2, num_segments: c_int) void;
pub extern fn ImDrawList_PathBezierQuadraticCurveTo(self: [*c]ImDrawList, p2: ImVec2, p3: ImVec2, num_segments: c_int) void;
pub extern fn ImDrawList_PathRect(self: [*c]ImDrawList, rect_min: ImVec2, rect_max: ImVec2, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_AddCallback(self: [*c]ImDrawList, callback: ImDrawCallback, userdata: ?*anyopaque, userdata_size: usize) void;
pub extern fn ImDrawList_AddDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_CloneOutput(self: [*c]ImDrawList) [*c]ImDrawList;
pub extern fn ImDrawList_ChannelsSplit(self: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawList_ChannelsMerge(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_ChannelsSetCurrent(self: [*c]ImDrawList, n: c_int) void;
pub extern fn ImDrawList_PrimReserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimUnreserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimRect(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimRectUV(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimQuadUV(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, uv_a: ImVec2, uv_b: ImVec2, uv_c: ImVec2, uv_d: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteVtx(self: [*c]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteIdx(self: [*c]ImDrawList, idx: ImDrawIdx) void;
pub extern fn ImDrawList_PrimVtx(self: [*c]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList__ResetForNewFrame(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__ClearFreeMemory(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__PopUnusedDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__TryMergeDrawCmds(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedTextureID(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedVtxOffset(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__SetTextureID(self: [*c]ImDrawList, texture_id: ImTextureID) void;
pub extern fn ImDrawList__CalcCircleAutoSegmentCount(self: [*c]ImDrawList, radius: f32) c_int;
pub extern fn ImDrawList__PathArcToFastEx(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min_sample: c_int, a_max_sample: c_int, a_step: c_int) void;
pub extern fn ImDrawList__PathArcToN(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawData_ImDrawData() [*c]ImDrawData;
pub extern fn ImDrawData_destroy(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_Clear(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_AddDrawList(self: [*c]ImDrawData, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawData_DeIndexAllBuffers(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_ScaleClipRects(self: [*c]ImDrawData, fb_scale: ImVec2) void;
pub extern fn ImFontConfig_ImFontConfig() [*c]ImFontConfig;
pub extern fn ImFontConfig_destroy(self: [*c]ImFontConfig) void;
pub extern fn ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder() [*c]ImFontGlyphRangesBuilder;
pub extern fn ImFontGlyphRangesBuilder_destroy(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_Clear(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_GetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) bool;
pub extern fn ImFontGlyphRangesBuilder_SetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) void;
pub extern fn ImFontGlyphRangesBuilder_AddChar(self: [*c]ImFontGlyphRangesBuilder, c: ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_AddText(self: [*c]ImFontGlyphRangesBuilder, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImFontGlyphRangesBuilder_AddRanges(self: [*c]ImFontGlyphRangesBuilder, ranges: [*c]const ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_BuildRanges(self: [*c]ImFontGlyphRangesBuilder, out_ranges: [*c]ImVector_ImWchar) void;
pub extern fn ImFontAtlasCustomRect_ImFontAtlasCustomRect() ?*ImFontAtlasCustomRect;
pub extern fn ImFontAtlasCustomRect_destroy(self: ?*ImFontAtlasCustomRect) void;
pub extern fn ImFontAtlasCustomRect_IsPacked(self: ?*ImFontAtlasCustomRect) bool;
pub extern fn ImFontAtlas_ImFontAtlas() [*c]ImFontAtlas;
pub extern fn ImFontAtlas_destroy(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_AddFont(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontDefault(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromFileTTF(self: [*c]ImFontAtlas, filename: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryTTF(self: [*c]ImFontAtlas, font_data: ?*anyopaque, font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedTTF(self: [*c]ImFontAtlas, compressed_font_data: ?*const anyopaque, compressed_font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self: [*c]ImFontAtlas, compressed_font_data_base85: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_ClearInputData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearFonts(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearTexData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_Clear(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_Build(self: [*c]ImFontAtlas) bool;
pub extern fn ImFontAtlas_GetTexDataAsAlpha8(self: [*c]ImFontAtlas, out_pixels: [*c][*c]u8, out_width: [*c]c_int, out_height: [*c]c_int, out_bytes_per_pixel: [*c]c_int) void;
pub extern fn ImFontAtlas_GetTexDataAsRGBA32(self: [*c]ImFontAtlas, out_pixels: [*c][*c]u8, out_width: [*c]c_int, out_height: [*c]c_int, out_bytes_per_pixel: [*c]c_int) void;
pub extern fn ImFontAtlas_IsBuilt(self: [*c]ImFontAtlas) bool;
pub extern fn ImFontAtlas_SetTexID(self: [*c]ImFontAtlas, id: ImTextureID) void;
pub extern fn ImFontAtlas_GetGlyphRangesDefault(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesGreek(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesKorean(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesJapanese(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseFull(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesCyrillic(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesThai(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesVietnamese(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_AddCustomRectRegular(self: [*c]ImFontAtlas, width: c_int, height: c_int) c_int;
pub extern fn ImFontAtlas_AddCustomRectFontGlyph(self: [*c]ImFontAtlas, font: [*c]ImFont, id: ImWchar, width: c_int, height: c_int, advance_x: f32, offset: ImVec2) c_int;
pub extern fn ImFontAtlas_GetCustomRectByIndex(self: [*c]ImFontAtlas, index: c_int) ?*ImFontAtlasCustomRect;
pub extern fn ImFontAtlas_CalcCustomRectUV(self: [*c]ImFontAtlas, rect: ?*const ImFontAtlasCustomRect, out_uv_min: [*c]ImVec2, out_uv_max: [*c]ImVec2) void;
pub extern fn ImFont_ImFont() [*c]ImFont;
pub extern fn ImFont_destroy(self: [*c]ImFont) void;
pub extern fn ImFont_FindGlyph(self: [*c]ImFont, c: ImWchar) ?*ImFontGlyph;
pub extern fn ImFont_FindGlyphNoFallback(self: [*c]ImFont, c: ImWchar) ?*ImFontGlyph;
pub extern fn ImFont_GetCharAdvance(self: [*c]ImFont, c: ImWchar) f32;
pub extern fn ImFont_IsLoaded(self: [*c]ImFont) bool;
pub extern fn ImFont_GetDebugName(self: [*c]ImFont) [*c]const u8;
pub extern fn ImFont_CalcTextSizeA(pOut: [*c]ImVec2, self: [*c]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: [*c]const u8, text_end: [*c]const u8, remaining: [*c][*c]const u8) void;
pub extern fn ImFont_CalcWordWrapPositionA(self: [*c]ImFont, scale: f32, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) [*c]const u8;
pub extern fn ImFont_RenderChar(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, c: ImWchar) void;
pub extern fn ImFont_RenderText(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, clip_rect: ImVec4, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip: bool) void;
pub extern fn ImFont_BuildLookupTable(self: [*c]ImFont) void;
pub extern fn ImFont_ClearOutputData(self: [*c]ImFont) void;
pub extern fn ImFont_GrowIndex(self: [*c]ImFont, new_size: c_int) void;
pub extern fn ImFont_AddGlyph(self: [*c]ImFont, src_cfg: [*c]const ImFontConfig, c: ImWchar, x0: f32, y0: f32, x1: f32, y1: f32, @"u0": f32, v0: f32, @"u1": f32, v1: f32, advance_x: f32) void;
pub extern fn ImFont_AddRemapChar(self: [*c]ImFont, dst: ImWchar, src: ImWchar, overwrite_dst: bool) void;
pub extern fn ImFont_IsGlyphRangeUnused(self: [*c]ImFont, c_begin: c_uint, c_last: c_uint) bool;
pub extern fn ImGuiViewport_ImGuiViewport() [*c]ImGuiViewport;
pub extern fn ImGuiViewport_destroy(self: [*c]ImGuiViewport) void;
pub extern fn ImGuiViewport_GetCenter(pOut: [*c]ImVec2, self: [*c]ImGuiViewport) void;
pub extern fn ImGuiViewport_GetWorkCenter(pOut: [*c]ImVec2, self: [*c]ImGuiViewport) void;
pub extern fn ImGuiPlatformIO_ImGuiPlatformIO() [*c]ImGuiPlatformIO;
pub extern fn ImGuiPlatformIO_destroy(self: [*c]ImGuiPlatformIO) void;
pub extern fn ImGuiPlatformMonitor_ImGuiPlatformMonitor() [*c]ImGuiPlatformMonitor;
pub extern fn ImGuiPlatformMonitor_destroy(self: [*c]ImGuiPlatformMonitor) void;
pub extern fn ImGuiPlatformImeData_ImGuiPlatformImeData() [*c]ImGuiPlatformImeData;
pub extern fn ImGuiPlatformImeData_destroy(self: [*c]ImGuiPlatformImeData) void;
pub extern fn igImHashData(data: ?*const anyopaque, data_size: usize, seed: ImGuiID) ImGuiID;
pub extern fn igImHashStr(data: [*c]const u8, data_size: usize, seed: ImGuiID) ImGuiID;
pub extern fn igImQsort(base: ?*anyopaque, count: usize, size_of_element: usize, compare_func: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int) void;
pub extern fn igImAlphaBlendColors(col_a: ImU32, col_b: ImU32) ImU32;
pub extern fn igImIsPowerOfTwo_Int(v: c_int) bool;
pub extern fn igImIsPowerOfTwo_U64(v: ImU64) bool;
pub extern fn igImUpperPowerOfTwo(v: c_int) c_int;
pub extern fn igImCountSetBits(v: c_uint) c_uint;
pub extern fn igImStricmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn igImStrnicmp(str1: [*c]const u8, str2: [*c]const u8, count: usize) c_int;
pub extern fn igImStrncpy(dst: [*c]u8, src: [*c]const u8, count: usize) void;
pub extern fn igImStrdup(str: [*c]const u8) [*c]u8;
pub extern fn igImStrdupcpy(dst: [*c]u8, p_dst_size: [*c]usize, str: [*c]const u8) [*c]u8;
pub extern fn igImStrchrRange(str_begin: [*c]const u8, str_end: [*c]const u8, c: u8) [*c]const u8;
pub extern fn igImStreolRange(str: [*c]const u8, str_end: [*c]const u8) [*c]const u8;
pub extern fn igImStristr(haystack: [*c]const u8, haystack_end: [*c]const u8, needle: [*c]const u8, needle_end: [*c]const u8) [*c]const u8;
pub extern fn igImStrTrimBlanks(str: [*c]u8) void;
pub extern fn igImStrSkipBlank(str: [*c]const u8) [*c]const u8;
pub extern fn igImStrlenW(str: [*c]const ImWchar) c_int;
pub extern fn igImStrbol(buf_mid_line: [*c]const u8, buf_begin: [*c]const u8) [*c]const u8;
pub extern fn igImToUpper(c: u8) u8;
pub extern fn igImCharIsBlankA(c: u8) bool;
pub extern fn igImCharIsBlankW(c: c_uint) bool;
pub extern fn igImCharIsXdigitA(c: u8) bool;
pub extern fn igImFormatString(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn igImFormatStringV(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, args: va_list) c_int;
pub extern fn igImFormatStringToTempBuffer(out_buf: [*c][*c]const u8, out_buf_end: [*c][*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn igImFormatStringToTempBufferV(out_buf: [*c][*c]const u8, out_buf_end: [*c][*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn igImParseFormatFindStart(format: [*c]const u8) [*c]const u8;
pub extern fn igImParseFormatFindEnd(format: [*c]const u8) [*c]const u8;
pub extern fn igImParseFormatTrimDecorations(format: [*c]const u8, buf: [*c]u8, buf_size: usize) [*c]const u8;
pub extern fn igImParseFormatSanitizeForPrinting(fmt_in: [*c]const u8, fmt_out: [*c]u8, fmt_out_size: usize) void;
pub extern fn igImParseFormatSanitizeForScanning(fmt_in: [*c]const u8, fmt_out: [*c]u8, fmt_out_size: usize) [*c]const u8;
pub extern fn igImParseFormatPrecision(format: [*c]const u8, default_value: c_int) c_int;
pub extern fn igImTextCharToUtf8(out_buf: [*c]u8, c: c_uint) [*c]const u8;
pub extern fn igImTextStrToUtf8(out_buf: [*c]u8, out_buf_size: c_int, in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn igImTextCharFromUtf8(out_char: [*c]c_uint, in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextStrFromUtf8(out_buf: [*c]ImWchar, out_buf_size: c_int, in_text: [*c]const u8, in_text_end: [*c]const u8, in_remaining: [*c][*c]const u8) c_int;
pub extern fn igImTextCountCharsFromUtf8(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextCountUtf8BytesFromChar(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextCountUtf8BytesFromStr(in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn igImTextFindPreviousUtf8Codepoint(in_text_start: [*c]const u8, in_text_curr: [*c]const u8) [*c]const u8;
pub extern fn igImTextCountLines(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImFileOpen(filename: [*c]const u8, mode: [*c]const u8) ImFileHandle;
pub extern fn igImFileClose(file: ImFileHandle) bool;
pub extern fn igImFileGetSize(file: ImFileHandle) ImU64;
pub extern fn igImFileRead(data: ?*anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn igImFileWrite(data: ?*const anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn igImFileLoadToMemory(filename: [*c]const u8, mode: [*c]const u8, out_file_size: [*c]usize, padding_bytes: c_int) ?*anyopaque;
pub extern fn igImPow_Float(x: f32, y: f32) f32;
pub extern fn igImPow_double(x: f64, y: f64) f64;
pub extern fn igImLog_Float(x: f32) f32;
pub extern fn igImLog_double(x: f64) f64;
pub extern fn igImAbs_Int(x: c_int) c_int;
pub extern fn igImAbs_Float(x: f32) f32;
pub extern fn igImAbs_double(x: f64) f64;
pub extern fn igImSign_Float(x: f32) f32;
pub extern fn igImSign_double(x: f64) f64;
pub extern fn igImRsqrt_Float(x: f32) f32;
pub extern fn igImRsqrt_double(x: f64) f64;
pub extern fn igImMin(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImMax(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImClamp(pOut: [*c]ImVec2, v: ImVec2, mn: ImVec2, mx: ImVec2) void;
pub extern fn igImLerp_Vec2Float(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, t: f32) void;
pub extern fn igImLerp_Vec2Vec2(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, t: ImVec2) void;
pub extern fn igImLerp_Vec4(pOut: [*c]ImVec4, a: ImVec4, b: ImVec4, t: f32) void;
pub extern fn igImSaturate(f: f32) f32;
pub extern fn igImLengthSqr_Vec2(lhs: ImVec2) f32;
pub extern fn igImLengthSqr_Vec4(lhs: ImVec4) f32;
pub extern fn igImInvLength(lhs: ImVec2, fail_value: f32) f32;
pub extern fn igImTrunc_Float(f: f32) f32;
pub extern fn igImTrunc_Vec2(pOut: [*c]ImVec2, v: ImVec2) void;
pub extern fn igImFloor_Float(f: f32) f32;
pub extern fn igImFloor_Vec2(pOut: [*c]ImVec2, v: ImVec2) void;
pub extern fn igImModPositive(a: c_int, b: c_int) c_int;
pub extern fn igImDot(a: ImVec2, b: ImVec2) f32;
pub extern fn igImRotate(pOut: [*c]ImVec2, v: ImVec2, cos_a: f32, sin_a: f32) void;
pub extern fn igImLinearSweep(current: f32, target: f32, speed: f32) f32;
pub extern fn igImLinearRemapClamp(s0: f32, s1: f32, d0: f32, d1: f32, x: f32) f32;
pub extern fn igImMul(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImIsFloatAboveGuaranteedIntegerPrecision(f: f32) bool;
pub extern fn igImExponentialMovingAverage(avg: f32, sample: f32, n: c_int) f32;
pub extern fn igImBezierCubicCalc(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, t: f32) void;
pub extern fn igImBezierCubicClosestPoint(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, num_segments: c_int) void;
pub extern fn igImBezierCubicClosestPointCasteljau(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, tess_tol: f32) void;
pub extern fn igImBezierQuadraticCalc(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, t: f32) void;
pub extern fn igImLineClosestPoint(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, p: ImVec2) void;
pub extern fn igImTriangleContainsPoint(a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) bool;
pub extern fn igImTriangleClosestPoint(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) void;
pub extern fn igImTriangleBarycentricCoords(a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2, out_u: [*c]f32, out_v: [*c]f32, out_w: [*c]f32) void;
pub extern fn igImTriangleArea(a: ImVec2, b: ImVec2, c: ImVec2) f32;
pub extern fn igImTriangleIsClockwise(a: ImVec2, b: ImVec2, c: ImVec2) bool;
pub extern fn ImVec1_ImVec1_Nil() [*c]ImVec1;
pub extern fn ImVec1_destroy(self: [*c]ImVec1) void;
pub extern fn ImVec1_ImVec1_Float(_x: f32) [*c]ImVec1;
pub extern fn ImVec2ih_ImVec2ih_Nil() [*c]ImVec2ih;
pub extern fn ImVec2ih_destroy(self: [*c]ImVec2ih) void;
pub extern fn ImVec2ih_ImVec2ih_short(_x: c_short, _y: c_short) [*c]ImVec2ih;
pub extern fn ImVec2ih_ImVec2ih_Vec2(rhs: ImVec2) [*c]ImVec2ih;
pub extern fn ImRect_ImRect_Nil() [*c]ImRect;
pub extern fn ImRect_destroy(self: [*c]ImRect) void;
pub extern fn ImRect_ImRect_Vec2(min: ImVec2, max: ImVec2) [*c]ImRect;
pub extern fn ImRect_ImRect_Vec4(v: ImVec4) [*c]ImRect;
pub extern fn ImRect_ImRect_Float(x1: f32, y1: f32, x2: f32, y2: f32) [*c]ImRect;
pub extern fn ImRect_GetCenter(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetSize(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetWidth(self: [*c]ImRect) f32;
pub extern fn ImRect_GetHeight(self: [*c]ImRect) f32;
pub extern fn ImRect_GetArea(self: [*c]ImRect) f32;
pub extern fn ImRect_GetTL(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetTR(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetBL(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetBR(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_Contains_Vec2(self: [*c]ImRect, p: ImVec2) bool;
pub extern fn ImRect_Contains_Rect(self: [*c]ImRect, r: ImRect) bool;
pub extern fn ImRect_ContainsWithPad(self: [*c]ImRect, p: ImVec2, pad: ImVec2) bool;
pub extern fn ImRect_Overlaps(self: [*c]ImRect, r: ImRect) bool;
pub extern fn ImRect_Add_Vec2(self: [*c]ImRect, p: ImVec2) void;
pub extern fn ImRect_Add_Rect(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_Expand_Float(self: [*c]ImRect, amount: f32) void;
pub extern fn ImRect_Expand_Vec2(self: [*c]ImRect, amount: ImVec2) void;
pub extern fn ImRect_Translate(self: [*c]ImRect, d: ImVec2) void;
pub extern fn ImRect_TranslateX(self: [*c]ImRect, dx: f32) void;
pub extern fn ImRect_TranslateY(self: [*c]ImRect, dy: f32) void;
pub extern fn ImRect_ClipWith(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_ClipWithFull(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_Floor(self: [*c]ImRect) void;
pub extern fn ImRect_IsInverted(self: [*c]ImRect) bool;
pub extern fn ImRect_ToVec4(pOut: [*c]ImVec4, self: [*c]ImRect) void;
pub extern fn igImBitArrayGetStorageSizeInBytes(bitcount: c_int) usize;
pub extern fn igImBitArrayClearAllBits(arr: [*c]ImU32, bitcount: c_int) void;
pub extern fn igImBitArrayTestBit(arr: [*c]const ImU32, n: c_int) bool;
pub extern fn igImBitArrayClearBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn igImBitArraySetBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn igImBitArraySetBitRange(arr: [*c]ImU32, n: c_int, n2: c_int) void;
pub extern fn ImBitVector_Create(self: [*c]ImBitVector, sz: c_int) void;
pub extern fn ImBitVector_Clear(self: [*c]ImBitVector) void;
pub extern fn ImBitVector_TestBit(self: [*c]ImBitVector, n: c_int) bool;
pub extern fn ImBitVector_SetBit(self: [*c]ImBitVector, n: c_int) void;
pub extern fn ImBitVector_ClearBit(self: [*c]ImBitVector, n: c_int) void;
pub extern fn ImGuiTextIndex_clear(self: [*c]ImGuiTextIndex) void;
pub extern fn ImGuiTextIndex_size(self: [*c]ImGuiTextIndex) c_int;
pub extern fn ImGuiTextIndex_get_line_begin(self: [*c]ImGuiTextIndex, base: [*c]const u8, n: c_int) [*c]const u8;
pub extern fn ImGuiTextIndex_get_line_end(self: [*c]ImGuiTextIndex, base: [*c]const u8, n: c_int) [*c]const u8;
pub extern fn ImGuiTextIndex_append(self: [*c]ImGuiTextIndex, base: [*c]const u8, old_size: c_int, new_size: c_int) void;
pub extern fn igImLowerBound(in_begin: [*c]ImGuiStoragePair, in_end: [*c]ImGuiStoragePair, key: ImGuiID) [*c]ImGuiStoragePair;
pub extern fn ImDrawListSharedData_ImDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn ImDrawListSharedData_destroy(self: [*c]ImDrawListSharedData) void;
pub extern fn ImDrawListSharedData_SetCircleTessellationMaxError(self: [*c]ImDrawListSharedData, max_error: f32) void;
pub extern fn ImDrawDataBuilder_ImDrawDataBuilder() [*c]ImDrawDataBuilder;
pub extern fn ImDrawDataBuilder_destroy(self: [*c]ImDrawDataBuilder) void;
pub extern fn ImGuiStyleVarInfo_GetVarPtr(self: ?*ImGuiStyleVarInfo, parent: ?*anyopaque) ?*anyopaque;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Int(idx: ImGuiStyleVar, v: c_int) [*c]ImGuiStyleMod;
pub extern fn ImGuiStyleMod_destroy(self: [*c]ImGuiStyleMod) void;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Float(idx: ImGuiStyleVar, v: f32) [*c]ImGuiStyleMod;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Vec2(idx: ImGuiStyleVar, v: ImVec2) [*c]ImGuiStyleMod;
pub extern fn ImGuiComboPreviewData_ImGuiComboPreviewData() [*c]ImGuiComboPreviewData;
pub extern fn ImGuiComboPreviewData_destroy(self: [*c]ImGuiComboPreviewData) void;
pub extern fn ImGuiMenuColumns_ImGuiMenuColumns() [*c]ImGuiMenuColumns;
pub extern fn ImGuiMenuColumns_destroy(self: [*c]ImGuiMenuColumns) void;
pub extern fn ImGuiMenuColumns_Update(self: [*c]ImGuiMenuColumns, spacing: f32, window_reappearing: bool) void;
pub extern fn ImGuiMenuColumns_DeclColumns(self: [*c]ImGuiMenuColumns, w_icon: f32, w_label: f32, w_shortcut: f32, w_mark: f32) f32;
pub extern fn ImGuiMenuColumns_CalcNextTotalWidth(self: [*c]ImGuiMenuColumns, update_offsets: bool) void;
pub extern fn ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState() [*c]ImGuiInputTextDeactivatedState;
pub extern fn ImGuiInputTextDeactivatedState_destroy(self: [*c]ImGuiInputTextDeactivatedState) void;
pub extern fn ImGuiInputTextDeactivatedState_ClearFreeMemory(self: [*c]ImGuiInputTextDeactivatedState) void;
pub extern fn ImGuiInputTextState_ImGuiInputTextState() [*c]ImGuiInputTextState;
pub extern fn ImGuiInputTextState_destroy(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ClearText(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ClearFreeMemory(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_OnKeyPressed(self: [*c]ImGuiInputTextState, key: c_int) void;
pub extern fn ImGuiInputTextState_OnCharPressed(self: [*c]ImGuiInputTextState, c: c_uint) void;
pub extern fn ImGuiInputTextState_CursorAnimReset(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_CursorClamp(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_HasSelection(self: [*c]ImGuiInputTextState) bool;
pub extern fn ImGuiInputTextState_ClearSelection(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_GetCursorPos(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetSelectionStart(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetSelectionEnd(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_SelectAll(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndSelectAll(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndKeepSelection(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndMoveToEnd(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiNextWindowData_ImGuiNextWindowData() [*c]ImGuiNextWindowData;
pub extern fn ImGuiNextWindowData_destroy(self: [*c]ImGuiNextWindowData) void;
pub extern fn ImGuiNextWindowData_ClearFlags(self: [*c]ImGuiNextWindowData) void;
pub extern fn ImGuiNextItemData_ImGuiNextItemData() [*c]ImGuiNextItemData;
pub extern fn ImGuiNextItemData_destroy(self: [*c]ImGuiNextItemData) void;
pub extern fn ImGuiNextItemData_ClearFlags(self: [*c]ImGuiNextItemData) void;
pub extern fn ImGuiLastItemData_ImGuiLastItemData() [*c]ImGuiLastItemData;
pub extern fn ImGuiLastItemData_destroy(self: [*c]ImGuiLastItemData) void;
pub extern fn ImGuiErrorRecoveryState_ImGuiErrorRecoveryState() [*c]ImGuiErrorRecoveryState;
pub extern fn ImGuiErrorRecoveryState_destroy(self: [*c]ImGuiErrorRecoveryState) void;
pub extern fn ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr(ptr: ?*anyopaque) [*c]ImGuiPtrOrIndex;
pub extern fn ImGuiPtrOrIndex_destroy(self: [*c]ImGuiPtrOrIndex) void;
pub extern fn ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int(index: c_int) [*c]ImGuiPtrOrIndex;
pub extern fn ImGuiPopupData_ImGuiPopupData() [*c]ImGuiPopupData;
pub extern fn ImGuiPopupData_destroy(self: [*c]ImGuiPopupData) void;
pub extern fn ImGuiInputEvent_ImGuiInputEvent() [*c]ImGuiInputEvent;
pub extern fn ImGuiInputEvent_destroy(self: [*c]ImGuiInputEvent) void;
pub extern fn ImGuiKeyRoutingData_ImGuiKeyRoutingData() [*c]ImGuiKeyRoutingData;
pub extern fn ImGuiKeyRoutingData_destroy(self: [*c]ImGuiKeyRoutingData) void;
pub extern fn ImGuiKeyRoutingTable_ImGuiKeyRoutingTable() [*c]ImGuiKeyRoutingTable;
pub extern fn ImGuiKeyRoutingTable_destroy(self: [*c]ImGuiKeyRoutingTable) void;
pub extern fn ImGuiKeyRoutingTable_Clear(self: [*c]ImGuiKeyRoutingTable) void;
pub extern fn ImGuiKeyOwnerData_ImGuiKeyOwnerData() [*c]ImGuiKeyOwnerData;
pub extern fn ImGuiKeyOwnerData_destroy(self: [*c]ImGuiKeyOwnerData) void;
pub extern fn ImGuiListClipperRange_FromIndices(min: c_int, max: c_int) ImGuiListClipperRange;
pub extern fn ImGuiListClipperRange_FromPositions(y1: f32, y2: f32, off_min: c_int, off_max: c_int) ImGuiListClipperRange;
pub extern fn ImGuiListClipperData_ImGuiListClipperData() [*c]ImGuiListClipperData;
pub extern fn ImGuiListClipperData_destroy(self: [*c]ImGuiListClipperData) void;
pub extern fn ImGuiListClipperData_Reset(self: [*c]ImGuiListClipperData, clipper: [*c]ImGuiListClipper) void;
pub extern fn ImGuiNavItemData_ImGuiNavItemData() [*c]ImGuiNavItemData;
pub extern fn ImGuiNavItemData_destroy(self: [*c]ImGuiNavItemData) void;
pub extern fn ImGuiNavItemData_Clear(self: [*c]ImGuiNavItemData) void;
pub extern fn ImGuiTypingSelectState_ImGuiTypingSelectState() [*c]ImGuiTypingSelectState;
pub extern fn ImGuiTypingSelectState_destroy(self: [*c]ImGuiTypingSelectState) void;
pub extern fn ImGuiTypingSelectState_Clear(self: [*c]ImGuiTypingSelectState) void;
pub extern fn ImGuiOldColumnData_ImGuiOldColumnData() [*c]ImGuiOldColumnData;
pub extern fn ImGuiOldColumnData_destroy(self: [*c]ImGuiOldColumnData) void;
pub extern fn ImGuiOldColumns_ImGuiOldColumns() [*c]ImGuiOldColumns;
pub extern fn ImGuiOldColumns_destroy(self: [*c]ImGuiOldColumns) void;
pub extern fn ImGuiBoxSelectState_ImGuiBoxSelectState() ?*ImGuiBoxSelectState;
pub extern fn ImGuiBoxSelectState_destroy(self: ?*ImGuiBoxSelectState) void;
pub extern fn ImGuiMultiSelectTempData_ImGuiMultiSelectTempData() [*c]ImGuiMultiSelectTempData;
pub extern fn ImGuiMultiSelectTempData_destroy(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectTempData_Clear(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectTempData_ClearIO(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectState_ImGuiMultiSelectState() [*c]ImGuiMultiSelectState;
pub extern fn ImGuiMultiSelectState_destroy(self: [*c]ImGuiMultiSelectState) void;
pub extern fn ImGuiDockNode_ImGuiDockNode(id: ImGuiID) ?*ImGuiDockNode;
pub extern fn ImGuiDockNode_destroy(self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockNode_IsRootNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsDockSpace(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsFloatingNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsCentralNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsHiddenTabBar(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsNoTabBar(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsSplitNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsLeafNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsEmpty(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_Rect(pOut: [*c]ImRect, self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockNode_SetLocalFlags(self: ?*ImGuiDockNode, flags: ImGuiDockNodeFlags) void;
pub extern fn ImGuiDockNode_UpdateMergedFlags(self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockContext_ImGuiDockContext() [*c]ImGuiDockContext;
pub extern fn ImGuiDockContext_destroy(self: [*c]ImGuiDockContext) void;
pub extern fn ImGuiViewportP_ImGuiViewportP() [*c]ImGuiViewportP;
pub extern fn ImGuiViewportP_destroy(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_ClearRequestFlags(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_CalcWorkRectPos(pOut: [*c]ImVec2, self: [*c]ImGuiViewportP, inset_min: ImVec2) void;
pub extern fn ImGuiViewportP_CalcWorkRectSize(pOut: [*c]ImVec2, self: [*c]ImGuiViewportP, inset_min: ImVec2, inset_max: ImVec2) void;
pub extern fn ImGuiViewportP_UpdateWorkRect(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetMainRect(pOut: [*c]ImRect, self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetWorkRect(pOut: [*c]ImRect, self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetBuildWorkRect(pOut: [*c]ImRect, self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiWindowSettings_ImGuiWindowSettings() [*c]ImGuiWindowSettings;
pub extern fn ImGuiWindowSettings_destroy(self: [*c]ImGuiWindowSettings) void;
pub extern fn ImGuiWindowSettings_GetName(self: [*c]ImGuiWindowSettings) [*c]u8;
pub extern fn ImGuiSettingsHandler_ImGuiSettingsHandler() [*c]ImGuiSettingsHandler;
pub extern fn ImGuiSettingsHandler_destroy(self: [*c]ImGuiSettingsHandler) void;
pub extern fn ImGuiDebugAllocInfo_ImGuiDebugAllocInfo() [*c]ImGuiDebugAllocInfo;
pub extern fn ImGuiDebugAllocInfo_destroy(self: [*c]ImGuiDebugAllocInfo) void;
pub extern fn ImGuiStackLevelInfo_ImGuiStackLevelInfo() ?*ImGuiStackLevelInfo;
pub extern fn ImGuiStackLevelInfo_destroy(self: ?*ImGuiStackLevelInfo) void;
pub extern fn ImGuiIDStackTool_ImGuiIDStackTool() [*c]ImGuiIDStackTool;
pub extern fn ImGuiIDStackTool_destroy(self: [*c]ImGuiIDStackTool) void;
pub extern fn ImGuiContextHook_ImGuiContextHook() [*c]ImGuiContextHook;
pub extern fn ImGuiContextHook_destroy(self: [*c]ImGuiContextHook) void;
pub extern fn ImGuiContext_ImGuiContext(shared_font_atlas: [*c]ImFontAtlas) ?*ImGuiContext;
pub extern fn ImGuiContext_destroy(self: ?*ImGuiContext) void;
pub extern fn ImGuiWindow_ImGuiWindow(context: ?*ImGuiContext, name: [*c]const u8) ?*ImGuiWindow;
pub extern fn ImGuiWindow_destroy(self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_GetID_Str(self: ?*ImGuiWindow, str: [*c]const u8, str_end: [*c]const u8) ImGuiID;
pub extern fn ImGuiWindow_GetID_Ptr(self: ?*ImGuiWindow, ptr: ?*const anyopaque) ImGuiID;
pub extern fn ImGuiWindow_GetID_Int(self: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn ImGuiWindow_GetIDFromPos(self: ?*ImGuiWindow, p_abs: ImVec2) ImGuiID;
pub extern fn ImGuiWindow_GetIDFromRectangle(self: ?*ImGuiWindow, r_abs: ImRect) ImGuiID;
pub extern fn ImGuiWindow_Rect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_CalcFontSize(self: ?*ImGuiWindow) f32;
pub extern fn ImGuiWindow_TitleBarRect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_MenuBarRect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiTabItem_ImGuiTabItem() [*c]ImGuiTabItem;
pub extern fn ImGuiTabItem_destroy(self: [*c]ImGuiTabItem) void;
pub extern fn ImGuiTabBar_ImGuiTabBar() [*c]ImGuiTabBar;
pub extern fn ImGuiTabBar_destroy(self: [*c]ImGuiTabBar) void;
pub extern fn ImGuiTableColumn_ImGuiTableColumn() ?*ImGuiTableColumn;
pub extern fn ImGuiTableColumn_destroy(self: ?*ImGuiTableColumn) void;
pub extern fn ImGuiTableInstanceData_ImGuiTableInstanceData() [*c]ImGuiTableInstanceData;
pub extern fn ImGuiTableInstanceData_destroy(self: [*c]ImGuiTableInstanceData) void;
pub extern fn ImGuiTable_ImGuiTable() ?*ImGuiTable;
pub extern fn ImGuiTable_destroy(self: ?*ImGuiTable) void;
pub extern fn ImGuiTableTempData_ImGuiTableTempData() [*c]ImGuiTableTempData;
pub extern fn ImGuiTableTempData_destroy(self: [*c]ImGuiTableTempData) void;
pub extern fn ImGuiTableColumnSettings_ImGuiTableColumnSettings() ?*ImGuiTableColumnSettings;
pub extern fn ImGuiTableColumnSettings_destroy(self: ?*ImGuiTableColumnSettings) void;
pub extern fn ImGuiTableSettings_ImGuiTableSettings() [*c]ImGuiTableSettings;
pub extern fn ImGuiTableSettings_destroy(self: [*c]ImGuiTableSettings) void;
pub extern fn ImGuiTableSettings_GetColumnSettings(self: [*c]ImGuiTableSettings) ?*ImGuiTableColumnSettings;
pub extern fn igGetIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiIO;
pub extern fn igGetPlatformIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiPlatformIO;
pub extern fn igGetCurrentWindowRead() ?*ImGuiWindow;
pub extern fn igGetCurrentWindow() ?*ImGuiWindow;
pub extern fn igFindWindowByID(id: ImGuiID) ?*ImGuiWindow;
pub extern fn igFindWindowByName(name: [*c]const u8) ?*ImGuiWindow;
pub extern fn igUpdateWindowParentAndRootLinks(window: ?*ImGuiWindow, flags: ImGuiWindowFlags, parent_window: ?*ImGuiWindow) void;
pub extern fn igUpdateWindowSkipRefresh(window: ?*ImGuiWindow) void;
pub extern fn igCalcWindowNextAutoFitSize(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn igIsWindowChildOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow, popup_hierarchy: bool, dock_hierarchy: bool) bool;
pub extern fn igIsWindowWithinBeginStackOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow) bool;
pub extern fn igIsWindowAbove(potential_above: ?*ImGuiWindow, potential_below: ?*ImGuiWindow) bool;
pub extern fn igIsWindowNavFocusable(window: ?*ImGuiWindow) bool;
pub extern fn igSetWindowPos_WindowPtr(window: ?*ImGuiWindow, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_WindowPtr(window: ?*ImGuiWindow, size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_WindowPtr(window: ?*ImGuiWindow, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowHitTestHole(window: ?*ImGuiWindow, pos: ImVec2, size: ImVec2) void;
pub extern fn igSetWindowHiddenAndSkipItemsForCurrentFrame(window: ?*ImGuiWindow) void;
pub extern fn igSetWindowParentWindowForFocusRoute(window: ?*ImGuiWindow, parent_window: ?*ImGuiWindow) void;
pub extern fn igWindowRectAbsToRel(pOut: [*c]ImRect, window: ?*ImGuiWindow, r: ImRect) void;
pub extern fn igWindowRectRelToAbs(pOut: [*c]ImRect, window: ?*ImGuiWindow, r: ImRect) void;
pub extern fn igWindowPosAbsToRel(pOut: [*c]ImVec2, window: ?*ImGuiWindow, p: ImVec2) void;
pub extern fn igWindowPosRelToAbs(pOut: [*c]ImVec2, window: ?*ImGuiWindow, p: ImVec2) void;
pub extern fn igFocusWindow(window: ?*ImGuiWindow, flags: ImGuiFocusRequestFlags) void;
pub extern fn igFocusTopMostWindowUnderOne(under_this_window: ?*ImGuiWindow, ignore_window: ?*ImGuiWindow, filter_viewport: [*c]ImGuiViewport, flags: ImGuiFocusRequestFlags) void;
pub extern fn igBringWindowToFocusFront(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayFront(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayBack(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayBehind(window: ?*ImGuiWindow, above_window: ?*ImGuiWindow) void;
pub extern fn igFindWindowDisplayIndex(window: ?*ImGuiWindow) c_int;
pub extern fn igFindBottomMostVisibleWindowWithinBeginStack(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn igSetNextWindowRefreshPolicy(flags: ImGuiWindowRefreshFlags) void;
pub extern fn igSetCurrentFont(font: [*c]ImFont) void;
pub extern fn igGetDefaultFont() [*c]ImFont;
pub extern fn igPushPasswordFont() void;
pub extern fn igGetForegroundDrawList_WindowPtr(window: ?*ImGuiWindow) [*c]ImDrawList;
pub extern fn igAddDrawListToDrawDataEx(draw_data: [*c]ImDrawData, out_list: [*c]ImVector_ImDrawListPtr, draw_list: [*c]ImDrawList) void;
pub extern fn igInitialize() void;
pub extern fn igShutdown() void;
pub extern fn igUpdateInputEvents(trickle_fast_inputs: bool) void;
pub extern fn igUpdateHoveredWindowAndCaptureFlags() void;
pub extern fn igFindHoveredWindowEx(pos: ImVec2, find_first_and_in_any_viewport: bool, out_hovered_window: [*c]?*ImGuiWindow, out_hovered_window_under_moving_window: [*c]?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindow(window: ?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindowOrNode(window: ?*ImGuiWindow, node: ?*ImGuiDockNode, undock: bool) void;
pub extern fn igUpdateMouseMovingWindowNewFrame() void;
pub extern fn igUpdateMouseMovingWindowEndFrame() void;
pub extern fn igAddContextHook(context: ?*ImGuiContext, hook: [*c]const ImGuiContextHook) ImGuiID;
pub extern fn igRemoveContextHook(context: ?*ImGuiContext, hook_to_remove: ImGuiID) void;
pub extern fn igCallContextHooks(context: ?*ImGuiContext, @"type": ImGuiContextHookType) void;
pub extern fn igTranslateWindowsInViewport(viewport: [*c]ImGuiViewportP, old_pos: ImVec2, new_pos: ImVec2, old_size: ImVec2, new_size: ImVec2) void;
pub extern fn igScaleWindowsInViewport(viewport: [*c]ImGuiViewportP, scale: f32) void;
pub extern fn igDestroyPlatformWindow(viewport: [*c]ImGuiViewportP) void;
pub extern fn igSetWindowViewport(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP) void;
pub extern fn igSetCurrentViewport(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP) void;
pub extern fn igGetViewportPlatformMonitor(viewport: [*c]ImGuiViewport) [*c]const ImGuiPlatformMonitor;
pub extern fn igFindHoveredViewportFromPlatformWindowStack(mouse_platform_pos: ImVec2) [*c]ImGuiViewportP;
pub extern fn igMarkIniSettingsDirty_Nil() void;
pub extern fn igMarkIniSettingsDirty_WindowPtr(window: ?*ImGuiWindow) void;
pub extern fn igClearIniSettings() void;
pub extern fn igAddSettingsHandler(handler: [*c]const ImGuiSettingsHandler) void;
pub extern fn igRemoveSettingsHandler(type_name: [*c]const u8) void;
pub extern fn igFindSettingsHandler(type_name: [*c]const u8) [*c]ImGuiSettingsHandler;
pub extern fn igCreateNewWindowSettings(name: [*c]const u8) [*c]ImGuiWindowSettings;
pub extern fn igFindWindowSettingsByID(id: ImGuiID) [*c]ImGuiWindowSettings;
pub extern fn igFindWindowSettingsByWindow(window: ?*ImGuiWindow) [*c]ImGuiWindowSettings;
pub extern fn igClearWindowSettings(name: [*c]const u8) void;
pub extern fn igLocalizeRegisterEntries(entries: [*c]const ImGuiLocEntry, count: c_int) void;
pub extern fn igLocalizeGetMsg(key: ImGuiLocKey) [*c]const u8;
pub extern fn igSetScrollX_WindowPtr(window: ?*ImGuiWindow, scroll_x: f32) void;
pub extern fn igSetScrollY_WindowPtr(window: ?*ImGuiWindow, scroll_y: f32) void;
pub extern fn igSetScrollFromPosX_WindowPtr(window: ?*ImGuiWindow, local_x: f32, center_x_ratio: f32) void;
pub extern fn igSetScrollFromPosY_WindowPtr(window: ?*ImGuiWindow, local_y: f32, center_y_ratio: f32) void;
pub extern fn igScrollToItem(flags: ImGuiScrollFlags) void;
pub extern fn igScrollToRect(window: ?*ImGuiWindow, rect: ImRect, flags: ImGuiScrollFlags) void;
pub extern fn igScrollToRectEx(pOut: [*c]ImVec2, window: ?*ImGuiWindow, rect: ImRect, flags: ImGuiScrollFlags) void;
pub extern fn igScrollToBringRectIntoView(window: ?*ImGuiWindow, rect: ImRect) void;
pub extern fn igGetItemStatusFlags() ImGuiItemStatusFlags;
pub extern fn igGetItemFlags() ImGuiItemFlags;
pub extern fn igGetActiveID() ImGuiID;
pub extern fn igGetFocusID() ImGuiID;
pub extern fn igSetActiveID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn igSetFocusID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn igClearActiveID() void;
pub extern fn igGetHoveredID() ImGuiID;
pub extern fn igSetHoveredID(id: ImGuiID) void;
pub extern fn igKeepAliveID(id: ImGuiID) void;
pub extern fn igMarkItemEdited(id: ImGuiID) void;
pub extern fn igPushOverrideID(id: ImGuiID) void;
pub extern fn igGetIDWithSeed_Str(str_id_begin: [*c]const u8, str_id_end: [*c]const u8, seed: ImGuiID) ImGuiID;
pub extern fn igGetIDWithSeed_Int(n: c_int, seed: ImGuiID) ImGuiID;
pub extern fn igItemSize_Vec2(size: ImVec2, text_baseline_y: f32) void;
pub extern fn igItemSize_Rect(bb: ImRect, text_baseline_y: f32) void;
pub extern fn igItemAdd(bb: ImRect, id: ImGuiID, nav_bb: [*c]const ImRect, extra_flags: ImGuiItemFlags) bool;
pub extern fn igItemHoverable(bb: ImRect, id: ImGuiID, item_flags: ImGuiItemFlags) bool;
pub extern fn igIsWindowContentHoverable(window: ?*ImGuiWindow, flags: ImGuiHoveredFlags) bool;
pub extern fn igIsClippedEx(bb: ImRect, id: ImGuiID) bool;
pub extern fn igSetLastItemData(item_id: ImGuiID, item_flags: ImGuiItemFlags, status_flags: ImGuiItemStatusFlags, item_rect: ImRect) void;
pub extern fn igCalcItemSize(pOut: [*c]ImVec2, size: ImVec2, default_w: f32, default_h: f32) void;
pub extern fn igCalcWrapWidthForPos(pos: ImVec2, wrap_pos_x: f32) f32;
pub extern fn igPushMultiItemsWidths(components: c_int, width_full: f32) void;
pub extern fn igShrinkWidths(items: [*c]ImGuiShrinkWidthItem, count: c_int, width_excess: f32) void;
pub extern fn igGetStyleVarInfo(idx: ImGuiStyleVar) ?*const ImGuiStyleVarInfo;
pub extern fn igBeginDisabledOverrideReenable() void;
pub extern fn igEndDisabledOverrideReenable() void;
pub extern fn igLogBegin(flags: ImGuiLogFlags, auto_open_depth: c_int) void;
pub extern fn igLogToBuffer(auto_open_depth: c_int) void;
pub extern fn igLogRenderedText(ref_pos: [*c]const ImVec2, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn igLogSetNextTextDecoration(prefix: [*c]const u8, suffix: [*c]const u8) void;
pub extern fn igBeginChildEx(name: [*c]const u8, id: ImGuiID, size_arg: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupEx(id: ImGuiID, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupMenuEx(id: ImGuiID, label: [*c]const u8, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igOpenPopupEx(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn igClosePopupToLevel(remaining: c_int, restore_focus_to_window_under_popup: bool) void;
pub extern fn igClosePopupsOverWindow(ref_window: ?*ImGuiWindow, restore_focus_to_window_under_popup: bool) void;
pub extern fn igClosePopupsExceptModals() void;
pub extern fn igIsPopupOpen_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igGetPopupAllowedExtentRect(pOut: [*c]ImRect, window: ?*ImGuiWindow) void;
pub extern fn igGetTopMostPopupModal() ?*ImGuiWindow;
pub extern fn igGetTopMostAndVisiblePopupModal() ?*ImGuiWindow;
pub extern fn igFindBlockingModal(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn igFindBestWindowPosForPopup(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn igFindBestWindowPosForPopupEx(pOut: [*c]ImVec2, ref_pos: ImVec2, size: ImVec2, last_dir: [*c]ImGuiDir, r_outer: ImRect, r_avoid: ImRect, policy: ImGuiPopupPositionPolicy) void;
pub extern fn igBeginTooltipEx(tooltip_flags: ImGuiTooltipFlags, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginTooltipHidden() bool;
pub extern fn igBeginViewportSideBar(name: [*c]const u8, viewport: [*c]ImGuiViewport, dir: ImGuiDir, size: f32, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginMenuEx(label: [*c]const u8, icon: [*c]const u8, enabled: bool) bool;
pub extern fn igMenuItemEx(label: [*c]const u8, icon: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn igBeginComboPopup(popup_id: ImGuiID, bb: ImRect, flags: ImGuiComboFlags) bool;
pub extern fn igBeginComboPreview() bool;
pub extern fn igEndComboPreview() void;
pub extern fn igNavInitWindow(window: ?*ImGuiWindow, force_reinit: bool) void;
pub extern fn igNavInitRequestApplyResult() void;
pub extern fn igNavMoveRequestButNoResultYet() bool;
pub extern fn igNavMoveRequestSubmit(move_dir: ImGuiDir, clip_dir: ImGuiDir, move_flags: ImGuiNavMoveFlags, scroll_flags: ImGuiScrollFlags) void;
pub extern fn igNavMoveRequestForward(move_dir: ImGuiDir, clip_dir: ImGuiDir, move_flags: ImGuiNavMoveFlags, scroll_flags: ImGuiScrollFlags) void;
pub extern fn igNavMoveRequestResolveWithLastItem(result: [*c]ImGuiNavItemData) void;
pub extern fn igNavMoveRequestResolveWithPastTreeNode(result: [*c]ImGuiNavItemData, tree_node_data: [*c]ImGuiTreeNodeStackData) void;
pub extern fn igNavMoveRequestCancel() void;
pub extern fn igNavMoveRequestApplyResult() void;
pub extern fn igNavMoveRequestTryWrapping(window: ?*ImGuiWindow, move_flags: ImGuiNavMoveFlags) void;
pub extern fn igNavHighlightActivated(id: ImGuiID) void;
pub extern fn igNavClearPreferredPosForAxis(axis: ImGuiAxis) void;
pub extern fn igSetNavCursorVisibleAfterMove() void;
pub extern fn igNavUpdateCurrentWindowIsScrollPushableX() void;
pub extern fn igSetNavWindow(window: ?*ImGuiWindow) void;
pub extern fn igSetNavID(id: ImGuiID, nav_layer: ImGuiNavLayer, focus_scope_id: ImGuiID, rect_rel: ImRect) void;
pub extern fn igSetNavFocusScope(focus_scope_id: ImGuiID) void;
pub extern fn igFocusItem() void;
pub extern fn igActivateItemByID(id: ImGuiID) void;
pub extern fn igIsNamedKey(key: ImGuiKey) bool;
pub extern fn igIsNamedKeyOrMod(key: ImGuiKey) bool;
pub extern fn igIsLegacyKey(key: ImGuiKey) bool;
pub extern fn igIsKeyboardKey(key: ImGuiKey) bool;
pub extern fn igIsGamepadKey(key: ImGuiKey) bool;
pub extern fn igIsMouseKey(key: ImGuiKey) bool;
pub extern fn igIsAliasKey(key: ImGuiKey) bool;
pub extern fn igIsLRModKey(key: ImGuiKey) bool;
pub extern fn igFixupKeyChord(key_chord: ImGuiKeyChord) ImGuiKeyChord;
pub extern fn igConvertSingleModFlagToKey(key: ImGuiKey) ImGuiKey;
pub extern fn igGetKeyData_ContextPtr(ctx: ?*ImGuiContext, key: ImGuiKey) [*c]ImGuiKeyData;
pub extern fn igGetKeyData_Key(key: ImGuiKey) [*c]ImGuiKeyData;
pub extern fn igGetKeyChordName(key_chord: ImGuiKeyChord) [*c]const u8;
pub extern fn igMouseButtonToKey(button: ImGuiMouseButton) ImGuiKey;
pub extern fn igIsMouseDragPastThreshold(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn igGetKeyMagnitude2d(pOut: [*c]ImVec2, key_left: ImGuiKey, key_right: ImGuiKey, key_up: ImGuiKey, key_down: ImGuiKey) void;
pub extern fn igGetNavTweakPressedAmount(axis: ImGuiAxis) f32;
pub extern fn igCalcTypematicRepeatAmount(t0: f32, t1: f32, repeat_delay: f32, repeat_rate: f32) c_int;
pub extern fn igGetTypematicRepeatRate(flags: ImGuiInputFlags, repeat_delay: [*c]f32, repeat_rate: [*c]f32) void;
pub extern fn igTeleportMousePos(pos: ImVec2) void;
pub extern fn igSetActiveIdUsingAllKeyboardKeys() void;
pub extern fn igIsActiveIdUsingNavDir(dir: ImGuiDir) bool;
pub extern fn igGetKeyOwner(key: ImGuiKey) ImGuiID;
pub extern fn igSetKeyOwner(key: ImGuiKey, owner_id: ImGuiID, flags: ImGuiInputFlags) void;
pub extern fn igSetKeyOwnersForKeyChord(key: ImGuiKeyChord, owner_id: ImGuiID, flags: ImGuiInputFlags) void;
pub extern fn igSetItemKeyOwner_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags) void;
pub extern fn igTestKeyOwner(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igGetKeyOwnerData(ctx: ?*ImGuiContext, key: ImGuiKey) [*c]ImGuiKeyOwnerData;
pub extern fn igIsKeyDown_ID(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igIsKeyPressed_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsKeyReleased_ID(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igIsKeyChordPressed_InputFlags(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsMouseDown_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igIsMouseClicked_InputFlags(button: ImGuiMouseButton, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsMouseReleased_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igIsMouseDoubleClicked_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igShortcut_ID(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igSetShortcutRouting(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igTestShortcutRouting(key_chord: ImGuiKeyChord, owner_id: ImGuiID) bool;
pub extern fn igGetShortcutRoutingData(key_chord: ImGuiKeyChord) [*c]ImGuiKeyRoutingData;
pub extern fn igDockContextInitialize(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextShutdown(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextClearNodes(ctx: ?*ImGuiContext, root_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn igDockContextRebuildNodes(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextNewFrameUpdateUndocking(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextNewFrameUpdateDocking(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextEndFrame(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextGenNodeID(ctx: ?*ImGuiContext) ImGuiID;
pub extern fn igDockContextQueueDock(ctx: ?*ImGuiContext, target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload: ?*ImGuiWindow, split_dir: ImGuiDir, split_ratio: f32, split_outer: bool) void;
pub extern fn igDockContextQueueUndockWindow(ctx: ?*ImGuiContext, window: ?*ImGuiWindow) void;
pub extern fn igDockContextQueueUndockNode(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn igDockContextProcessUndockWindow(ctx: ?*ImGuiContext, window: ?*ImGuiWindow, clear_persistent_docking_ref: bool) void;
pub extern fn igDockContextProcessUndockNode(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn igDockContextCalcDropPosForDocking(target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload_window: ?*ImGuiWindow, payload_node: ?*ImGuiDockNode, split_dir: ImGuiDir, split_outer: bool, out_pos: [*c]ImVec2) bool;
pub extern fn igDockContextFindNodeByID(ctx: ?*ImGuiContext, id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockNodeWindowMenuHandler_Default(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode, tab_bar: [*c]ImGuiTabBar) void;
pub extern fn igDockNodeBeginAmendTabBar(node: ?*ImGuiDockNode) bool;
pub extern fn igDockNodeEndAmendTabBar() void;
pub extern fn igDockNodeGetRootNode(node: ?*ImGuiDockNode) ?*ImGuiDockNode;
pub extern fn igDockNodeIsInHierarchyOf(node: ?*ImGuiDockNode, parent: ?*ImGuiDockNode) bool;
pub extern fn igDockNodeGetDepth(node: ?*const ImGuiDockNode) c_int;
pub extern fn igDockNodeGetWindowMenuButtonId(node: ?*const ImGuiDockNode) ImGuiID;
pub extern fn igGetWindowDockNode() ?*ImGuiDockNode;
pub extern fn igGetWindowAlwaysWantOwnTabBar(window: ?*ImGuiWindow) bool;
pub extern fn igBeginDocked(window: ?*ImGuiWindow, p_open: [*c]bool) void;
pub extern fn igBeginDockableDragDropSource(window: ?*ImGuiWindow) void;
pub extern fn igBeginDockableDragDropTarget(window: ?*ImGuiWindow) void;
pub extern fn igSetWindowDock(window: ?*ImGuiWindow, dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn igDockBuilderDockWindow(window_name: [*c]const u8, node_id: ImGuiID) void;
pub extern fn igDockBuilderGetNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockBuilderGetCentralNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockBuilderAddNode(node_id: ImGuiID, flags: ImGuiDockNodeFlags) ImGuiID;
pub extern fn igDockBuilderRemoveNode(node_id: ImGuiID) void;
pub extern fn igDockBuilderRemoveNodeDockedWindows(node_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn igDockBuilderRemoveNodeChildNodes(node_id: ImGuiID) void;
pub extern fn igDockBuilderSetNodePos(node_id: ImGuiID, pos: ImVec2) void;
pub extern fn igDockBuilderSetNodeSize(node_id: ImGuiID, size: ImVec2) void;
pub extern fn igDockBuilderSplitNode(node_id: ImGuiID, split_dir: ImGuiDir, size_ratio_for_node_at_dir: f32, out_id_at_dir: [*c]ImGuiID, out_id_at_opposite_dir: [*c]ImGuiID) ImGuiID;
pub extern fn igDockBuilderCopyDockSpace(src_dockspace_id: ImGuiID, dst_dockspace_id: ImGuiID, in_window_remap_pairs: [*c]ImVector_const_charPtr) void;
pub extern fn igDockBuilderCopyNode(src_node_id: ImGuiID, dst_node_id: ImGuiID, out_node_remap_pairs: [*c]ImVector_ImGuiID) void;
pub extern fn igDockBuilderCopyWindowSettings(src_name: [*c]const u8, dst_name: [*c]const u8) void;
pub extern fn igDockBuilderFinish(node_id: ImGuiID) void;
pub extern fn igPushFocusScope(id: ImGuiID) void;
pub extern fn igPopFocusScope() void;
pub extern fn igGetCurrentFocusScope() ImGuiID;
pub extern fn igIsDragDropActive() bool;
pub extern fn igBeginDragDropTargetCustom(bb: ImRect, id: ImGuiID) bool;
pub extern fn igClearDragDrop() void;
pub extern fn igIsDragDropPayloadBeingAccepted() bool;
pub extern fn igRenderDragDropTargetRect(bb: ImRect, item_clip_rect: ImRect) void;
pub extern fn igGetTypingSelectRequest(flags: ImGuiTypingSelectFlags) [*c]ImGuiTypingSelectRequest;
pub extern fn igTypingSelectFindMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn igTypingSelectFindNextSingleCharMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn igTypingSelectFindBestLeadingMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque) c_int;
pub extern fn igBeginBoxSelect(scope_rect: ImRect, window: ?*ImGuiWindow, box_select_id: ImGuiID, ms_flags: ImGuiMultiSelectFlags) bool;
pub extern fn igEndBoxSelect(scope_rect: ImRect, ms_flags: ImGuiMultiSelectFlags) void;
pub extern fn igMultiSelectItemHeader(id: ImGuiID, p_selected: [*c]bool, p_button_flags: [*c]ImGuiButtonFlags) void;
pub extern fn igMultiSelectItemFooter(id: ImGuiID, p_selected: [*c]bool, p_pressed: [*c]bool) void;
pub extern fn igMultiSelectAddSetAll(ms: [*c]ImGuiMultiSelectTempData, selected: bool) void;
pub extern fn igMultiSelectAddSetRange(ms: [*c]ImGuiMultiSelectTempData, selected: bool, range_dir: c_int, first_item: ImGuiSelectionUserData, last_item: ImGuiSelectionUserData) void;
pub extern fn igGetBoxSelectState(id: ImGuiID) ?*ImGuiBoxSelectState;
pub extern fn igGetMultiSelectState(id: ImGuiID) [*c]ImGuiMultiSelectState;
pub extern fn igSetWindowClipRectBeforeSetChannel(window: ?*ImGuiWindow, clip_rect: ImRect) void;
pub extern fn igBeginColumns(str_id: [*c]const u8, count: c_int, flags: ImGuiOldColumnFlags) void;
pub extern fn igEndColumns() void;
pub extern fn igPushColumnClipRect(column_index: c_int) void;
pub extern fn igPushColumnsBackground() void;
pub extern fn igPopColumnsBackground() void;
pub extern fn igGetColumnsID(str_id: [*c]const u8, count: c_int) ImGuiID;
pub extern fn igFindOrCreateColumns(window: ?*ImGuiWindow, id: ImGuiID) [*c]ImGuiOldColumns;
pub extern fn igGetColumnOffsetFromNorm(columns: [*c]const ImGuiOldColumns, offset_norm: f32) f32;
pub extern fn igGetColumnNormFromOffset(columns: [*c]const ImGuiOldColumns, offset: f32) f32;
pub extern fn igTableOpenContextMenu(column_n: c_int) void;
pub extern fn igTableSetColumnWidth(column_n: c_int, width: f32) void;
pub extern fn igTableSetColumnSortDirection(column_n: c_int, sort_direction: ImGuiSortDirection, append_to_sort_specs: bool) void;
pub extern fn igTableGetHoveredRow() c_int;
pub extern fn igTableGetHeaderRowHeight() f32;
pub extern fn igTableGetHeaderAngledMaxLabelWidth() f32;
pub extern fn igTablePushBackgroundChannel() void;
pub extern fn igTablePopBackgroundChannel() void;
pub extern fn igTableAngledHeadersRowEx(row_id: ImGuiID, angle: f32, max_label_width: f32, data: [*c]const ImGuiTableHeaderData, data_count: c_int) void;
pub extern fn igGetCurrentTable() ?*ImGuiTable;
pub extern fn igTableFindByID(id: ImGuiID) ?*ImGuiTable;
pub extern fn igBeginTableEx(name: [*c]const u8, id: ImGuiID, columns_count: c_int, flags: ImGuiTableFlags, outer_size: ImVec2, inner_width: f32) bool;
pub extern fn igTableBeginInitMemory(table: ?*ImGuiTable, columns_count: c_int) void;
pub extern fn igTableBeginApplyRequests(table: ?*ImGuiTable) void;
pub extern fn igTableSetupDrawChannels(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateLayout(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateBorders(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateColumnsWeightFromWidth(table: ?*ImGuiTable) void;
pub extern fn igTableDrawBorders(table: ?*ImGuiTable) void;
pub extern fn igTableDrawDefaultContextMenu(table: ?*ImGuiTable, flags_for_section_to_display: ImGuiTableFlags) void;
pub extern fn igTableBeginContextMenuPopup(table: ?*ImGuiTable) bool;
pub extern fn igTableMergeDrawChannels(table: ?*ImGuiTable) void;
pub extern fn igTableGetInstanceData(table: ?*ImGuiTable, instance_no: c_int) [*c]ImGuiTableInstanceData;
pub extern fn igTableGetInstanceID(table: ?*ImGuiTable, instance_no: c_int) ImGuiID;
pub extern fn igTableSortSpecsSanitize(table: ?*ImGuiTable) void;
pub extern fn igTableSortSpecsBuild(table: ?*ImGuiTable) void;
pub extern fn igTableGetColumnNextSortDirection(column: ?*ImGuiTableColumn) ImGuiSortDirection;
pub extern fn igTableFixColumnSortDirection(table: ?*ImGuiTable, column: ?*ImGuiTableColumn) void;
pub extern fn igTableGetColumnWidthAuto(table: ?*ImGuiTable, column: ?*ImGuiTableColumn) f32;
pub extern fn igTableBeginRow(table: ?*ImGuiTable) void;
pub extern fn igTableEndRow(table: ?*ImGuiTable) void;
pub extern fn igTableBeginCell(table: ?*ImGuiTable, column_n: c_int) void;
pub extern fn igTableEndCell(table: ?*ImGuiTable) void;
pub extern fn igTableGetCellBgRect(pOut: [*c]ImRect, table: ?*const ImGuiTable, column_n: c_int) void;
pub extern fn igTableGetColumnName_TablePtr(table: ?*const ImGuiTable, column_n: c_int) [*c]const u8;
pub extern fn igTableGetColumnResizeID(table: ?*ImGuiTable, column_n: c_int, instance_no: c_int) ImGuiID;
pub extern fn igTableCalcMaxColumnWidth(table: ?*const ImGuiTable, column_n: c_int) f32;
pub extern fn igTableSetColumnWidthAutoSingle(table: ?*ImGuiTable, column_n: c_int) void;
pub extern fn igTableSetColumnWidthAutoAll(table: ?*ImGuiTable) void;
pub extern fn igTableRemove(table: ?*ImGuiTable) void;
pub extern fn igTableGcCompactTransientBuffers_TablePtr(table: ?*ImGuiTable) void;
pub extern fn igTableGcCompactTransientBuffers_TableTempDataPtr(table: [*c]ImGuiTableTempData) void;
pub extern fn igTableGcCompactSettings() void;
pub extern fn igTableLoadSettings(table: ?*ImGuiTable) void;
pub extern fn igTableSaveSettings(table: ?*ImGuiTable) void;
pub extern fn igTableResetSettings(table: ?*ImGuiTable) void;
pub extern fn igTableGetBoundSettings(table: ?*ImGuiTable) [*c]ImGuiTableSettings;
pub extern fn igTableSettingsAddSettingsHandler() void;
pub extern fn igTableSettingsCreate(id: ImGuiID, columns_count: c_int) [*c]ImGuiTableSettings;
pub extern fn igTableSettingsFindByID(id: ImGuiID) [*c]ImGuiTableSettings;
pub extern fn igGetCurrentTabBar() [*c]ImGuiTabBar;
pub extern fn igBeginTabBarEx(tab_bar: [*c]ImGuiTabBar, bb: ImRect, flags: ImGuiTabBarFlags) bool;
pub extern fn igTabBarFindTabByID(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) [*c]ImGuiTabItem;
pub extern fn igTabBarFindTabByOrder(tab_bar: [*c]ImGuiTabBar, order: c_int) [*c]ImGuiTabItem;
pub extern fn igTabBarFindMostRecentlySelectedTabForActiveWindow(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn igTabBarGetCurrentTab(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn igTabBarGetTabOrder(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) c_int;
pub extern fn igTabBarGetTabName(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) [*c]const u8;
pub extern fn igTabBarAddTab(tab_bar: [*c]ImGuiTabBar, tab_flags: ImGuiTabItemFlags, window: ?*ImGuiWindow) void;
pub extern fn igTabBarRemoveTab(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) void;
pub extern fn igTabBarCloseTab(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn igTabBarQueueFocus_TabItemPtr(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn igTabBarQueueFocus_Str(tab_bar: [*c]ImGuiTabBar, tab_name: [*c]const u8) void;
pub extern fn igTabBarQueueReorder(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem, offset: c_int) void;
pub extern fn igTabBarQueueReorderFromMousePos(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem, mouse_pos: ImVec2) void;
pub extern fn igTabBarProcessReorder(tab_bar: [*c]ImGuiTabBar) bool;
pub extern fn igTabItemEx(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags, docked_window: ?*ImGuiWindow) bool;
pub extern fn igTabItemSpacing(str_id: [*c]const u8, flags: ImGuiTabItemFlags, width: f32) void;
pub extern fn igTabItemCalcSize_Str(pOut: [*c]ImVec2, label: [*c]const u8, has_close_button_or_unsaved_marker: bool) void;
pub extern fn igTabItemCalcSize_WindowPtr(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn igTabItemBackground(draw_list: [*c]ImDrawList, bb: ImRect, flags: ImGuiTabItemFlags, col: ImU32) void;
pub extern fn igTabItemLabelAndCloseButton(draw_list: [*c]ImDrawList, bb: ImRect, flags: ImGuiTabItemFlags, frame_padding: ImVec2, label: [*c]const u8, tab_id: ImGuiID, close_button_id: ImGuiID, is_contents_visible: bool, out_just_closed: [*c]bool, out_text_clipped: [*c]bool) void;
pub extern fn igRenderText(pos: ImVec2, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_hash: bool) void;
pub extern fn igRenderTextWrapped(pos: ImVec2, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) void;
pub extern fn igRenderTextClipped(pos_min: ImVec2, pos_max: ImVec2, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2, @"align": ImVec2, clip_rect: [*c]const ImRect) void;
pub extern fn igRenderTextClippedEx(draw_list: [*c]ImDrawList, pos_min: ImVec2, pos_max: ImVec2, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2, @"align": ImVec2, clip_rect: [*c]const ImRect) void;
pub extern fn igRenderTextEllipsis(draw_list: [*c]ImDrawList, pos_min: ImVec2, pos_max: ImVec2, clip_max_x: f32, ellipsis_max_x: f32, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2) void;
pub extern fn igRenderFrame(p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, borders: bool, rounding: f32) void;
pub extern fn igRenderFrameBorder(p_min: ImVec2, p_max: ImVec2, rounding: f32) void;
pub extern fn igRenderColorRectWithAlphaCheckerboard(draw_list: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, grid_step: f32, grid_off: ImVec2, rounding: f32, flags: ImDrawFlags) void;
pub extern fn igRenderNavCursor(bb: ImRect, id: ImGuiID, flags: ImGuiNavRenderCursorFlags) void;
pub extern fn igFindRenderedTextEnd(text: [*c]const u8, text_end: [*c]const u8) [*c]const u8;
pub extern fn igRenderMouseCursor(pos: ImVec2, scale: f32, mouse_cursor: ImGuiMouseCursor, col_fill: ImU32, col_border: ImU32, col_shadow: ImU32) void;
pub extern fn igRenderArrow(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32, dir: ImGuiDir, scale: f32) void;
pub extern fn igRenderBullet(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32) void;
pub extern fn igRenderCheckMark(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32, sz: f32) void;
pub extern fn igRenderArrowPointingAt(draw_list: [*c]ImDrawList, pos: ImVec2, half_sz: ImVec2, direction: ImGuiDir, col: ImU32) void;
pub extern fn igRenderArrowDockMenu(draw_list: [*c]ImDrawList, p_min: ImVec2, sz: f32, col: ImU32) void;
pub extern fn igRenderRectFilledRangeH(draw_list: [*c]ImDrawList, rect: ImRect, col: ImU32, x_start_norm: f32, x_end_norm: f32, rounding: f32) void;
pub extern fn igRenderRectFilledWithHole(draw_list: [*c]ImDrawList, outer: ImRect, inner: ImRect, col: ImU32, rounding: f32) void;
pub extern fn igCalcRoundingFlagsForRectInRect(r_in: ImRect, r_outer: ImRect, threshold: f32) ImDrawFlags;
pub extern fn igTextEx(text: [*c]const u8, text_end: [*c]const u8, flags: ImGuiTextFlags) void;
pub extern fn igButtonEx(label: [*c]const u8, size_arg: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igArrowButtonEx(str_id: [*c]const u8, dir: ImGuiDir, size_arg: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igImageButtonEx(id: ImGuiID, user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4, flags: ImGuiButtonFlags) bool;
pub extern fn igSeparatorEx(flags: ImGuiSeparatorFlags, thickness: f32) void;
pub extern fn igSeparatorTextEx(id: ImGuiID, label: [*c]const u8, label_end: [*c]const u8, extra_width: f32) void;
pub extern fn igCheckboxFlags_S64Ptr(label: [*c]const u8, flags: [*c]ImS64, flags_value: ImS64) bool;
pub extern fn igCheckboxFlags_U64Ptr(label: [*c]const u8, flags: [*c]ImU64, flags_value: ImU64) bool;
pub extern fn igCloseButton(id: ImGuiID, pos: ImVec2) bool;
pub extern fn igCollapseButton(id: ImGuiID, pos: ImVec2, dock_node: ?*ImGuiDockNode) bool;
pub extern fn igScrollbar(axis: ImGuiAxis) void;
pub extern fn igScrollbarEx(bb: ImRect, id: ImGuiID, axis: ImGuiAxis, p_scroll_v: [*c]ImS64, avail_v: ImS64, contents_v: ImS64, draw_rounding_flags: ImDrawFlags) bool;
pub extern fn igGetWindowScrollbarRect(pOut: [*c]ImRect, window: ?*ImGuiWindow, axis: ImGuiAxis) void;
pub extern fn igGetWindowScrollbarID(window: ?*ImGuiWindow, axis: ImGuiAxis) ImGuiID;
pub extern fn igGetWindowResizeCornerID(window: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn igGetWindowResizeBorderID(window: ?*ImGuiWindow, dir: ImGuiDir) ImGuiID;
pub extern fn igButtonBehavior(bb: ImRect, id: ImGuiID, out_hovered: [*c]bool, out_held: [*c]bool, flags: ImGuiButtonFlags) bool;
pub extern fn igDragBehavior(id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderBehavior(bb: ImRect, id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags, out_grab_bb: [*c]ImRect) bool;
pub extern fn igSplitterBehavior(bb: ImRect, id: ImGuiID, axis: ImGuiAxis, size1: [*c]f32, size2: [*c]f32, min_size1: f32, min_size2: f32, hover_extend: f32, hover_visibility_delay: f32, bg_col: ImU32) bool;
pub extern fn igTreeNodeBehavior(id: ImGuiID, flags: ImGuiTreeNodeFlags, label: [*c]const u8, label_end: [*c]const u8) bool;
pub extern fn igTreePushOverrideID(id: ImGuiID) void;
pub extern fn igTreeNodeGetOpen(storage_id: ImGuiID) bool;
pub extern fn igTreeNodeSetOpen(storage_id: ImGuiID, open: bool) void;
pub extern fn igTreeNodeUpdateNextOpen(storage_id: ImGuiID, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igDataTypeGetInfo(data_type: ImGuiDataType) [*c]const ImGuiDataTypeInfo;
pub extern fn igDataTypeFormatString(buf: [*c]u8, buf_size: c_int, data_type: ImGuiDataType, p_data: ?*const anyopaque, format: [*c]const u8) c_int;
pub extern fn igDataTypeApplyOp(data_type: ImGuiDataType, op: c_int, output: ?*anyopaque, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) void;
pub extern fn igDataTypeApplyFromText(buf: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_data_when_empty: ?*anyopaque) bool;
pub extern fn igDataTypeCompare(data_type: ImGuiDataType, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) c_int;
pub extern fn igDataTypeClamp(data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque) bool;
pub extern fn igDataTypeIsZero(data_type: ImGuiDataType, p_data: ?*const anyopaque) bool;
pub extern fn igInputTextEx(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: c_int, size_arg: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextDeactivateHook(id: ImGuiID) void;
pub extern fn igTempInputText(bb: ImRect, id: ImGuiID, label: [*c]const u8, buf: [*c]u8, buf_size: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igTempInputScalar(bb: ImRect, id: ImGuiID, label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_clamp_min: ?*const anyopaque, p_clamp_max: ?*const anyopaque) bool;
pub extern fn igTempInputIsActive(id: ImGuiID) bool;
pub extern fn igGetInputTextState(id: ImGuiID) [*c]ImGuiInputTextState;
pub extern fn igSetNextItemRefVal(data_type: ImGuiDataType, p_data: ?*anyopaque) void;
pub extern fn igIsItemActiveAsInputText() bool;
pub extern fn igColorTooltip(text: [*c]const u8, col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorEditOptionsPopup(col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorPickerOptionsPopup(ref_col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igPlotEx(plot_type: ImGuiPlotType, label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, size_arg: ImVec2) c_int;
pub extern fn igShadeVertsLinearColorGradientKeepAlpha(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, gradient_p0: ImVec2, gradient_p1: ImVec2, col0: ImU32, col1: ImU32) void;
pub extern fn igShadeVertsLinearUV(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, clamp: bool) void;
pub extern fn igShadeVertsTransformPos(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, pivot_in: ImVec2, cos_a: f32, sin_a: f32, pivot_out: ImVec2) void;
pub extern fn igGcCompactTransientMiscBuffers() void;
pub extern fn igGcCompactTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn igGcAwakeTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn igErrorLog(msg: [*c]const u8) bool;
pub extern fn igErrorRecoveryStoreState(state_out: [*c]ImGuiErrorRecoveryState) void;
pub extern fn igErrorRecoveryTryToRecoverState(state_in: [*c]const ImGuiErrorRecoveryState) void;
pub extern fn igErrorRecoveryTryToRecoverWindowState(state_in: [*c]const ImGuiErrorRecoveryState) void;
pub extern fn igErrorCheckUsingSetCursorPosToExtendParentBoundaries() void;
pub extern fn igErrorCheckEndFrameFinalizeErrorTooltip() void;
pub extern fn igBeginErrorTooltip() bool;
pub extern fn igEndErrorTooltip() void;
pub extern fn igDebugAllocHook(info: [*c]ImGuiDebugAllocInfo, frame_count: c_int, ptr: ?*anyopaque, size: usize) void;
pub extern fn igDebugDrawCursorPos(col: ImU32) void;
pub extern fn igDebugDrawLineExtents(col: ImU32) void;
pub extern fn igDebugDrawItemRect(col: ImU32) void;
pub extern fn igDebugTextUnformattedWithLocateItem(line_begin: [*c]const u8, line_end: [*c]const u8) void;
pub extern fn igDebugLocateItem(target_id: ImGuiID) void;
pub extern fn igDebugLocateItemOnHover(target_id: ImGuiID) void;
pub extern fn igDebugLocateItemResolveWithLastItem() void;
pub extern fn igDebugBreakClearData() void;
pub extern fn igDebugBreakButton(label: [*c]const u8, description_of_location: [*c]const u8) bool;
pub extern fn igDebugBreakButtonTooltip(keyboard_only: bool, description_of_location: [*c]const u8) void;
pub extern fn igShowFontAtlas(atlas: [*c]ImFontAtlas) void;
pub extern fn igDebugHookIdInfo(id: ImGuiID, data_type: ImGuiDataType, data_id: ?*const anyopaque, data_id_end: ?*const anyopaque) void;
pub extern fn igDebugNodeColumns(columns: [*c]ImGuiOldColumns) void;
pub extern fn igDebugNodeDockNode(node: ?*ImGuiDockNode, label: [*c]const u8) void;
pub extern fn igDebugNodeDrawList(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP, draw_list: [*c]const ImDrawList, label: [*c]const u8) void;
pub extern fn igDebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list: [*c]ImDrawList, draw_list: [*c]const ImDrawList, draw_cmd: [*c]const ImDrawCmd, show_mesh: bool, show_aabb: bool) void;
pub extern fn igDebugNodeFont(font: [*c]ImFont) void;
pub extern fn igDebugNodeFontGlyph(font: [*c]ImFont, glyph: ?*const ImFontGlyph) void;
pub extern fn igDebugNodeStorage(storage: [*c]ImGuiStorage, label: [*c]const u8) void;
pub extern fn igDebugNodeTabBar(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8) void;
pub extern fn igDebugNodeTable(table: ?*ImGuiTable) void;
pub extern fn igDebugNodeTableSettings(settings: [*c]ImGuiTableSettings) void;
pub extern fn igDebugNodeInputTextState(state: [*c]ImGuiInputTextState) void;
pub extern fn igDebugNodeTypingSelectState(state: [*c]ImGuiTypingSelectState) void;
pub extern fn igDebugNodeMultiSelectState(state: [*c]ImGuiMultiSelectState) void;
pub extern fn igDebugNodeWindow(window: ?*ImGuiWindow, label: [*c]const u8) void;
pub extern fn igDebugNodeWindowSettings(settings: [*c]ImGuiWindowSettings) void;
pub extern fn igDebugNodeWindowsList(windows: [*c]ImVector_ImGuiWindowPtr, label: [*c]const u8) void;
pub extern fn igDebugNodeWindowsListByBeginStackParent(windows: [*c]?*ImGuiWindow, windows_size: c_int, parent_in_begin_stack: ?*ImGuiWindow) void;
pub extern fn igDebugNodeViewport(viewport: [*c]ImGuiViewportP) void;
pub extern fn igDebugNodePlatformMonitor(monitor: [*c]ImGuiPlatformMonitor, label: [*c]const u8, idx: c_int) void;
pub extern fn igDebugRenderKeyboardPreview(draw_list: [*c]ImDrawList) void;
pub extern fn igDebugRenderViewportThumbnail(draw_list: [*c]ImDrawList, viewport: [*c]ImGuiViewportP, bb: ImRect) void;
pub extern fn igImFontAtlasGetBuilderForStbTruetype() [*c]const ImFontBuilderIO;
pub extern fn igImFontAtlasUpdateSourcesPointers(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildInit(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildSetupFont(atlas: [*c]ImFontAtlas, font: [*c]ImFont, src: [*c]ImFontConfig, ascent: f32, descent: f32) void;
pub extern fn igImFontAtlasBuildPackCustomRects(atlas: [*c]ImFontAtlas, stbrp_context_opaque: ?*anyopaque) void;
pub extern fn igImFontAtlasBuildFinish(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildRender8bppRectFromString(atlas: [*c]ImFontAtlas, x: c_int, y: c_int, w: c_int, h: c_int, in_str: [*c]const u8, in_marker_char: u8, in_marker_pixel_value: u8) void;
pub extern fn igImFontAtlasBuildRender32bppRectFromString(atlas: [*c]ImFontAtlas, x: c_int, y: c_int, w: c_int, h: c_int, in_str: [*c]const u8, in_marker_char: u8, in_marker_pixel_value: c_uint) void;
pub extern fn igImFontAtlasBuildMultiplyCalcLookupTable(out_table: [*c]u8, in_multiply_factor: f32) void;
pub extern fn igImFontAtlasBuildMultiplyRectAlpha8(table: [*c]const u8, pixels: [*c]u8, x: c_int, y: c_int, w: c_int, h: c_int, stride: c_int) void;
pub extern fn igImFontAtlasBuildGetOversampleFactors(src: [*c]const ImFontConfig, out_oversample_h: [*c]c_int, out_oversample_v: [*c]c_int) void;
pub extern fn igImFontAtlasGetMouseCursorTexData(atlas: [*c]ImFontAtlas, cursor_type: ImGuiMouseCursor, out_offset: [*c]ImVec2, out_size: [*c]ImVec2, out_uv_border: [*c]ImVec2, out_uv_fill: [*c]ImVec2) bool;
pub extern fn igLogText(fmt: [*c]const u8, ...) void;
pub extern fn ImGuiTextBuffer_appendf(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, ...) void;
pub extern fn igGET_FLT_MAX() f32;
pub extern fn igGET_FLT_MIN() f32;
pub extern fn ImVector_ImWchar_create() [*c]ImVector_ImWchar;
pub extern fn ImVector_ImWchar_destroy(self: [*c]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_Init(p: [*c]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_UnInit(p: [*c]ImVector_ImWchar) void;
pub extern fn ImGuiPlatformIO_Set_Platform_GetWindowPos(platform_io: [*c]ImGuiPlatformIO, user_callback: ?*const fn ([*c]ImGuiViewport, [*c]ImVec2) callconv(.c) void) void;
pub extern fn ImGuiPlatformIO_Set_Platform_GetWindowSize(platform_io: [*c]ImGuiPlatformIO, user_callback: ?*const fn ([*c]ImGuiViewport, [*c]ImVec2) callconv(.c) void) void;
pub const CIMGUI_INCLUDED = "";
pub const IM_UNICODE_CODEPOINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex);
pub const IMGUI_HAS_DOCK = @as(c_int, 1);
pub const ImDrawCallback_ResetRenderState = @import("std").zig.c_translation.cast(ImDrawCallback, -@as(c_int, 8));

// === Extra functions: eliminated "ig" prefix
pub extern fn createContext(shared_font_atlas: [*c]ImFontAtlas) ?*ImGuiContext;
pub extern fn destroyContext(ctx: ?*ImGuiContext) void;
pub extern fn getCurrentContext() ?*ImGuiContext;
pub extern fn setCurrentContext(ctx: ?*ImGuiContext) void;
pub extern fn getIO_Nil() [*c]ImGuiIO;
pub extern fn getPlatformIO_Nil() [*c]ImGuiPlatformIO;
pub extern fn getStyle() [*c]ImGuiStyle;
pub extern fn newFrame() void;
pub extern fn endFrame() void;
pub extern fn render() void;
pub extern fn getDrawData() [*c]ImDrawData;
pub extern fn showDemoWindow(p_open: [*c]bool) void;
pub extern fn showMetricsWindow(p_open: [*c]bool) void;
pub extern fn showDebugLogWindow(p_open: [*c]bool) void;
pub extern fn showIDStackToolWindow(p_open: [*c]bool) void;
pub extern fn showAboutWindow(p_open: [*c]bool) void;
pub extern fn showStyleEditor(ref: [*c]ImGuiStyle) void;
pub extern fn showStyleSelector(label: [*c]const u8) bool;
pub extern fn showFontSelector(label: [*c]const u8) void;
pub extern fn showUserGuide() void;
pub extern fn getVersion() [*c]const u8;
pub extern fn styleColorsDark(dst: [*c]ImGuiStyle) void;
pub extern fn styleColorsLight(dst: [*c]ImGuiStyle) void;
pub extern fn styleColorsClassic(dst: [*c]ImGuiStyle) void;
pub extern fn begin(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn end() void;
pub extern fn beginChild_Str(str_id: [*c]const u8, size: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn beginChild_ID(id: ImGuiID, size: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn endChild() void;
pub extern fn isWindowAppearing() bool;
pub extern fn isWindowCollapsed() bool;
pub extern fn isWindowFocused(flags: ImGuiFocusedFlags) bool;
pub extern fn isWindowHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn getWindowDrawList() [*c]ImDrawList;
pub extern fn getWindowDpiScale() f32;
pub extern fn getWindowPos(pOut: [*c]ImVec2) void;
pub extern fn getWindowSize(pOut: [*c]ImVec2) void;
pub extern fn getWindowWidth() f32;
pub extern fn getWindowHeight() f32;
pub extern fn getWindowViewport() [*c]ImGuiViewport;
pub extern fn setNextWindowPos(pos: ImVec2, cond: ImGuiCond, pivot: ImVec2) void;
pub extern fn setNextWindowSize(size: ImVec2, cond: ImGuiCond) void;
pub extern fn setNextWindowSizeConstraints(size_min: ImVec2, size_max: ImVec2, custom_callback: ImGuiSizeCallback, custom_callback_data: ?*anyopaque) void;
pub extern fn setNextWindowContentSize(size: ImVec2) void;
pub extern fn setNextWindowCollapsed(collapsed: bool, cond: ImGuiCond) void;
pub extern fn setNextWindowFocus() void;
pub extern fn setNextWindowScroll(scroll: ImVec2) void;
pub extern fn setNextWindowBgAlpha(alpha: f32) void;
pub extern fn setNextWindowViewport(viewport_id: ImGuiID) void;
pub extern fn setWindowPos_Vec2(pos: ImVec2, cond: ImGuiCond) void;
pub extern fn setWindowSize_Vec2(size: ImVec2, cond: ImGuiCond) void;
pub extern fn setWindowCollapsed_Bool(collapsed: bool, cond: ImGuiCond) void;
pub extern fn setWindowFocus_Nil() void;
pub extern fn setWindowFontScale(scale: f32) void;
pub extern fn setWindowPos_Str(name: [*c]const u8, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn setWindowSize_Str(name: [*c]const u8, size: ImVec2, cond: ImGuiCond) void;
pub extern fn setWindowCollapsed_Str(name: [*c]const u8, collapsed: bool, cond: ImGuiCond) void;
pub extern fn setWindowFocus_Str(name: [*c]const u8) void;
pub extern fn getScrollX() f32;
pub extern fn getScrollY() f32;
pub extern fn setScrollX_Float(scroll_x: f32) void;
pub extern fn setScrollY_Float(scroll_y: f32) void;
pub extern fn getScrollMaxX() f32;
pub extern fn getScrollMaxY() f32;
pub extern fn setScrollHereX(center_x_ratio: f32) void;
pub extern fn setScrollHereY(center_y_ratio: f32) void;
pub extern fn setScrollFromPosX_Float(local_x: f32, center_x_ratio: f32) void;
pub extern fn setScrollFromPosY_Float(local_y: f32, center_y_ratio: f32) void;
pub extern fn pushFont(font: [*c]ImFont) void;
pub extern fn popFont() void;
pub extern fn pushStyleColor_U32(idx: ImGuiCol, col: ImU32) void;
pub extern fn pushStyleColor_Vec4(idx: ImGuiCol, col: ImVec4) void;
pub extern fn popStyleColor(count: c_int) void;
pub extern fn pushStyleVar_Float(idx: ImGuiStyleVar, val: f32) void;
pub extern fn pushStyleVar_Vec2(idx: ImGuiStyleVar, val: ImVec2) void;
pub extern fn pushStyleVarX(idx: ImGuiStyleVar, val_x: f32) void;
pub extern fn pushStyleVarY(idx: ImGuiStyleVar, val_y: f32) void;
pub extern fn popStyleVar(count: c_int) void;
pub extern fn pushItemFlag(option: ImGuiItemFlags, enabled: bool) void;
pub extern fn popItemFlag() void;
pub extern fn pushItemWidth(item_width: f32) void;
pub extern fn popItemWidth() void;
pub extern fn setNextItemWidth(item_width: f32) void;
pub extern fn calcItemWidth() f32;
pub extern fn pushTextWrapPos(wrap_local_pos_x: f32) void;
pub extern fn popTextWrapPos() void;
pub extern fn getFont() [*c]ImFont;
pub extern fn getFontSize() f32;
pub extern fn getFontTexUvWhitePixel(pOut: [*c]ImVec2) void;
pub extern fn getColorU32_Col(idx: ImGuiCol, alpha_mul: f32) ImU32;
pub extern fn getColorU32_Vec4(col: ImVec4) ImU32;
pub extern fn getColorU32_U32(col: ImU32, alpha_mul: f32) ImU32;
pub extern fn getStyleColorVec4(idx: ImGuiCol) [*c]const ImVec4;
pub extern fn getCursorScreenPos(pOut: [*c]ImVec2) void;
pub extern fn setCursorScreenPos(pos: ImVec2) void;
pub extern fn getContentRegionAvail(pOut: [*c]ImVec2) void;
pub extern fn getCursorPos(pOut: [*c]ImVec2) void;
pub extern fn getCursorPosX() f32;
pub extern fn getCursorPosY() f32;
pub extern fn setCursorPos(local_pos: ImVec2) void;
pub extern fn setCursorPosX(local_x: f32) void;
pub extern fn setCursorPosY(local_y: f32) void;
pub extern fn getCursorStartPos(pOut: [*c]ImVec2) void;
pub extern fn separator() void;
pub extern fn sameLine(offset_from_start_x: f32, spacing: f32) void;
pub extern fn newLine() void;
pub extern fn spacing() void;
pub extern fn dummy(size: ImVec2) void;
pub extern fn indent(indent_w: f32) void;
pub extern fn unindent(indent_w: f32) void;
pub extern fn beginGroup() void;
pub extern fn endGroup() void;
pub extern fn alignTextToFramePadding() void;
pub extern fn getTextLineHeight() f32;
pub extern fn getTextLineHeightWithSpacing() f32;
pub extern fn getFrameHeight() f32;
pub extern fn getFrameHeightWithSpacing() f32;
pub extern fn pushID_Str(str_id: [*c]const u8) void;
pub extern fn pushID_StrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) void;
pub extern fn pushID_Ptr(ptr_id: ?*const anyopaque) void;
pub extern fn pushID_Int(int_id: c_int) void;
pub extern fn popID() void;
pub extern fn getID_Str(str_id: [*c]const u8) ImGuiID;
pub extern fn getID_StrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) ImGuiID;
pub extern fn getID_Ptr(ptr_id: ?*const anyopaque) ImGuiID;
pub extern fn getID_Int(int_id: c_int) ImGuiID;
pub extern fn textUnformatted(text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn text(fmt: [*c]const u8, ...) void;
pub extern fn textV(fmt: [*c]const u8, args: va_list) void;
pub extern fn textColored(col: ImVec4, fmt: [*c]const u8, ...) void;
pub extern fn textColoredV(col: ImVec4, fmt: [*c]const u8, args: va_list) void;
pub extern fn textDisabled(fmt: [*c]const u8, ...) void;
pub extern fn textDisabledV(fmt: [*c]const u8, args: va_list) void;
pub extern fn textWrapped(fmt: [*c]const u8, ...) void;
pub extern fn textWrappedV(fmt: [*c]const u8, args: va_list) void;
pub extern fn labelText(label: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn labelTextV(label: [*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn bulletText(fmt: [*c]const u8, ...) void;
pub extern fn bulletTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn separatorText(label: [*c]const u8) void;
pub extern fn button(label: [*c]const u8, size: ImVec2) bool;
pub extern fn smallButton(label: [*c]const u8) bool;
pub extern fn invisibleButton(str_id: [*c]const u8, size: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn arrowButton(str_id: [*c]const u8, dir: ImGuiDir) bool;
pub extern fn checkbox(label: [*c]const u8, v: [*c]bool) bool;
pub extern fn checkboxFlags_IntPtr(label: [*c]const u8, flags: [*c]c_int, flags_value: c_int) bool;
pub extern fn checkboxFlags_UintPtr(label: [*c]const u8, flags: [*c]c_uint, flags_value: c_uint) bool;
pub extern fn radioButton_Bool(label: [*c]const u8, active: bool) bool;
pub extern fn radioButton_IntPtr(label: [*c]const u8, v: [*c]c_int, v_button: c_int) bool;
pub extern fn progressBar(fraction: f32, size_arg: ImVec2, overlay: [*c]const u8) void;
pub extern fn bullet() void;
pub extern fn textLink(label: [*c]const u8) bool;
pub extern fn textLinkOpenURL(label: [*c]const u8, url: [*c]const u8) void;
pub extern fn image(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2) void;
pub extern fn imageWithBg(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) void;
pub extern fn imageButton(str_id: [*c]const u8, user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) bool;
pub extern fn beginCombo(label: [*c]const u8, preview_value: [*c]const u8, flags: ImGuiComboFlags) bool;
pub extern fn endCombo() void;
pub extern fn combo_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn combo_Str(label: [*c]const u8, current_item: [*c]c_int, items_separated_by_zeros: [*c]const u8, popup_max_height_in_items: c_int) bool;
pub extern fn combo_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn dragFloat(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragFloat2(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragFloat3(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragFloat4(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragFloatRange2(label: [*c]const u8, v_current_min: [*c]f32, v_current_max: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragInt(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragInt2(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragInt3(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragInt4(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragIntRange2(label: [*c]const u8, v_current_min: [*c]c_int, v_current_max: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn dragScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderFloat(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderFloat2(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderFloat3(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderFloat4(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderAngle(label: [*c]const u8, v_rad: [*c]f32, v_degrees_min: f32, v_degrees_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderInt(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderInt2(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderInt3(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderInt4(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn vSliderFloat(label: [*c]const u8, size: ImVec2, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn vSliderInt(label: [*c]const u8, size: ImVec2, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn vSliderScalar(label: [*c]const u8, size: ImVec2, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn inputText(label: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn inputTextMultiline(label: [*c]const u8, buf: [*c]u8, buf_size: usize, size: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn inputTextWithHint(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn inputFloat(label: [*c]const u8, v: [*c]f32, step: f32, step_fast: f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn inputFloat2(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn inputFloat3(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn inputFloat4(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn inputInt(label: [*c]const u8, v: [*c]c_int, step: c_int, step_fast: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn inputInt2(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn inputInt3(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn inputInt4(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn inputDouble(label: [*c]const u8, v: [*c]f64, step: f64, step_fast: f64, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn inputScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn inputScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn colorEdit3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn colorEdit4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn colorPicker3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn colorPicker4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags, ref_col: [*c]const f32) bool;
pub extern fn colorButton(desc_id: [*c]const u8, col: ImVec4, flags: ImGuiColorEditFlags, size: ImVec2) bool;
pub extern fn setColorEditOptions(flags: ImGuiColorEditFlags) void;
pub extern fn treeNode_Str(label: [*c]const u8) bool;
pub extern fn treeNode_StrStr(str_id: [*c]const u8, fmt: [*c]const u8, ...) bool;
pub extern fn treeNode_Ptr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, ...) bool;
pub extern fn treeNodeV_Str(str_id: [*c]const u8, fmt: [*c]const u8, args: va_list) bool;
pub extern fn treeNodeV_Ptr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, args: va_list) bool;
pub extern fn treeNodeEx_Str(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn treeNodeEx_StrStr(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn treeNodeEx_Ptr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn treeNodeExV_Str(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn treeNodeExV_Ptr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn treePush_Str(str_id: [*c]const u8) void;
pub extern fn treePush_Ptr(ptr_id: ?*const anyopaque) void;
pub extern fn treePop() void;
pub extern fn getTreeNodeToLabelSpacing() f32;
pub extern fn collapsingHeader_TreeNodeFlags(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn collapsingHeader_BoolPtr(label: [*c]const u8, p_visible: [*c]bool, flags: ImGuiTreeNodeFlags) bool;
pub extern fn setNextItemOpen(is_open: bool, cond: ImGuiCond) void;
pub extern fn setNextItemStorageID(storage_id: ImGuiID) void;
pub extern fn selectable_Bool(label: [*c]const u8, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn selectable_BoolPtr(label: [*c]const u8, p_selected: [*c]bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn beginMultiSelect(flags: ImGuiMultiSelectFlags, selection_size: c_int, items_count: c_int) [*c]ImGuiMultiSelectIO;
pub extern fn endMultiSelect() [*c]ImGuiMultiSelectIO;
pub extern fn setNextItemSelectionUserData(selection_user_data: ImGuiSelectionUserData) void;
pub extern fn isItemToggledSelection() bool;
pub extern fn beginListBox(label: [*c]const u8, size: ImVec2) bool;
pub extern fn endListBox() void;
pub extern fn listBox_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn listBox_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub extern fn plotLines_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn plotLines_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn plotHistogram_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn plotHistogram_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn value_Bool(prefix: [*c]const u8, b: bool) void;
pub extern fn value_Int(prefix: [*c]const u8, v: c_int) void;
pub extern fn value_Uint(prefix: [*c]const u8, v: c_uint) void;
pub extern fn value_Float(prefix: [*c]const u8, v: f32, float_format: [*c]const u8) void;
pub extern fn beginMenuBar() bool;
pub extern fn endMenuBar() void;
pub extern fn beginMainMenuBar() bool;
pub extern fn endMainMenuBar() void;
pub extern fn beginMenu(label: [*c]const u8, enabled: bool) bool;
pub extern fn endMenu() void;
pub extern fn menuItem_Bool(label: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn menuItem_BoolPtr(label: [*c]const u8, shortcut: [*c]const u8, p_selected: [*c]bool, enabled: bool) bool;
pub extern fn beginTooltip() bool;
pub extern fn endTooltip() void;
pub extern fn setTooltip(fmt: [*c]const u8, ...) void;
pub extern fn setTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn beginItemTooltip() bool;
pub extern fn setItemTooltip(fmt: [*c]const u8, ...) void;
pub extern fn setItemTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn beginPopup(str_id: [*c]const u8, flags: ImGuiWindowFlags) bool;
pub extern fn beginPopupModal(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn endPopup() void;
pub extern fn openPopup_Str(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn openPopup_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn openPopupOnItemClick(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn closeCurrentPopup() void;
pub extern fn beginPopupContextItem(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn beginPopupContextWindow(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn beginPopupContextVoid(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn isPopupOpen_Str(str_id: [*c]const u8, flags: ImGuiPopupFlags) bool;
pub extern fn beginTable(str_id: [*c]const u8, columns: c_int, flags: ImGuiTableFlags, outer_size: ImVec2, inner_width: f32) bool;
pub extern fn endTable() void;
pub extern fn tableNextRow(row_flags: ImGuiTableRowFlags, min_row_height: f32) void;
pub extern fn tableNextColumn() bool;
pub extern fn tableSetColumnIndex(column_n: c_int) bool;
pub extern fn tableSetupColumn(label: [*c]const u8, flags: ImGuiTableColumnFlags, init_width_or_weight: f32, user_id: ImGuiID) void;
pub extern fn tableSetupScrollFreeze(cols: c_int, rows: c_int) void;
pub extern fn tableHeader(label: [*c]const u8) void;
pub extern fn tableHeadersRow() void;
pub extern fn tableAngledHeadersRow() void;
pub extern fn tableGetSortSpecs() [*c]ImGuiTableSortSpecs;
pub extern fn tableGetColumnCount() c_int;
pub extern fn tableGetColumnIndex() c_int;
pub extern fn tableGetRowIndex() c_int;
pub extern fn tableGetColumnName_Int(column_n: c_int) [*c]const u8;
pub extern fn tableGetColumnFlags(column_n: c_int) ImGuiTableColumnFlags;
pub extern fn tableSetColumnEnabled(column_n: c_int, v: bool) void;
pub extern fn tableGetHoveredColumn() c_int;
pub extern fn tableSetBgColor(target: ImGuiTableBgTarget, color: ImU32, column_n: c_int) void;
pub extern fn columns(count: c_int, id: [*c]const u8, borders: bool) void;
pub extern fn nextColumn() void;
pub extern fn getColumnIndex() c_int;
pub extern fn getColumnWidth(column_index: c_int) f32;
pub extern fn setColumnWidth(column_index: c_int, width: f32) void;
pub extern fn getColumnOffset(column_index: c_int) f32;
pub extern fn setColumnOffset(column_index: c_int, offset_x: f32) void;
pub extern fn getColumnsCount() c_int;
pub extern fn beginTabBar(str_id: [*c]const u8, flags: ImGuiTabBarFlags) bool;
pub extern fn endTabBar() void;
pub extern fn beginTabItem(label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags) bool;
pub extern fn endTabItem() void;
pub extern fn tabItemButton(label: [*c]const u8, flags: ImGuiTabItemFlags) bool;
pub extern fn setTabItemClosed(tab_or_docked_window_label: [*c]const u8) void;
pub extern fn dockSpace(dockspace_id: ImGuiID, size: ImVec2, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn dockSpaceOverViewport(dockspace_id: ImGuiID, viewport: [*c]const ImGuiViewport, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn setNextWindowDockID(dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn setNextWindowClass(window_class: [*c]const ImGuiWindowClass) void;
pub extern fn getWindowDockID() ImGuiID;
pub extern fn isWindowDocked() bool;
pub extern fn logToTTY(auto_open_depth: c_int) void;
pub extern fn logToFile(auto_open_depth: c_int, filename: [*c]const u8) void;
pub extern fn logToClipboard(auto_open_depth: c_int) void;
pub extern fn logFinish() void;
pub extern fn logButtons() void;
pub extern fn logTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn beginDragDropSource(flags: ImGuiDragDropFlags) bool;
pub extern fn setDragDropPayload(@"type": [*c]const u8, data: ?*const anyopaque, sz: usize, cond: ImGuiCond) bool;
pub extern fn endDragDropSource() void;
pub extern fn beginDragDropTarget() bool;
pub extern fn acceptDragDropPayload(@"type": [*c]const u8, flags: ImGuiDragDropFlags) [*c]const ImGuiPayload;
pub extern fn endDragDropTarget() void;
pub extern fn getDragDropPayload() [*c]const ImGuiPayload;
pub extern fn beginDisabled(disabled: bool) void;
pub extern fn endDisabled() void;
pub extern fn pushClipRect(clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn popClipRect() void;
pub extern fn setItemDefaultFocus() void;
pub extern fn setKeyboardFocusHere(offset: c_int) void;
pub extern fn setNavCursorVisible(visible: bool) void;
pub extern fn setNextItemAllowOverlap() void;
pub extern fn isItemHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn isItemActive() bool;
pub extern fn isItemFocused() bool;
pub extern fn isItemClicked(mouse_button: ImGuiMouseButton) bool;
pub extern fn isItemVisible() bool;
pub extern fn isItemEdited() bool;
pub extern fn isItemActivated() bool;
pub extern fn isItemDeactivated() bool;
pub extern fn isItemDeactivatedAfterEdit() bool;
pub extern fn isItemToggledOpen() bool;
pub extern fn isAnyItemHovered() bool;
pub extern fn isAnyItemActive() bool;
pub extern fn isAnyItemFocused() bool;
pub extern fn getItemID() ImGuiID;
pub extern fn getItemRectMin(pOut: [*c]ImVec2) void;
pub extern fn getItemRectMax(pOut: [*c]ImVec2) void;
pub extern fn getItemRectSize(pOut: [*c]ImVec2) void;
pub extern fn getMainViewport() [*c]ImGuiViewport;
pub extern fn getBackgroundDrawList(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn getForegroundDrawList_ViewportPtr(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn isRectVisible_Nil(size: ImVec2) bool;
pub extern fn isRectVisible_Vec2(rect_min: ImVec2, rect_max: ImVec2) bool;
pub extern fn getTime() f64;
pub extern fn getFrameCount() c_int;
pub extern fn getDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn getStyleColorName(idx: ImGuiCol) [*c]const u8;
pub extern fn setStateStorage(storage: [*c]ImGuiStorage) void;
pub extern fn getStateStorage() [*c]ImGuiStorage;
pub extern fn calcTextSize(pOut: [*c]ImVec2, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_double_hash: bool, wrap_width: f32) void;
pub extern fn colorConvertU32ToFloat4(pOut: [*c]ImVec4, in: ImU32) void;
pub extern fn colorConvertFloat4ToU32(in: ImVec4) ImU32;
pub extern fn colorConvertRGBtoHSV(r: f32, g: f32, b: f32, out_h: [*c]f32, out_s: [*c]f32, out_v: [*c]f32) void;
pub extern fn colorConvertHSVtoRGB(h: f32, s: f32, v: f32, out_r: [*c]f32, out_g: [*c]f32, out_b: [*c]f32) void;
pub extern fn isKeyDown_Nil(key: ImGuiKey) bool;
pub extern fn isKeyPressed_Bool(key: ImGuiKey, repeat: bool) bool;
pub extern fn isKeyReleased_Nil(key: ImGuiKey) bool;
pub extern fn isKeyChordPressed_Nil(key_chord: ImGuiKeyChord) bool;
pub extern fn getKeyPressedAmount(key: ImGuiKey, repeat_delay: f32, rate: f32) c_int;
pub extern fn getKeyName(key: ImGuiKey) [*c]const u8;
pub extern fn setNextFrameWantCaptureKeyboard(want_capture_keyboard: bool) void;
pub extern fn shortcut_Nil(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) bool;
pub extern fn setNextItemShortcut(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) void;
pub extern fn setItemKeyOwner_Nil(key: ImGuiKey) void;
pub extern fn isMouseDown_Nil(button: ImGuiMouseButton) bool;
pub extern fn isMouseClicked_Bool(button: ImGuiMouseButton, repeat: bool) bool;
pub extern fn isMouseReleased_Nil(button: ImGuiMouseButton) bool;
pub extern fn isMouseDoubleClicked_Nil(button: ImGuiMouseButton) bool;
pub extern fn isMouseReleasedWithDelay(button: ImGuiMouseButton, delay: f32) bool;
pub extern fn getMouseClickedCount(button: ImGuiMouseButton) c_int;
pub extern fn isMouseHoveringRect(r_min: ImVec2, r_max: ImVec2, clip: bool) bool;
pub extern fn isMousePosValid(mouse_pos: [*c]const ImVec2) bool;
pub extern fn isAnyMouseDown() bool;
pub extern fn getMousePos(pOut: [*c]ImVec2) void;
pub extern fn getMousePosOnOpeningCurrentPopup(pOut: [*c]ImVec2) void;
pub extern fn isMouseDragging(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn getMouseDragDelta(pOut: [*c]ImVec2, button: ImGuiMouseButton, lock_threshold: f32) void;
pub extern fn resetMouseDragDelta(button: ImGuiMouseButton) void;
pub extern fn getMouseCursor() ImGuiMouseCursor;
pub extern fn setMouseCursor(cursor_type: ImGuiMouseCursor) void;
pub extern fn setNextFrameWantCaptureMouse(want_capture_mouse: bool) void;
pub extern fn getClipboardText() [*c]const u8;
pub extern fn setClipboardText(text: [*c]const u8) void;
pub extern fn loadIniSettingsFromDisk(ini_filename: [*c]const u8) void;
pub extern fn loadIniSettingsFromMemory(ini_data: [*c]const u8, ini_size: usize) void;
pub extern fn saveIniSettingsToDisk(ini_filename: [*c]const u8) void;
pub extern fn saveIniSettingsToMemory(out_ini_size: [*c]usize) [*c]const u8;
pub extern fn debugTextEncoding(text: [*c]const u8) void;
pub extern fn debugFlashStyleColor(idx: ImGuiCol) void;
pub extern fn debugStartItemPicker() void;
pub extern fn debugCheckVersionAndDataLayout(version_str: [*c]const u8, sz_io: usize, sz_style: usize, sz_vec2: usize, sz_vec4: usize, sz_drawvert: usize, sz_drawidx: usize) bool;
pub extern fn debugLog(fmt: [*c]const u8, ...) void;
pub extern fn debugLogV(fmt: [*c]const u8, args: va_list) void;
pub extern fn setAllocatorFunctions(alloc_func: ImGuiMemAllocFunc, free_func: ImGuiMemFreeFunc, user_data: ?*anyopaque) void;
pub extern fn getAllocatorFunctions(p_alloc_func: [*c]ImGuiMemAllocFunc, p_free_func: [*c]ImGuiMemFreeFunc, p_user_data: [*c]?*anyopaque) void;
pub extern fn memAlloc(size: usize) ?*anyopaque;
pub extern fn memFree(ptr: ?*anyopaque) void;
pub extern fn updatePlatformWindows() void;
pub extern fn renderPlatformWindowsDefault(platform_render_arg: ?*anyopaque, renderer_render_arg: ?*anyopaque) void;
pub extern fn destroyPlatformWindows() void;
pub extern fn findViewportByID(id: ImGuiID) [*c]ImGuiViewport;
pub extern fn findViewportByPlatformHandle(platform_handle: ?*anyopaque) [*c]ImGuiViewport;
pub extern fn ImHashData(data: ?*const anyopaque, data_size: usize, seed: ImGuiID) ImGuiID;
pub extern fn ImHashStr(data: [*c]const u8, data_size: usize, seed: ImGuiID) ImGuiID;
pub extern fn ImQsort(base: ?*anyopaque, count: usize, size_of_element: usize, compare_func: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int) void;
pub extern fn ImAlphaBlendColors(col_a: ImU32, col_b: ImU32) ImU32;
pub extern fn ImIsPowerOfTwo_Int(v: c_int) bool;
pub extern fn ImIsPowerOfTwo_U64(v: ImU64) bool;
pub extern fn ImUpperPowerOfTwo(v: c_int) c_int;
pub extern fn ImCountSetBits(v: c_uint) c_uint;
pub extern fn ImStricmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn ImStrnicmp(str1: [*c]const u8, str2: [*c]const u8, count: usize) c_int;
pub extern fn ImStrncpy(dst: [*c]u8, src: [*c]const u8, count: usize) void;
pub extern fn ImStrdup(str: [*c]const u8) [*c]u8;
pub extern fn ImStrdupcpy(dst: [*c]u8, p_dst_size: [*c]usize, str: [*c]const u8) [*c]u8;
pub extern fn ImStrchrRange(str_begin: [*c]const u8, str_end: [*c]const u8, c: u8) [*c]const u8;
pub extern fn ImStreolRange(str: [*c]const u8, str_end: [*c]const u8) [*c]const u8;
pub extern fn ImStristr(haystack: [*c]const u8, haystack_end: [*c]const u8, needle: [*c]const u8, needle_end: [*c]const u8) [*c]const u8;
pub extern fn ImStrTrimBlanks(str: [*c]u8) void;
pub extern fn ImStrSkipBlank(str: [*c]const u8) [*c]const u8;
pub extern fn ImStrlenW(str: [*c]const ImWchar) c_int;
pub extern fn ImStrbol(buf_mid_line: [*c]const u8, buf_begin: [*c]const u8) [*c]const u8;
pub extern fn ImToUpper(c: u8) u8;
pub extern fn ImCharIsBlankA(c: u8) bool;
pub extern fn ImCharIsBlankW(c: c_uint) bool;
pub extern fn ImCharIsXdigitA(c: u8) bool;
pub extern fn ImFormatString(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn ImFormatStringV(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, args: va_list) c_int;
pub extern fn ImFormatStringToTempBuffer(out_buf: [*c][*c]const u8, out_buf_end: [*c][*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn ImFormatStringToTempBufferV(out_buf: [*c][*c]const u8, out_buf_end: [*c][*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImParseFormatFindStart(format: [*c]const u8) [*c]const u8;
pub extern fn ImParseFormatFindEnd(format: [*c]const u8) [*c]const u8;
pub extern fn ImParseFormatTrimDecorations(format: [*c]const u8, buf: [*c]u8, buf_size: usize) [*c]const u8;
pub extern fn ImParseFormatSanitizeForPrinting(fmt_in: [*c]const u8, fmt_out: [*c]u8, fmt_out_size: usize) void;
pub extern fn ImParseFormatSanitizeForScanning(fmt_in: [*c]const u8, fmt_out: [*c]u8, fmt_out_size: usize) [*c]const u8;
pub extern fn ImParseFormatPrecision(format: [*c]const u8, default_value: c_int) c_int;
pub extern fn ImTextCharToUtf8(out_buf: [*c]u8, c: c_uint) [*c]const u8;
pub extern fn ImTextStrToUtf8(out_buf: [*c]u8, out_buf_size: c_int, in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn ImTextCharFromUtf8(out_char: [*c]c_uint, in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn ImTextStrFromUtf8(out_buf: [*c]ImWchar, out_buf_size: c_int, in_text: [*c]const u8, in_text_end: [*c]const u8, in_remaining: [*c][*c]const u8) c_int;
pub extern fn ImTextCountCharsFromUtf8(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn ImTextCountUtf8BytesFromChar(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn ImTextCountUtf8BytesFromStr(in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn ImTextFindPreviousUtf8Codepoint(in_text_start: [*c]const u8, in_text_curr: [*c]const u8) [*c]const u8;
pub extern fn ImTextCountLines(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn ImFileOpen(filename: [*c]const u8, mode: [*c]const u8) ImFileHandle;
pub extern fn ImFileClose(file: ImFileHandle) bool;
pub extern fn ImFileGetSize(file: ImFileHandle) ImU64;
pub extern fn ImFileRead(data: ?*anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn ImFileWrite(data: ?*const anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn ImFileLoadToMemory(filename: [*c]const u8, mode: [*c]const u8, out_file_size: [*c]usize, padding_bytes: c_int) ?*anyopaque;
pub extern fn ImPow_Float(x: f32, y: f32) f32;
pub extern fn ImPow_double(x: f64, y: f64) f64;
pub extern fn ImLog_Float(x: f32) f32;
pub extern fn ImLog_double(x: f64) f64;
pub extern fn ImAbs_Int(x: c_int) c_int;
pub extern fn ImAbs_Float(x: f32) f32;
pub extern fn ImAbs_double(x: f64) f64;
pub extern fn ImSign_Float(x: f32) f32;
pub extern fn ImSign_double(x: f64) f64;
pub extern fn ImRsqrt_Float(x: f32) f32;
pub extern fn ImRsqrt_double(x: f64) f64;
pub extern fn ImMin(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn ImMax(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn ImClamp(pOut: [*c]ImVec2, v: ImVec2, mn: ImVec2, mx: ImVec2) void;
pub extern fn ImLerp_Vec2Float(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, t: f32) void;
pub extern fn ImLerp_Vec2Vec2(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, t: ImVec2) void;
pub extern fn ImLerp_Vec4(pOut: [*c]ImVec4, a: ImVec4, b: ImVec4, t: f32) void;
pub extern fn ImSaturate(f: f32) f32;
pub extern fn ImLengthSqr_Vec2(lhs: ImVec2) f32;
pub extern fn ImLengthSqr_Vec4(lhs: ImVec4) f32;
pub extern fn ImInvLength(lhs: ImVec2, fail_value: f32) f32;
pub extern fn ImTrunc_Float(f: f32) f32;
pub extern fn ImTrunc_Vec2(pOut: [*c]ImVec2, v: ImVec2) void;
pub extern fn ImFloor_Float(f: f32) f32;
pub extern fn ImFloor_Vec2(pOut: [*c]ImVec2, v: ImVec2) void;
pub extern fn ImModPositive(a: c_int, b: c_int) c_int;
pub extern fn ImDot(a: ImVec2, b: ImVec2) f32;
pub extern fn ImRotate(pOut: [*c]ImVec2, v: ImVec2, cos_a: f32, sin_a: f32) void;
pub extern fn ImLinearSweep(current: f32, target: f32, speed: f32) f32;
pub extern fn ImLinearRemapClamp(s0: f32, s1: f32, d0: f32, d1: f32, x: f32) f32;
pub extern fn ImMul(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn ImIsFloatAboveGuaranteedIntegerPrecision(f: f32) bool;
pub extern fn ImExponentialMovingAverage(avg: f32, sample: f32, n: c_int) f32;
pub extern fn ImBezierCubicCalc(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, t: f32) void;
pub extern fn ImBezierCubicClosestPoint(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, num_segments: c_int) void;
pub extern fn ImBezierCubicClosestPointCasteljau(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, tess_tol: f32) void;
pub extern fn ImBezierQuadraticCalc(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, t: f32) void;
pub extern fn ImLineClosestPoint(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, p: ImVec2) void;
pub extern fn ImTriangleContainsPoint(a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) bool;
pub extern fn ImTriangleClosestPoint(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) void;
pub extern fn ImTriangleBarycentricCoords(a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2, out_u: [*c]f32, out_v: [*c]f32, out_w: [*c]f32) void;
pub extern fn ImTriangleArea(a: ImVec2, b: ImVec2, c: ImVec2) f32;
pub extern fn ImTriangleIsClockwise(a: ImVec2, b: ImVec2, c: ImVec2) bool;
pub extern fn ImBitArrayGetStorageSizeInBytes(bitcount: c_int) usize;
pub extern fn ImBitArrayClearAllBits(arr: [*c]ImU32, bitcount: c_int) void;
pub extern fn ImBitArrayTestBit(arr: [*c]const ImU32, n: c_int) bool;
pub extern fn ImBitArrayClearBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn ImBitArraySetBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn ImBitArraySetBitRange(arr: [*c]ImU32, n: c_int, n2: c_int) void;
pub extern fn ImLowerBound(in_begin: [*c]ImGuiStoragePair, in_end: [*c]ImGuiStoragePair, key: ImGuiID) [*c]ImGuiStoragePair;
pub extern fn getIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiIO;
pub extern fn getPlatformIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiPlatformIO;
pub extern fn getCurrentWindowRead() ?*ImGuiWindow;
pub extern fn getCurrentWindow() ?*ImGuiWindow;
pub extern fn findWindowByID(id: ImGuiID) ?*ImGuiWindow;
pub extern fn findWindowByName(name: [*c]const u8) ?*ImGuiWindow;
pub extern fn updateWindowParentAndRootLinks(window: ?*ImGuiWindow, flags: ImGuiWindowFlags, parent_window: ?*ImGuiWindow) void;
pub extern fn updateWindowSkipRefresh(window: ?*ImGuiWindow) void;
pub extern fn calcWindowNextAutoFitSize(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn isWindowChildOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow, popup_hierarchy: bool, dock_hierarchy: bool) bool;
pub extern fn isWindowWithinBeginStackOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow) bool;
pub extern fn isWindowAbove(potential_above: ?*ImGuiWindow, potential_below: ?*ImGuiWindow) bool;
pub extern fn isWindowNavFocusable(window: ?*ImGuiWindow) bool;
pub extern fn setWindowPos_WindowPtr(window: ?*ImGuiWindow, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn setWindowSize_WindowPtr(window: ?*ImGuiWindow, size: ImVec2, cond: ImGuiCond) void;
pub extern fn setWindowCollapsed_WindowPtr(window: ?*ImGuiWindow, collapsed: bool, cond: ImGuiCond) void;
pub extern fn setWindowHitTestHole(window: ?*ImGuiWindow, pos: ImVec2, size: ImVec2) void;
pub extern fn setWindowHiddenAndSkipItemsForCurrentFrame(window: ?*ImGuiWindow) void;
pub extern fn setWindowParentWindowForFocusRoute(window: ?*ImGuiWindow, parent_window: ?*ImGuiWindow) void;
pub extern fn windowRectAbsToRel(pOut: [*c]ImRect, window: ?*ImGuiWindow, r: ImRect) void;
pub extern fn windowRectRelToAbs(pOut: [*c]ImRect, window: ?*ImGuiWindow, r: ImRect) void;
pub extern fn windowPosAbsToRel(pOut: [*c]ImVec2, window: ?*ImGuiWindow, p: ImVec2) void;
pub extern fn windowPosRelToAbs(pOut: [*c]ImVec2, window: ?*ImGuiWindow, p: ImVec2) void;
pub extern fn focusWindow(window: ?*ImGuiWindow, flags: ImGuiFocusRequestFlags) void;
pub extern fn focusTopMostWindowUnderOne(under_this_window: ?*ImGuiWindow, ignore_window: ?*ImGuiWindow, filter_viewport: [*c]ImGuiViewport, flags: ImGuiFocusRequestFlags) void;
pub extern fn bringWindowToFocusFront(window: ?*ImGuiWindow) void;
pub extern fn bringWindowToDisplayFront(window: ?*ImGuiWindow) void;
pub extern fn bringWindowToDisplayBack(window: ?*ImGuiWindow) void;
pub extern fn bringWindowToDisplayBehind(window: ?*ImGuiWindow, above_window: ?*ImGuiWindow) void;
pub extern fn findWindowDisplayIndex(window: ?*ImGuiWindow) c_int;
pub extern fn findBottomMostVisibleWindowWithinBeginStack(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn setNextWindowRefreshPolicy(flags: ImGuiWindowRefreshFlags) void;
pub extern fn setCurrentFont(font: [*c]ImFont) void;
pub extern fn getDefaultFont() [*c]ImFont;
pub extern fn pushPasswordFont() void;
pub extern fn getForegroundDrawList_WindowPtr(window: ?*ImGuiWindow) [*c]ImDrawList;
pub extern fn addDrawListToDrawDataEx(draw_data: [*c]ImDrawData, out_list: [*c]ImVector_ImDrawListPtr, draw_list: [*c]ImDrawList) void;
pub extern fn initialize() void;
pub extern fn shutdown() void;
pub extern fn updateInputEvents(trickle_fast_inputs: bool) void;
pub extern fn updateHoveredWindowAndCaptureFlags() void;
pub extern fn findHoveredWindowEx(pos: ImVec2, find_first_and_in_any_viewport: bool, out_hovered_window: [*c]?*ImGuiWindow, out_hovered_window_under_moving_window: [*c]?*ImGuiWindow) void;
pub extern fn startMouseMovingWindow(window: ?*ImGuiWindow) void;
pub extern fn startMouseMovingWindowOrNode(window: ?*ImGuiWindow, node: ?*ImGuiDockNode, undock: bool) void;
pub extern fn updateMouseMovingWindowNewFrame() void;
pub extern fn updateMouseMovingWindowEndFrame() void;
pub extern fn addContextHook(context: ?*ImGuiContext, hook: [*c]const ImGuiContextHook) ImGuiID;
pub extern fn removeContextHook(context: ?*ImGuiContext, hook_to_remove: ImGuiID) void;
pub extern fn callContextHooks(context: ?*ImGuiContext, @"type": ImGuiContextHookType) void;
pub extern fn translateWindowsInViewport(viewport: [*c]ImGuiViewportP, old_pos: ImVec2, new_pos: ImVec2, old_size: ImVec2, new_size: ImVec2) void;
pub extern fn scaleWindowsInViewport(viewport: [*c]ImGuiViewportP, scale: f32) void;
pub extern fn destroyPlatformWindow(viewport: [*c]ImGuiViewportP) void;
pub extern fn setWindowViewport(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP) void;
pub extern fn setCurrentViewport(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP) void;
pub extern fn getViewportPlatformMonitor(viewport: [*c]ImGuiViewport) [*c]const ImGuiPlatformMonitor;
pub extern fn findHoveredViewportFromPlatformWindowStack(mouse_platform_pos: ImVec2) [*c]ImGuiViewportP;
pub extern fn markIniSettingsDirty_Nil() void;
pub extern fn markIniSettingsDirty_WindowPtr(window: ?*ImGuiWindow) void;
pub extern fn clearIniSettings() void;
pub extern fn addSettingsHandler(handler: [*c]const ImGuiSettingsHandler) void;
pub extern fn removeSettingsHandler(type_name: [*c]const u8) void;
pub extern fn findSettingsHandler(type_name: [*c]const u8) [*c]ImGuiSettingsHandler;
pub extern fn createNewWindowSettings(name: [*c]const u8) [*c]ImGuiWindowSettings;
pub extern fn findWindowSettingsByID(id: ImGuiID) [*c]ImGuiWindowSettings;
pub extern fn findWindowSettingsByWindow(window: ?*ImGuiWindow) [*c]ImGuiWindowSettings;
pub extern fn clearWindowSettings(name: [*c]const u8) void;
pub extern fn localizeRegisterEntries(entries: [*c]const ImGuiLocEntry, count: c_int) void;
pub extern fn localizeGetMsg(key: ImGuiLocKey) [*c]const u8;
pub extern fn setScrollX_WindowPtr(window: ?*ImGuiWindow, scroll_x: f32) void;
pub extern fn setScrollY_WindowPtr(window: ?*ImGuiWindow, scroll_y: f32) void;
pub extern fn setScrollFromPosX_WindowPtr(window: ?*ImGuiWindow, local_x: f32, center_x_ratio: f32) void;
pub extern fn setScrollFromPosY_WindowPtr(window: ?*ImGuiWindow, local_y: f32, center_y_ratio: f32) void;
pub extern fn scrollToItem(flags: ImGuiScrollFlags) void;
pub extern fn scrollToRect(window: ?*ImGuiWindow, rect: ImRect, flags: ImGuiScrollFlags) void;
pub extern fn scrollToRectEx(pOut: [*c]ImVec2, window: ?*ImGuiWindow, rect: ImRect, flags: ImGuiScrollFlags) void;
pub extern fn scrollToBringRectIntoView(window: ?*ImGuiWindow, rect: ImRect) void;
pub extern fn getItemStatusFlags() ImGuiItemStatusFlags;
pub extern fn getItemFlags() ImGuiItemFlags;
pub extern fn getActiveID() ImGuiID;
pub extern fn getFocusID() ImGuiID;
pub extern fn setActiveID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn setFocusID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn clearActiveID() void;
pub extern fn getHoveredID() ImGuiID;
pub extern fn setHoveredID(id: ImGuiID) void;
pub extern fn keepAliveID(id: ImGuiID) void;
pub extern fn markItemEdited(id: ImGuiID) void;
pub extern fn pushOverrideID(id: ImGuiID) void;
pub extern fn getIDWithSeed_Str(str_id_begin: [*c]const u8, str_id_end: [*c]const u8, seed: ImGuiID) ImGuiID;
pub extern fn getIDWithSeed_Int(n: c_int, seed: ImGuiID) ImGuiID;
pub extern fn itemSize_Vec2(size: ImVec2, text_baseline_y: f32) void;
pub extern fn itemSize_Rect(bb: ImRect, text_baseline_y: f32) void;
pub extern fn itemAdd(bb: ImRect, id: ImGuiID, nav_bb: [*c]const ImRect, extra_flags: ImGuiItemFlags) bool;
pub extern fn itemHoverable(bb: ImRect, id: ImGuiID, item_flags: ImGuiItemFlags) bool;
pub extern fn isWindowContentHoverable(window: ?*ImGuiWindow, flags: ImGuiHoveredFlags) bool;
pub extern fn isClippedEx(bb: ImRect, id: ImGuiID) bool;
pub extern fn setLastItemData(item_id: ImGuiID, item_flags: ImGuiItemFlags, status_flags: ImGuiItemStatusFlags, item_rect: ImRect) void;
pub extern fn calcItemSize(pOut: [*c]ImVec2, size: ImVec2, default_w: f32, default_h: f32) void;
pub extern fn calcWrapWidthForPos(pos: ImVec2, wrap_pos_x: f32) f32;
pub extern fn pushMultiItemsWidths(components: c_int, width_full: f32) void;
pub extern fn shrinkWidths(items: [*c]ImGuiShrinkWidthItem, count: c_int, width_excess: f32) void;
pub extern fn getStyleVarInfo(idx: ImGuiStyleVar) ?*const ImGuiStyleVarInfo;
pub extern fn beginDisabledOverrideReenable() void;
pub extern fn endDisabledOverrideReenable() void;
pub extern fn logBegin(flags: ImGuiLogFlags, auto_open_depth: c_int) void;
pub extern fn logToBuffer(auto_open_depth: c_int) void;
pub extern fn logRenderedText(ref_pos: [*c]const ImVec2, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn logSetNextTextDecoration(prefix: [*c]const u8, suffix: [*c]const u8) void;
pub extern fn beginChildEx(name: [*c]const u8, id: ImGuiID, size_arg: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn beginPopupEx(id: ImGuiID, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn beginPopupMenuEx(id: ImGuiID, label: [*c]const u8, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn openPopupEx(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn closePopupToLevel(remaining: c_int, restore_focus_to_window_under_popup: bool) void;
pub extern fn closePopupsOverWindow(ref_window: ?*ImGuiWindow, restore_focus_to_window_under_popup: bool) void;
pub extern fn closePopupsExceptModals() void;
pub extern fn isPopupOpen_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) bool;
pub extern fn getPopupAllowedExtentRect(pOut: [*c]ImRect, window: ?*ImGuiWindow) void;
pub extern fn getTopMostPopupModal() ?*ImGuiWindow;
pub extern fn getTopMostAndVisiblePopupModal() ?*ImGuiWindow;
pub extern fn findBlockingModal(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn findBestWindowPosForPopup(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn findBestWindowPosForPopupEx(pOut: [*c]ImVec2, ref_pos: ImVec2, size: ImVec2, last_dir: [*c]ImGuiDir, r_outer: ImRect, r_avoid: ImRect, policy: ImGuiPopupPositionPolicy) void;
pub extern fn beginTooltipEx(tooltip_flags: ImGuiTooltipFlags, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn beginTooltipHidden() bool;
pub extern fn beginViewportSideBar(name: [*c]const u8, viewport: [*c]ImGuiViewport, dir: ImGuiDir, size: f32, window_flags: ImGuiWindowFlags) bool;
pub extern fn beginMenuEx(label: [*c]const u8, icon: [*c]const u8, enabled: bool) bool;
pub extern fn menuItemEx(label: [*c]const u8, icon: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn beginComboPopup(popup_id: ImGuiID, bb: ImRect, flags: ImGuiComboFlags) bool;
pub extern fn beginComboPreview() bool;
pub extern fn endComboPreview() void;
pub extern fn navInitWindow(window: ?*ImGuiWindow, force_reinit: bool) void;
pub extern fn navInitRequestApplyResult() void;
pub extern fn navMoveRequestButNoResultYet() bool;
pub extern fn navMoveRequestSubmit(move_dir: ImGuiDir, clip_dir: ImGuiDir, move_flags: ImGuiNavMoveFlags, scroll_flags: ImGuiScrollFlags) void;
pub extern fn navMoveRequestForward(move_dir: ImGuiDir, clip_dir: ImGuiDir, move_flags: ImGuiNavMoveFlags, scroll_flags: ImGuiScrollFlags) void;
pub extern fn navMoveRequestResolveWithLastItem(result: [*c]ImGuiNavItemData) void;
pub extern fn navMoveRequestResolveWithPastTreeNode(result: [*c]ImGuiNavItemData, tree_node_data: [*c]ImGuiTreeNodeStackData) void;
pub extern fn navMoveRequestCancel() void;
pub extern fn navMoveRequestApplyResult() void;
pub extern fn navMoveRequestTryWrapping(window: ?*ImGuiWindow, move_flags: ImGuiNavMoveFlags) void;
pub extern fn navHighlightActivated(id: ImGuiID) void;
pub extern fn navClearPreferredPosForAxis(axis: ImGuiAxis) void;
pub extern fn setNavCursorVisibleAfterMove() void;
pub extern fn navUpdateCurrentWindowIsScrollPushableX() void;
pub extern fn setNavWindow(window: ?*ImGuiWindow) void;
pub extern fn setNavID(id: ImGuiID, nav_layer: ImGuiNavLayer, focus_scope_id: ImGuiID, rect_rel: ImRect) void;
pub extern fn setNavFocusScope(focus_scope_id: ImGuiID) void;
pub extern fn focusItem() void;
pub extern fn activateItemByID(id: ImGuiID) void;
pub extern fn isNamedKey(key: ImGuiKey) bool;
pub extern fn isNamedKeyOrMod(key: ImGuiKey) bool;
pub extern fn isLegacyKey(key: ImGuiKey) bool;
pub extern fn isKeyboardKey(key: ImGuiKey) bool;
pub extern fn isGamepadKey(key: ImGuiKey) bool;
pub extern fn isMouseKey(key: ImGuiKey) bool;
pub extern fn isAliasKey(key: ImGuiKey) bool;
pub extern fn isLRModKey(key: ImGuiKey) bool;
pub extern fn fixupKeyChord(key_chord: ImGuiKeyChord) ImGuiKeyChord;
pub extern fn convertSingleModFlagToKey(key: ImGuiKey) ImGuiKey;
pub extern fn getKeyData_ContextPtr(ctx: ?*ImGuiContext, key: ImGuiKey) [*c]ImGuiKeyData;
pub extern fn getKeyData_Key(key: ImGuiKey) [*c]ImGuiKeyData;
pub extern fn getKeyChordName(key_chord: ImGuiKeyChord) [*c]const u8;
pub extern fn mouseButtonToKey(button: ImGuiMouseButton) ImGuiKey;
pub extern fn isMouseDragPastThreshold(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn getKeyMagnitude2d(pOut: [*c]ImVec2, key_left: ImGuiKey, key_right: ImGuiKey, key_up: ImGuiKey, key_down: ImGuiKey) void;
pub extern fn getNavTweakPressedAmount(axis: ImGuiAxis) f32;
pub extern fn calcTypematicRepeatAmount(t0: f32, t1: f32, repeat_delay: f32, repeat_rate: f32) c_int;
pub extern fn getTypematicRepeatRate(flags: ImGuiInputFlags, repeat_delay: [*c]f32, repeat_rate: [*c]f32) void;
pub extern fn teleportMousePos(pos: ImVec2) void;
pub extern fn setActiveIdUsingAllKeyboardKeys() void;
pub extern fn isActiveIdUsingNavDir(dir: ImGuiDir) bool;
pub extern fn getKeyOwner(key: ImGuiKey) ImGuiID;
pub extern fn setKeyOwner(key: ImGuiKey, owner_id: ImGuiID, flags: ImGuiInputFlags) void;
pub extern fn setKeyOwnersForKeyChord(key: ImGuiKeyChord, owner_id: ImGuiID, flags: ImGuiInputFlags) void;
pub extern fn setItemKeyOwner_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags) void;
pub extern fn testKeyOwner(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn getKeyOwnerData(ctx: ?*ImGuiContext, key: ImGuiKey) [*c]ImGuiKeyOwnerData;
pub extern fn isKeyDown_ID(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn isKeyPressed_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn isKeyReleased_ID(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn isKeyChordPressed_InputFlags(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn isMouseDown_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn isMouseClicked_InputFlags(button: ImGuiMouseButton, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn isMouseReleased_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn isMouseDoubleClicked_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn shortcut_ID(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn setShortcutRouting(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn testShortcutRouting(key_chord: ImGuiKeyChord, owner_id: ImGuiID) bool;
pub extern fn getShortcutRoutingData(key_chord: ImGuiKeyChord) [*c]ImGuiKeyRoutingData;
pub extern fn dockContextInitialize(ctx: ?*ImGuiContext) void;
pub extern fn dockContextShutdown(ctx: ?*ImGuiContext) void;
pub extern fn dockContextClearNodes(ctx: ?*ImGuiContext, root_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn dockContextRebuildNodes(ctx: ?*ImGuiContext) void;
pub extern fn dockContextNewFrameUpdateUndocking(ctx: ?*ImGuiContext) void;
pub extern fn dockContextNewFrameUpdateDocking(ctx: ?*ImGuiContext) void;
pub extern fn dockContextEndFrame(ctx: ?*ImGuiContext) void;
pub extern fn dockContextGenNodeID(ctx: ?*ImGuiContext) ImGuiID;
pub extern fn dockContextQueueDock(ctx: ?*ImGuiContext, target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload: ?*ImGuiWindow, split_dir: ImGuiDir, split_ratio: f32, split_outer: bool) void;
pub extern fn dockContextQueueUndockWindow(ctx: ?*ImGuiContext, window: ?*ImGuiWindow) void;
pub extern fn dockContextQueueUndockNode(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn dockContextProcessUndockWindow(ctx: ?*ImGuiContext, window: ?*ImGuiWindow, clear_persistent_docking_ref: bool) void;
pub extern fn dockContextProcessUndockNode(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn dockContextCalcDropPosForDocking(target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload_window: ?*ImGuiWindow, payload_node: ?*ImGuiDockNode, split_dir: ImGuiDir, split_outer: bool, out_pos: [*c]ImVec2) bool;
pub extern fn dockContextFindNodeByID(ctx: ?*ImGuiContext, id: ImGuiID) ?*ImGuiDockNode;
pub extern fn dockNodeWindowMenuHandler_Default(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode, tab_bar: [*c]ImGuiTabBar) void;
pub extern fn dockNodeBeginAmendTabBar(node: ?*ImGuiDockNode) bool;
pub extern fn dockNodeEndAmendTabBar() void;
pub extern fn dockNodeGetRootNode(node: ?*ImGuiDockNode) ?*ImGuiDockNode;
pub extern fn dockNodeIsInHierarchyOf(node: ?*ImGuiDockNode, parent: ?*ImGuiDockNode) bool;
pub extern fn dockNodeGetDepth(node: ?*const ImGuiDockNode) c_int;
pub extern fn dockNodeGetWindowMenuButtonId(node: ?*const ImGuiDockNode) ImGuiID;
pub extern fn getWindowDockNode() ?*ImGuiDockNode;
pub extern fn getWindowAlwaysWantOwnTabBar(window: ?*ImGuiWindow) bool;
pub extern fn beginDocked(window: ?*ImGuiWindow, p_open: [*c]bool) void;
pub extern fn beginDockableDragDropSource(window: ?*ImGuiWindow) void;
pub extern fn beginDockableDragDropTarget(window: ?*ImGuiWindow) void;
pub extern fn setWindowDock(window: ?*ImGuiWindow, dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn dockBuilderDockWindow(window_name: [*c]const u8, node_id: ImGuiID) void;
pub extern fn dockBuilderGetNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn dockBuilderGetCentralNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn dockBuilderAddNode(node_id: ImGuiID, flags: ImGuiDockNodeFlags) ImGuiID;
pub extern fn dockBuilderRemoveNode(node_id: ImGuiID) void;
pub extern fn dockBuilderRemoveNodeDockedWindows(node_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn dockBuilderRemoveNodeChildNodes(node_id: ImGuiID) void;
pub extern fn dockBuilderSetNodePos(node_id: ImGuiID, pos: ImVec2) void;
pub extern fn dockBuilderSetNodeSize(node_id: ImGuiID, size: ImVec2) void;
pub extern fn dockBuilderSplitNode(node_id: ImGuiID, split_dir: ImGuiDir, size_ratio_for_node_at_dir: f32, out_id_at_dir: [*c]ImGuiID, out_id_at_opposite_dir: [*c]ImGuiID) ImGuiID;
pub extern fn dockBuilderCopyDockSpace(src_dockspace_id: ImGuiID, dst_dockspace_id: ImGuiID, in_window_remap_pairs: [*c]ImVector_const_charPtr) void;
pub extern fn dockBuilderCopyNode(src_node_id: ImGuiID, dst_node_id: ImGuiID, out_node_remap_pairs: [*c]ImVector_ImGuiID) void;
pub extern fn dockBuilderCopyWindowSettings(src_name: [*c]const u8, dst_name: [*c]const u8) void;
pub extern fn dockBuilderFinish(node_id: ImGuiID) void;
pub extern fn pushFocusScope(id: ImGuiID) void;
pub extern fn popFocusScope() void;
pub extern fn getCurrentFocusScope() ImGuiID;
pub extern fn isDragDropActive() bool;
pub extern fn beginDragDropTargetCustom(bb: ImRect, id: ImGuiID) bool;
pub extern fn clearDragDrop() void;
pub extern fn isDragDropPayloadBeingAccepted() bool;
pub extern fn renderDragDropTargetRect(bb: ImRect, item_clip_rect: ImRect) void;
pub extern fn getTypingSelectRequest(flags: ImGuiTypingSelectFlags) [*c]ImGuiTypingSelectRequest;
pub extern fn typingSelectFindMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn typingSelectFindNextSingleCharMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn typingSelectFindBestLeadingMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque) c_int;
pub extern fn beginBoxSelect(scope_rect: ImRect, window: ?*ImGuiWindow, box_select_id: ImGuiID, ms_flags: ImGuiMultiSelectFlags) bool;
pub extern fn endBoxSelect(scope_rect: ImRect, ms_flags: ImGuiMultiSelectFlags) void;
pub extern fn multiSelectItemHeader(id: ImGuiID, p_selected: [*c]bool, p_button_flags: [*c]ImGuiButtonFlags) void;
pub extern fn multiSelectItemFooter(id: ImGuiID, p_selected: [*c]bool, p_pressed: [*c]bool) void;
pub extern fn multiSelectAddSetAll(ms: [*c]ImGuiMultiSelectTempData, selected: bool) void;
pub extern fn multiSelectAddSetRange(ms: [*c]ImGuiMultiSelectTempData, selected: bool, range_dir: c_int, first_item: ImGuiSelectionUserData, last_item: ImGuiSelectionUserData) void;
pub extern fn getBoxSelectState(id: ImGuiID) ?*ImGuiBoxSelectState;
pub extern fn getMultiSelectState(id: ImGuiID) [*c]ImGuiMultiSelectState;
pub extern fn setWindowClipRectBeforeSetChannel(window: ?*ImGuiWindow, clip_rect: ImRect) void;
pub extern fn beginColumns(str_id: [*c]const u8, count: c_int, flags: ImGuiOldColumnFlags) void;
pub extern fn endColumns() void;
pub extern fn pushColumnClipRect(column_index: c_int) void;
pub extern fn pushColumnsBackground() void;
pub extern fn popColumnsBackground() void;
pub extern fn getColumnsID(str_id: [*c]const u8, count: c_int) ImGuiID;
pub extern fn findOrCreateColumns(window: ?*ImGuiWindow, id: ImGuiID) [*c]ImGuiOldColumns;
pub extern fn getColumnOffsetFromNorm(columns: [*c]const ImGuiOldColumns, offset_norm: f32) f32;
pub extern fn getColumnNormFromOffset(columns: [*c]const ImGuiOldColumns, offset: f32) f32;
pub extern fn tableOpenContextMenu(column_n: c_int) void;
pub extern fn tableSetColumnWidth(column_n: c_int, width: f32) void;
pub extern fn tableSetColumnSortDirection(column_n: c_int, sort_direction: ImGuiSortDirection, append_to_sort_specs: bool) void;
pub extern fn tableGetHoveredRow() c_int;
pub extern fn tableGetHeaderRowHeight() f32;
pub extern fn tableGetHeaderAngledMaxLabelWidth() f32;
pub extern fn tablePushBackgroundChannel() void;
pub extern fn tablePopBackgroundChannel() void;
pub extern fn tableAngledHeadersRowEx(row_id: ImGuiID, angle: f32, max_label_width: f32, data: [*c]const ImGuiTableHeaderData, data_count: c_int) void;
pub extern fn getCurrentTable() ?*ImGuiTable;
pub extern fn tableFindByID(id: ImGuiID) ?*ImGuiTable;
pub extern fn beginTableEx(name: [*c]const u8, id: ImGuiID, columns_count: c_int, flags: ImGuiTableFlags, outer_size: ImVec2, inner_width: f32) bool;
pub extern fn tableBeginInitMemory(table: ?*ImGuiTable, columns_count: c_int) void;
pub extern fn tableBeginApplyRequests(table: ?*ImGuiTable) void;
pub extern fn tableSetupDrawChannels(table: ?*ImGuiTable) void;
pub extern fn tableUpdateLayout(table: ?*ImGuiTable) void;
pub extern fn tableUpdateBorders(table: ?*ImGuiTable) void;
pub extern fn tableUpdateColumnsWeightFromWidth(table: ?*ImGuiTable) void;
pub extern fn tableDrawBorders(table: ?*ImGuiTable) void;
pub extern fn tableDrawDefaultContextMenu(table: ?*ImGuiTable, flags_for_section_to_display: ImGuiTableFlags) void;
pub extern fn tableBeginContextMenuPopup(table: ?*ImGuiTable) bool;
pub extern fn tableMergeDrawChannels(table: ?*ImGuiTable) void;
pub extern fn tableGetInstanceData(table: ?*ImGuiTable, instance_no: c_int) [*c]ImGuiTableInstanceData;
pub extern fn tableGetInstanceID(table: ?*ImGuiTable, instance_no: c_int) ImGuiID;
pub extern fn tableSortSpecsSanitize(table: ?*ImGuiTable) void;
pub extern fn tableSortSpecsBuild(table: ?*ImGuiTable) void;
pub extern fn tableGetColumnNextSortDirection(column: ?*ImGuiTableColumn) ImGuiSortDirection;
pub extern fn tableFixColumnSortDirection(table: ?*ImGuiTable, column: ?*ImGuiTableColumn) void;
pub extern fn tableGetColumnWidthAuto(table: ?*ImGuiTable, column: ?*ImGuiTableColumn) f32;
pub extern fn tableBeginRow(table: ?*ImGuiTable) void;
pub extern fn tableEndRow(table: ?*ImGuiTable) void;
pub extern fn tableBeginCell(table: ?*ImGuiTable, column_n: c_int) void;
pub extern fn tableEndCell(table: ?*ImGuiTable) void;
pub extern fn tableGetCellBgRect(pOut: [*c]ImRect, table: ?*const ImGuiTable, column_n: c_int) void;
pub extern fn tableGetColumnName_TablePtr(table: ?*const ImGuiTable, column_n: c_int) [*c]const u8;
pub extern fn tableGetColumnResizeID(table: ?*ImGuiTable, column_n: c_int, instance_no: c_int) ImGuiID;
pub extern fn tableCalcMaxColumnWidth(table: ?*const ImGuiTable, column_n: c_int) f32;
pub extern fn tableSetColumnWidthAutoSingle(table: ?*ImGuiTable, column_n: c_int) void;
pub extern fn tableSetColumnWidthAutoAll(table: ?*ImGuiTable) void;
pub extern fn tableRemove(table: ?*ImGuiTable) void;
pub extern fn tableGcCompactTransientBuffers_TablePtr(table: ?*ImGuiTable) void;
pub extern fn tableGcCompactTransientBuffers_TableTempDataPtr(table: [*c]ImGuiTableTempData) void;
pub extern fn tableGcCompactSettings() void;
pub extern fn tableLoadSettings(table: ?*ImGuiTable) void;
pub extern fn tableSaveSettings(table: ?*ImGuiTable) void;
pub extern fn tableResetSettings(table: ?*ImGuiTable) void;
pub extern fn tableGetBoundSettings(table: ?*ImGuiTable) [*c]ImGuiTableSettings;
pub extern fn tableSettingsAddSettingsHandler() void;
pub extern fn tableSettingsCreate(id: ImGuiID, columns_count: c_int) [*c]ImGuiTableSettings;
pub extern fn tableSettingsFindByID(id: ImGuiID) [*c]ImGuiTableSettings;
pub extern fn getCurrentTabBar() [*c]ImGuiTabBar;
pub extern fn beginTabBarEx(tab_bar: [*c]ImGuiTabBar, bb: ImRect, flags: ImGuiTabBarFlags) bool;
pub extern fn tabBarFindTabByID(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) [*c]ImGuiTabItem;
pub extern fn tabBarFindTabByOrder(tab_bar: [*c]ImGuiTabBar, order: c_int) [*c]ImGuiTabItem;
pub extern fn tabBarFindMostRecentlySelectedTabForActiveWindow(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn tabBarGetCurrentTab(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn tabBarGetTabOrder(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) c_int;
pub extern fn tabBarGetTabName(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) [*c]const u8;
pub extern fn tabBarAddTab(tab_bar: [*c]ImGuiTabBar, tab_flags: ImGuiTabItemFlags, window: ?*ImGuiWindow) void;
pub extern fn tabBarRemoveTab(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) void;
pub extern fn tabBarCloseTab(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn tabBarQueueFocus_TabItemPtr(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn tabBarQueueFocus_Str(tab_bar: [*c]ImGuiTabBar, tab_name: [*c]const u8) void;
pub extern fn tabBarQueueReorder(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem, offset: c_int) void;
pub extern fn tabBarQueueReorderFromMousePos(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem, mouse_pos: ImVec2) void;
pub extern fn tabBarProcessReorder(tab_bar: [*c]ImGuiTabBar) bool;
pub extern fn tabItemEx(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags, docked_window: ?*ImGuiWindow) bool;
pub extern fn tabItemSpacing(str_id: [*c]const u8, flags: ImGuiTabItemFlags, width: f32) void;
pub extern fn tabItemCalcSize_Str(pOut: [*c]ImVec2, label: [*c]const u8, has_close_button_or_unsaved_marker: bool) void;
pub extern fn tabItemCalcSize_WindowPtr(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn tabItemBackground(draw_list: [*c]ImDrawList, bb: ImRect, flags: ImGuiTabItemFlags, col: ImU32) void;
pub extern fn tabItemLabelAndCloseButton(draw_list: [*c]ImDrawList, bb: ImRect, flags: ImGuiTabItemFlags, frame_padding: ImVec2, label: [*c]const u8, tab_id: ImGuiID, close_button_id: ImGuiID, is_contents_visible: bool, out_just_closed: [*c]bool, out_text_clipped: [*c]bool) void;
pub extern fn renderText(pos: ImVec2, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_hash: bool) void;
pub extern fn renderTextWrapped(pos: ImVec2, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) void;
pub extern fn renderTextClipped(pos_min: ImVec2, pos_max: ImVec2, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2, @"align": ImVec2, clip_rect: [*c]const ImRect) void;
pub extern fn renderTextClippedEx(draw_list: [*c]ImDrawList, pos_min: ImVec2, pos_max: ImVec2, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2, @"align": ImVec2, clip_rect: [*c]const ImRect) void;
pub extern fn renderTextEllipsis(draw_list: [*c]ImDrawList, pos_min: ImVec2, pos_max: ImVec2, clip_max_x: f32, ellipsis_max_x: f32, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2) void;
pub extern fn renderFrame(p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, borders: bool, rounding: f32) void;
pub extern fn renderFrameBorder(p_min: ImVec2, p_max: ImVec2, rounding: f32) void;
pub extern fn renderColorRectWithAlphaCheckerboard(draw_list: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, grid_step: f32, grid_off: ImVec2, rounding: f32, flags: ImDrawFlags) void;
pub extern fn renderNavCursor(bb: ImRect, id: ImGuiID, flags: ImGuiNavRenderCursorFlags) void;
pub extern fn findRenderedTextEnd(text: [*c]const u8, text_end: [*c]const u8) [*c]const u8;
pub extern fn renderMouseCursor(pos: ImVec2, scale: f32, mouse_cursor: ImGuiMouseCursor, col_fill: ImU32, col_border: ImU32, col_shadow: ImU32) void;
pub extern fn renderArrow(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32, dir: ImGuiDir, scale: f32) void;
pub extern fn renderBullet(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32) void;
pub extern fn renderCheckMark(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32, sz: f32) void;
pub extern fn renderArrowPointingAt(draw_list: [*c]ImDrawList, pos: ImVec2, half_sz: ImVec2, direction: ImGuiDir, col: ImU32) void;
pub extern fn renderArrowDockMenu(draw_list: [*c]ImDrawList, p_min: ImVec2, sz: f32, col: ImU32) void;
pub extern fn renderRectFilledRangeH(draw_list: [*c]ImDrawList, rect: ImRect, col: ImU32, x_start_norm: f32, x_end_norm: f32, rounding: f32) void;
pub extern fn renderRectFilledWithHole(draw_list: [*c]ImDrawList, outer: ImRect, inner: ImRect, col: ImU32, rounding: f32) void;
pub extern fn calcRoundingFlagsForRectInRect(r_in: ImRect, r_outer: ImRect, threshold: f32) ImDrawFlags;
pub extern fn textEx(text: [*c]const u8, text_end: [*c]const u8, flags: ImGuiTextFlags) void;
pub extern fn buttonEx(label: [*c]const u8, size_arg: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn arrowButtonEx(str_id: [*c]const u8, dir: ImGuiDir, size_arg: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn imageButtonEx(id: ImGuiID, user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4, flags: ImGuiButtonFlags) bool;
pub extern fn separatorEx(flags: ImGuiSeparatorFlags, thickness: f32) void;
pub extern fn separatorTextEx(id: ImGuiID, label: [*c]const u8, label_end: [*c]const u8, extra_width: f32) void;
pub extern fn checkboxFlags_S64Ptr(label: [*c]const u8, flags: [*c]ImS64, flags_value: ImS64) bool;
pub extern fn checkboxFlags_U64Ptr(label: [*c]const u8, flags: [*c]ImU64, flags_value: ImU64) bool;
pub extern fn closeButton(id: ImGuiID, pos: ImVec2) bool;
pub extern fn collapseButton(id: ImGuiID, pos: ImVec2, dock_node: ?*ImGuiDockNode) bool;
pub extern fn scrollbar(axis: ImGuiAxis) void;
pub extern fn scrollbarEx(bb: ImRect, id: ImGuiID, axis: ImGuiAxis, p_scroll_v: [*c]ImS64, avail_v: ImS64, contents_v: ImS64, draw_rounding_flags: ImDrawFlags) bool;
pub extern fn getWindowScrollbarRect(pOut: [*c]ImRect, window: ?*ImGuiWindow, axis: ImGuiAxis) void;
pub extern fn getWindowScrollbarID(window: ?*ImGuiWindow, axis: ImGuiAxis) ImGuiID;
pub extern fn getWindowResizeCornerID(window: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn getWindowResizeBorderID(window: ?*ImGuiWindow, dir: ImGuiDir) ImGuiID;
pub extern fn buttonBehavior(bb: ImRect, id: ImGuiID, out_hovered: [*c]bool, out_held: [*c]bool, flags: ImGuiButtonFlags) bool;
pub extern fn dragBehavior(id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn sliderBehavior(bb: ImRect, id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags, out_grab_bb: [*c]ImRect) bool;
pub extern fn splitterBehavior(bb: ImRect, id: ImGuiID, axis: ImGuiAxis, size1: [*c]f32, size2: [*c]f32, min_size1: f32, min_size2: f32, hover_extend: f32, hover_visibility_delay: f32, bg_col: ImU32) bool;
pub extern fn treeNodeBehavior(id: ImGuiID, flags: ImGuiTreeNodeFlags, label: [*c]const u8, label_end: [*c]const u8) bool;
pub extern fn treePushOverrideID(id: ImGuiID) void;
pub extern fn treeNodeGetOpen(storage_id: ImGuiID) bool;
pub extern fn treeNodeSetOpen(storage_id: ImGuiID, open: bool) void;
pub extern fn treeNodeUpdateNextOpen(storage_id: ImGuiID, flags: ImGuiTreeNodeFlags) bool;
pub extern fn dataTypeGetInfo(data_type: ImGuiDataType) [*c]const ImGuiDataTypeInfo;
pub extern fn dataTypeFormatString(buf: [*c]u8, buf_size: c_int, data_type: ImGuiDataType, p_data: ?*const anyopaque, format: [*c]const u8) c_int;
pub extern fn dataTypeApplyOp(data_type: ImGuiDataType, op: c_int, output: ?*anyopaque, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) void;
pub extern fn dataTypeApplyFromText(buf: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_data_when_empty: ?*anyopaque) bool;
pub extern fn dataTypeCompare(data_type: ImGuiDataType, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) c_int;
pub extern fn dataTypeClamp(data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque) bool;
pub extern fn dataTypeIsZero(data_type: ImGuiDataType, p_data: ?*const anyopaque) bool;
pub extern fn inputTextEx(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: c_int, size_arg: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn inputTextDeactivateHook(id: ImGuiID) void;
pub extern fn tempInputText(bb: ImRect, id: ImGuiID, label: [*c]const u8, buf: [*c]u8, buf_size: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn tempInputScalar(bb: ImRect, id: ImGuiID, label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_clamp_min: ?*const anyopaque, p_clamp_max: ?*const anyopaque) bool;
pub extern fn tempInputIsActive(id: ImGuiID) bool;
pub extern fn getInputTextState(id: ImGuiID) [*c]ImGuiInputTextState;
pub extern fn setNextItemRefVal(data_type: ImGuiDataType, p_data: ?*anyopaque) void;
pub extern fn isItemActiveAsInputText() bool;
pub extern fn colorTooltip(text: [*c]const u8, col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn colorEditOptionsPopup(col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn colorPickerOptionsPopup(ref_col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn plotEx(plot_type: ImGuiPlotType, label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, size_arg: ImVec2) c_int;
pub extern fn shadeVertsLinearColorGradientKeepAlpha(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, gradient_p0: ImVec2, gradient_p1: ImVec2, col0: ImU32, col1: ImU32) void;
pub extern fn shadeVertsLinearUV(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, clamp: bool) void;
pub extern fn shadeVertsTransformPos(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, pivot_in: ImVec2, cos_a: f32, sin_a: f32, pivot_out: ImVec2) void;
pub extern fn gcCompactTransientMiscBuffers() void;
pub extern fn gcCompactTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn gcAwakeTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn errorLog(msg: [*c]const u8) bool;
pub extern fn errorRecoveryStoreState(state_out: [*c]ImGuiErrorRecoveryState) void;
pub extern fn errorRecoveryTryToRecoverState(state_in: [*c]const ImGuiErrorRecoveryState) void;
pub extern fn errorRecoveryTryToRecoverWindowState(state_in: [*c]const ImGuiErrorRecoveryState) void;
pub extern fn errorCheckUsingSetCursorPosToExtendParentBoundaries() void;
pub extern fn errorCheckEndFrameFinalizeErrorTooltip() void;
pub extern fn beginErrorTooltip() bool;
pub extern fn endErrorTooltip() void;
pub extern fn debugAllocHook(info: [*c]ImGuiDebugAllocInfo, frame_count: c_int, ptr: ?*anyopaque, size: usize) void;
pub extern fn debugDrawCursorPos(col: ImU32) void;
pub extern fn debugDrawLineExtents(col: ImU32) void;
pub extern fn debugDrawItemRect(col: ImU32) void;
pub extern fn debugTextUnformattedWithLocateItem(line_begin: [*c]const u8, line_end: [*c]const u8) void;
pub extern fn debugLocateItem(target_id: ImGuiID) void;
pub extern fn debugLocateItemOnHover(target_id: ImGuiID) void;
pub extern fn debugLocateItemResolveWithLastItem() void;
pub extern fn debugBreakClearData() void;
pub extern fn debugBreakButton(label: [*c]const u8, description_of_location: [*c]const u8) bool;
pub extern fn debugBreakButtonTooltip(keyboard_only: bool, description_of_location: [*c]const u8) void;
pub extern fn showFontAtlas(atlas: [*c]ImFontAtlas) void;
pub extern fn debugHookIdInfo(id: ImGuiID, data_type: ImGuiDataType, data_id: ?*const anyopaque, data_id_end: ?*const anyopaque) void;
pub extern fn debugNodeColumns(columns: [*c]ImGuiOldColumns) void;
pub extern fn debugNodeDockNode(node: ?*ImGuiDockNode, label: [*c]const u8) void;
pub extern fn debugNodeDrawList(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP, draw_list: [*c]const ImDrawList, label: [*c]const u8) void;
pub extern fn debugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list: [*c]ImDrawList, draw_list: [*c]const ImDrawList, draw_cmd: [*c]const ImDrawCmd, show_mesh: bool, show_aabb: bool) void;
pub extern fn debugNodeFont(font: [*c]ImFont) void;
pub extern fn debugNodeFontGlyph(font: [*c]ImFont, glyph: ?*const ImFontGlyph) void;
pub extern fn debugNodeStorage(storage: [*c]ImGuiStorage, label: [*c]const u8) void;
pub extern fn debugNodeTabBar(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8) void;
pub extern fn debugNodeTable(table: ?*ImGuiTable) void;
pub extern fn debugNodeTableSettings(settings: [*c]ImGuiTableSettings) void;
pub extern fn debugNodeInputTextState(state: [*c]ImGuiInputTextState) void;
pub extern fn debugNodeTypingSelectState(state: [*c]ImGuiTypingSelectState) void;
pub extern fn debugNodeMultiSelectState(state: [*c]ImGuiMultiSelectState) void;
pub extern fn debugNodeWindow(window: ?*ImGuiWindow, label: [*c]const u8) void;
pub extern fn debugNodeWindowSettings(settings: [*c]ImGuiWindowSettings) void;
pub extern fn debugNodeWindowsList(windows: [*c]ImVector_ImGuiWindowPtr, label: [*c]const u8) void;
pub extern fn debugNodeWindowsListByBeginStackParent(windows: [*c]?*ImGuiWindow, windows_size: c_int, parent_in_begin_stack: ?*ImGuiWindow) void;
pub extern fn debugNodeViewport(viewport: [*c]ImGuiViewportP) void;
pub extern fn debugNodePlatformMonitor(monitor: [*c]ImGuiPlatformMonitor, label: [*c]const u8, idx: c_int) void;
pub extern fn debugRenderKeyboardPreview(draw_list: [*c]ImDrawList) void;
pub extern fn debugRenderViewportThumbnail(draw_list: [*c]ImDrawList, viewport: [*c]ImGuiViewportP, bb: ImRect) void;
pub extern fn ImFontAtlasGetBuilderForStbTruetype() [*c]const ImFontBuilderIO;
pub extern fn ImFontAtlasUpdateSourcesPointers(atlas: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlasBuildInit(atlas: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlasBuildSetupFont(atlas: [*c]ImFontAtlas, font: [*c]ImFont, src: [*c]ImFontConfig, ascent: f32, descent: f32) void;
pub extern fn ImFontAtlasBuildPackCustomRects(atlas: [*c]ImFontAtlas, stbrp_context_opaque: ?*anyopaque) void;
pub extern fn ImFontAtlasBuildFinish(atlas: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlasBuildRender8bppRectFromString(atlas: [*c]ImFontAtlas, x: c_int, y: c_int, w: c_int, h: c_int, in_str: [*c]const u8, in_marker_char: u8, in_marker_pixel_value: u8) void;
pub extern fn ImFontAtlasBuildRender32bppRectFromString(atlas: [*c]ImFontAtlas, x: c_int, y: c_int, w: c_int, h: c_int, in_str: [*c]const u8, in_marker_char: u8, in_marker_pixel_value: c_uint) void;
pub extern fn ImFontAtlasBuildMultiplyCalcLookupTable(out_table: [*c]u8, in_multiply_factor: f32) void;
pub extern fn ImFontAtlasBuildMultiplyRectAlpha8(table: [*c]const u8, pixels: [*c]u8, x: c_int, y: c_int, w: c_int, h: c_int, stride: c_int) void;
pub extern fn ImFontAtlasBuildGetOversampleFactors(src: [*c]const ImFontConfig, out_oversample_h: [*c]c_int, out_oversample_v: [*c]c_int) void;
pub extern fn ImFontAtlasGetMouseCursorTexData(atlas: [*c]ImFontAtlas, cursor_type: ImGuiMouseCursor, out_offset: [*c]ImVec2, out_size: [*c]ImVec2, out_uv_border: [*c]ImVec2, out_uv_fill: [*c]ImVec2) bool;
pub extern fn logText(fmt: [*c]const u8, ...) void;
pub extern fn GET_FLT_MAX() f32;
pub extern fn GET_FLT_MIN() f32;
