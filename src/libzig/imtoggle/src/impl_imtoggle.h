#if !defined(CIMGUI_API)
  #define CIMGUI_API
#endif
#include "stdio.h"   // for size_t type

typedef struct ImVec4_c ImVec4_c;
typedef struct ImVec4_c ImVec4;
typedef struct ImVec2_c ImVec2;
struct ImVec2_c
{
    float x, y;
};

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
#include "cimgui_toggle.h"
