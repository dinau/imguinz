pub usingnamespace @cImport({
    @cInclude("GLFW/glfw3.h");
    @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    @cDefine("CIMGUI_USE_GLFW", "");
    @cDefine("CIMGUI_USE_OPENGL3", "");
    @cInclude("cimgui.h");
    @cInclude("cimgui_impl.h");
    @cInclude("themeGold.h"); // Theme Gold

    @cInclude("cimgui_toggle.h"); // CImGui-Togggle

});
