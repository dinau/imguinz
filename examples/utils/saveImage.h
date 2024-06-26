#pragma once

#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <ctype.h>
#include <GL/gl.h>

void saveImage(char* fname, GLuint xs, GLuint ys, int imageWidth, int imageHeight, int comp /* = RGB*/, int quality /* = 90*/);
