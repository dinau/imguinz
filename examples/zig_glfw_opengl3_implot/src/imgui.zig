pub usingnamespace @cImport ({
  @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
  @cInclude ("GLFW/glfw3.h");
  @cInclude ("cimgui.h");
  @cInclude ("cimgui_impl.h");
//
  @cInclude ("loadImage.h");
  @cInclude ("saveImage.h");
  @cInclude ("stb_image.h");
});
