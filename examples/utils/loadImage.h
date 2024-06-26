#pragma once

bool LoadTextureFromFile(const char* filename, GLuint* out_texture, int* out_width, int* out_height);

#ifdef CIMGUI_USE_GLFW
unsigned char* LoadTitleBarIcon(GLFWwindow* window, const char* iconName);
#endif
