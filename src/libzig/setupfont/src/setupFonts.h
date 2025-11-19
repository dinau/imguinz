#pragma once
#include <stdbool.h>

#define CIMGUI_DEFINE_ENUMS_AND_STRUCTS
#include "cimgui.h"

ImFont* setupFonts(void);
bool existFile(const char* path);
