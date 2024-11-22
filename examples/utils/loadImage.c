#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#include <GL/gl.h>
#include <GL/glext.h>
#ifdef CIMGUI_USE_GLFW
#include <GLFW/glfw3.h>
#endif


#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include "utils.h"

//#------------------------
//# loadTextureFromBuffer()
//#------------------------
void loadTextureFromBuffer(GLuint *pTextureID, int xs, int ys, int imageWidth, int imageHeight){
  const GLint comp = 4; //RGBA;
  if(1 > imageWidth || 1 > imageHeight){
    puts("Error!: Rect of image is mismatch");
  }
  uint8_t* texBuffer =  (uint8_t*)malloc(imageWidth * imageHeight * comp);
  uint8_t* dataBuffer = (uint8_t*)malloc(imageWidth * imageHeight * comp);

  //# Specify OpenGL buffer to be read, 'GL_FRONT': Front buffer, 'GL_BACK': Back buffer
  glReadBuffer( GL_BACK );
  //# Read form OpenGL buffer and save to local buffer
  glReadPixels( (GLint)xs, (GLint)ys,                      // # x,y position (left down) at start //0 or getCurrentWidth() - 1
                (GLsizei)imageWidth, (GLsizei)imageHeight, // # width, height to be read
                GL_RGBA,                                   // # Read type
                GL_UNSIGNED_BYTE,                          // # Save type
                texBuffer);                                // # Pointer to pixel data

  // # Fix upside-down of image
  int widthStep = comp * imageWidth;
  int n = 0;
  for(int y = 0; y < imageHeight; y++){
    for(int x = 0; x < imageWidth; x++){
      dataBuffer[ ( imageHeight - y - 1 ) * widthStep + (x * comp) + comp - 4 ] = texBuffer[n + comp - 4]; //# copy R
      dataBuffer[ ( imageHeight - y - 1 ) * widthStep + (x * comp) + comp - 3 ] = texBuffer[n + comp - 3]; //# copy G
      dataBuffer[ ( imageHeight - y - 1 ) * widthStep + (x * comp) + comp - 2 ] = texBuffer[n + comp - 2]; //# copy B
      dataBuffer[ ( imageHeight - y - 1 ) * widthStep + (x * comp) + comp - 1 ] = texBuffer[n + comp - 1]; //# copy A
      n += comp;
    }
  }

  //# Setup filtering parameters for display
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLint)GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLint)GL_LINEAR);
  //# This is required on WebGL for non power-of-two textures
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, (GLint)GL_CLAMP_TO_EDGE);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, (GLint)GL_CLAMP_TO_EDGE);

  //# Upload pixels into texture
  #if defined(GL_UNPACK_ROW_LENGTH) && !defined(__EMSCRIPTEN__)
  //# TODO
  //glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
  #endif

  //# Create a OpenGL texture identifier
  static bool loadReq = false;
  if(*pTextureID == 0){
    glGenTextures(1, pTextureID);
    loadReq = true;
  }
  glBindTexture(GL_TEXTURE_2D, *pTextureID);

  // # Load texture
  int err = 0;
  if(loadReq){
    loadReq = false;
    glTexImage2D(GL_TEXTURE_2D          //# target
                 , 0                    //# level
                 , (GLint)GL_RGBA       //# internal format
                 , (GLsizei)imageWidth  //# widht
                 , (GLsizei)imageHeight //# height
                 , 0                    //# [Border]: 0: Not have border  1: Have border
                                        //# https://stackoverflow.com/questions/913801/what-does-border-mean-in-the-glteximage2d-function
                 , GL_RGBA              //# format
                 , GL_UNSIGNED_BYTE     //# type
                 , dataBuffer);         //# *pixels
  }
  err = glGetError();
  if(err != 0){
    puts("Error!: [0x{err:X}]: glTexImage2D()");
    free(texBuffer);
    free(dataBuffer);
    return;
  }

  //# Update texture
  glTexSubImage2D(GL_TEXTURE_2D          //# target
                  , 0                    //# level
                  , 0, 0                 //# x,y offset
                  , (GLsizei)imageWidth
                  , (GLsizei)imageHeight
                  , GL_RGBA              //# GL_UNSIGNED_INT_8_8_8_8_REV  # is Fast than GL_UNSIGNED_BYTE ?
                  , GL_UNSIGNED_BYTE
                  , dataBuffer);
  err = glGetError();
  if(err != 0){
    puts("Error! [0x{err:X}]: glTexSubImage2D()");
  }
  free(texBuffer);
  free(dataBuffer);
}

// --------------------
// LoadTextureFromFile   Simple helper function to load an image into a OpenGL texture with common settings
// --------------------
bool LoadTextureFromFile(const char* imageName, GLuint* out_texture, int* out_width, int* out_height) {
  if (!existsFile(imageName)) {
    printf("\nError!: Image file not found  error: %s", imageName);
    return false;
  }
  // Load from file
  uint8_t* image_data = stbi_load(imageName, out_width, out_height, NULL, 4);
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
