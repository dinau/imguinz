#include <stdio.h>
//#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#include <GL/gl.h>
#include <GL/glext.h>
#include <GLFW/glfw3.h>


//#define STB_IMAGE_STATIC
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include "loadicon.h"

#define false 0
#define true (!false)

/*-------------
 * existFile()
 * -----------*/
static unsigned int existsFile(const char* path) {
  if (path == NULL){
    return false;
  }
  FILE* fp = fopen(path, "r");
  if (fp == NULL) return false;
  fclose(fp);
  return true;
}

/*--------------------
 * LoadTitleBarIcon()
 * ------------------*/
//void LoadTitleBarIcon(GLFWwindow* window, const char* iconName) {
void LoadTitleBarIcon(void* window, const char* iconName) {
  int width, height, channels;
  unsigned char*  pixels = 0;
  if (existsFile(iconName)) {
    pixels = stbi_load(iconName, &width, &height, &channels, 0);
    const GLFWimage img  = {.width = width, .height = height, .pixels = pixels};
    glfwSetWindowIcon((GLFWwindow*)window, 1, &img);
    stbi_image_free(pixels);
  } else {
    printf("\nNot found: %s", iconName);
    glfwSetWindowIcon((GLFWwindow*)window, 0, NULL);
  }
}
