#include <float.h>
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

#define CIMGUI_DEFINE_ENUMS_AND_STRUCTS
#include "cimgui.h"
#include "utils.h"
#include "setupFonts.h"

#define ImGui_GetIO igGetIO

const char* IconFontPath = "../utils/fonticon/fa6/fa-solid-900.ttf";
char sBufFontPath[2048];

/*-----------------
 * getFontPath()
 *----------------*/
const char* WinJpFontName   = "meiryo.ttc";

char* getWinFontPath(char* sBuf, int bufSize, const char* fontName) {
  char* sWinDir = getenv("windir");
  if (sWinDir == NULL) return NULL;
  snprintf(sBuf, bufSize, "%s\\Fonts\\%s", sWinDir, fontName);
  return sBuf;
}
/*-----------------
 * getLinuxFontPath()
 *----------------*/
// For Linux Mint 22 (Ubuntu/Debian family ok ?)
char* LinuxJpFontName = "/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc"; // ,"Noto Sans CJK",12.0) # Linux Mint

/*------------
 * point2px()
 *-----------*/
float point2px(float point) {
  //## Convert point to pixel
  return (point * 96) / 72;
}

const ImWchar ranges_icon_fonts[]  = {(ImWchar)ICON_MIN_FA, (ImWchar)ICON_MAX_FA, (ImWchar)0};
/*--------------
 * setupFonts()
 *-------------*/
void setupFonts(void) {
  ImGuiIO* pio = ImGui_GetIO();
  ImFontAtlas_AddFontDefault(pio->Fonts, NULL);
  ImFontConfig* config  = ImFontConfig_ImFontConfig();
  config->MergeMode = true;
  ImFontAtlas_AddFontFromFileTTF(pio->Fonts, IconFontPath, point2px(10), config , ranges_icon_fonts);

  char* fontPath = getWinFontPath(sBufFontPath, sizeof(sBufFontPath), WinJpFontName);
  if (existsFile(fontPath)) {
    // ok
  }else{
    fontPath = LinuxJpFontName;
    if (existsFile(LinuxJpFontName)) {
      // ok
    }else{
      printf("Error!: Not found FontPath: [%s] in %s\n", fontPath, __FILE__);
      return;
    }
  }
  printf("Found JpFontPath: [%s]\n",fontPath);

  ImFont* font = ImFontAtlas_AddFontFromFileTTF(pio->Fonts, fontPath, point2px(14)
                                , config
                                , ImFontAtlas_GetGlyphRangesJapanese(pio->Fonts));
  if (font == NULL) {
    printf("Error!: AddFontFromFileTTF():  [%s] \n", fontPath);
  }
}
