#if !defined(CIMGUI_API)
  #define CIMGUI_API
#endif
#include "stdio.h"   // for size_t type
#include "stdbool.h" // for bool type

typedef struct ImVec4_c ImVec4_c;
struct ImVec4_c
{
    float x, y, z, w;
};
struct ImColor_c
{
    ImVec4_c Value;
};
typedef struct ImColor_c ImColor_c;
typedef struct ImColor_c ImColor;
#include "cimspinner.h"
