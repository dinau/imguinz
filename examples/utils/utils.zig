const std = @import("std");
const ig = @import ("cimgui");

//---------------
//--- existsFile
//---------------
pub fn existsFile(fname:[]const u8) !bool {
  var file = std.fs.cwd().createFile(fname, .{ .exclusive = true }) catch |e|
    switch (e) {
      error.PathAlreadyExists => {
        return true;
    },
    else => return e,
  };
  defer file.close();
  return false;
}

//---------------
//--- setTooltip
//---------------
pub fn setTooltip(str:[:0]const u8, delay:ig.ImGuiHoveredFlags) void{
  if(ig.igIsItemHovered(delay)){
    if(ig.igBeginTooltip()){
      ig.igText(str.ptr);
      ig.igEndTooltip();
    }
  }
}

//-----------------
//--- setTooltipEx
//-----------------
pub fn setTooltipEx(str:[:0]const u8, delay:ig.ImGuiHoveredFlags, color:ig.ImVec4) void{
  if(ig.igIsItemHovered(delay)){
    if(ig.igBeginTooltip()){
      ig.igPushStyleColor_Vec4(ig.ImGuiCol_Text, color);
      ig.igText(str.ptr);
      ig.igPopStyleColor(1);
      ig.igEndTooltip();
    }
  }
}

//---------
//--- vec2
//---------
pub fn vec2(x:f32, y:f32) ig.ImVec2 {
  return .{.x = x, .y = y};
}

//---------
//--- vec4
//---------
pub fn vec4(x:f32, y:f32, z:f32, w:f32) ig.ImVec4 {
  return .{.x = x, .y = y, .z = z, .w = w};
}
