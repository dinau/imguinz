pub const gluint = c_uint;
pub extern fn LoadTextureFromFile(filename: [*c]const u8, out_texture: [*c]gluint, out_width: [*c]c_int, out_height: [*c]c_int) c_uint;
pub extern fn loadTextureFromBuffer(textureID: [*c]gluint, xs: c_int, ys: c_int, imageWidth: c_int, imageHeight: c_int) void;
pub extern fn LoadTitleBarIcon(window: ?*anyopaque, iconName: [*c]const u8) void;
