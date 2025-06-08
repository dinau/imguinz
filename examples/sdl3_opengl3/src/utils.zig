const std = @import ("std");
const builtin = @import ("builtin");
const ig = @import ("imgui.zig");
const fonts = @import("fonts.zig");

//--------------
//--- zoomGlass
//--------------
pub fn zoomGlass(pTextureID:*ig.GLuint, itemWidth:i32, itemPosTop:ig.ImVec2, itemPosEnd:ig.ImVec2) void {
  //# itemPosTop and itemPosEnd are absolute position in main window.
  if(ig.igBeginItemTooltip()){
    defer ig.igEndTooltip();
    const itemHeight:i32 = @intFromFloat(itemPosEnd.y - itemPosTop.y);
    const my_tex_w:f32 = @floatFromInt(itemWidth);
    const my_tex_h:f32 = @floatFromInt(itemHeight);
    const wkSize = ig.igGetMainViewport().*.WorkSize;
    ig.loadTextureFromBuffer(pTextureID                           //# TextureID
                        , @intFromFloat(itemPosTop.x)             //# x start pos
                        , @intFromFloat(wkSize.y - itemPosEnd.y)  //# y start pos
                        , itemWidth ,itemHeight);                 //# Image width and height must be 2^n.
    //#igText("lbp: (%.2f, %.2f)", pio.MousePos.x, pio.MousePos.y)
    const pio = ig.igGetIO_Nil();
    const region_sz = 32.0;
    var region_x = pio.*.MousePos.x - itemPosTop.x - region_sz * 0.5;
    var region_y = pio.*.MousePos.y - itemPosTop.y - region_sz * 0.5;
    const zoom = 4.0;
    if(region_x < 0.0){
      region_x = 0.0;
    }
    else if(region_x > (my_tex_w - region_sz)){
      region_x = my_tex_w - region_sz;
    }
    if(region_y < 0.0){
      region_y = 0.0;
    } else if(region_y > my_tex_h - region_sz){
      region_y = my_tex_h - region_sz;
    }
    const uv0 = ig.ImVec2{.x = region_x / my_tex_w, .y = region_y / my_tex_h};
    const uv1 = ig.ImVec2{.x = (region_x + region_sz) / my_tex_w, .y = (region_y + region_sz) / my_tex_h};
    const tint_col =   ig.ImVec4{.x = 1.0,  .y = 1.0,  .z = 1.0,  .w = 1.0}; // # No tint
    const border_col = ig.ImVec4{.x = 0.22, .y = 0.56, .z = 0.22, .w = 1.0}; // # Green
    ig.igText(fonts.ICON_FA_MAGNIFYING_GLASS ++ "  4 x");
    ig.igImageWithBg(pTextureID.*, ig.ImVec2{.x = region_sz * zoom, .y = region_sz * zoom}, uv0, uv1, tint_col, border_col);
  }
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
