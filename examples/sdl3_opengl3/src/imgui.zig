pub usingnamespace @cImport ({
  @cInclude ("cimgui.h");
  @cInclude ("cimgui_impl.h");

  @cDefine  ("SDL_ENABLE_OLD_NAMES","");
  @cInclude ("SDL3/SDL.h");
  @cInclude ("SDL3/SDL_opengl.h");
  @cInclude ("SDL3/SDL_mouse.h");

  @cInclude ("loadImage.h");
  @cInclude ("saveImage.h");
  @cInclude ("stb_image.h");
});
