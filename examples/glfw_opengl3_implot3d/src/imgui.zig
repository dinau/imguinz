pub usingnamespace @cImport ({
  @cInclude ("GLFW/glfw3.h");

  @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
  @cInclude ("cimgui.h");
  @cInclude ("cimgui_impl.h");
//
  @cInclude ("loadImage.h");
  @cInclude ("saveImage.h");
  @cInclude ("stb_image.h");
});
