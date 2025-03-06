pub usingnamespace @import("zimplot.zig");
pub usingnamespace @cImport ({
  @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
  @cInclude ("cimplot.h");
});
