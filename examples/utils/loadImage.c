#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

#include <GL/gl.h>
#include <GL/glext.h>
#ifdef CIMGUI_USE_GLFW
#include <GLFW/glfw3.h>
#endif

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include "utils.h"


// Simple helper function to load an image into a OpenGL texture with common settings
bool LoadTextureFromFile(const char* imageName, GLuint* out_texture, int* out_width, int* out_height) {
  unsigned char* image_data = NULL;
  if (!existsFile(imageName)) {
    printf("\nError!: Image file not found  error: %s", imageName);
    return false;
  }
  // Load from file
  image_data = stbi_load(imageName, out_width, out_height, NULL, 4);
  if (image_data == NULL) {
    *out_texture = (GLuint)0;
    printf("\nError!: Image load error:  %s", imageName);
    return false;
  }
  // Create a OpenGL texture identifier
  glGenTextures(1, out_texture);
  glBindTexture(GL_TEXTURE_2D, *out_texture);

  // Setup filtering parameters for display
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE); // This is required on WebGL for non power-of-two textures
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE); // Same

  // Upload pixels into texture
#if defined(GL_UNPACK_ROW_LENGTH) && !defined(__EMSCRIPTEN__)
  glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
#endif
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, *out_width, *out_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, image_data);
  // Free image memory
  stbi_image_free(image_data);

  return true;
}

#ifdef CIMGUI_USE_GLFW
/*--------------------
 * LoadTitleBarIcon()
 * ------------------*/
void LoadTitleBarIcon(GLFWwindow* window, const char* iconName) {
  int width, height, channels;
  unsigned char*  pixels = 0;
  if (existsFile(iconName)) {
    pixels = stbi_load(iconName, &width, &height, &channels, 0);
    const GLFWimage img  = {.width = width, .height = height, .pixels = pixels};
    glfwSetWindowIcon(window, 1, &img);
    stbi_image_free(pixels);
  } else {
    printf("\nNot found: %s", iconName);
    glfwSetWindowIcon(window, 0, NULL);
  }
}
#endif
