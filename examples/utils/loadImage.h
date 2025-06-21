#pragma once

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

//#include "GLFW/glfw3.h"
typedef unsigned int gluint;
unsigned int  LoadTextureFromFile(const char* filename, gluint* out_texture, int* out_width, int* out_height);
void loadTextureFromBuffer(gluint* textureID, int xs, int ys, int imageWidth, int imageHeight);

//#ifdef CIMGUI_USE_GLFW
//void LoadTitleBarIcon(GLFWwindow* window, const char* iconName);
void LoadTitleBarIcon(void* window, const char* iconName);
//#endif

#ifdef __cplusplus
}
#endif /* __cplusplus */
