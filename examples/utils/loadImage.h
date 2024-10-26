#pragma once

bool LoadTextureFromFile(const char* filename, GLuint* out_texture, int* out_width, int* out_height);
void loadTextureFromBuffer(GLuint* textureID, int xs, int ys, int imageWidth, int imageHeight);

#ifdef CIMGUI_USE_GLFW
void LoadTitleBarIcon(GLFWwindow* window, const char* iconName);
#endif
