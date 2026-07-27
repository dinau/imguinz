
pub const GLuint = c_uint;
pub extern fn saveImage(fname: [*c]const u8, xs: GLuint, ys: GLuint, imageWidth: c_int, imageHeight: c_int, comp: c_int, quality: c_int) void;
