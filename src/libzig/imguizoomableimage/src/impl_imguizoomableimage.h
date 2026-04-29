#include <stdbool.h>

# define CIMGUI_API
# ifdef _MSC_VER
  typedef unsigned __int64 ImU64;
# else
  typedef unsigned long long ImU64;
# endif
typedef ImU64 ImTextureID;
typedef struct ImTextureData ImTextureData;
typedef struct ImTextureRef_c ImTextureRef_c;
struct ImTextureRef_c {
  ImTextureData* _TexData;
  ImTextureID _TexID;
};
typedef struct ImVec2_c ImVec2_c;
struct ImVec2_c
{
  float x, y;
};
typedef struct ImVec4_c ImVec4_c;
struct ImVec4_c
{
  float x, y, z, w;
};

#include "cimgui_zoomable_image.h"
