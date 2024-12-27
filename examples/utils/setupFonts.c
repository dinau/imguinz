#include <float.h>
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

#define CIMGUI_DEFINE_ENUMS_AND_STRUCTS
#include "cimgui.h"
#include "utils.h"
#include "setupFonts.h"

#define ImGui_GetIO igGetIO

#define MAX_PATH  2048
const char* IconFontPath = "../utils/fonticon/fa6/fa-solid-900.ttf";
char sBufFontPath[MAX_PATH];

char WinFontNameTbl[][MAX_PATH] = {
                                  "meiryo.ttc"     // Windows 7,8
                                 ,"YuGothM.ttc"    // Windows 10
                                 ,"segoeui.ttf"    // English standard
                                 };
char LinuxFontNameTbl[][MAX_PATH] = { // For Linux Mint 22 (Ubuntu/Debian family ok ?)
                            "/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc"          // JP
                           ,"/usr/share/fonts/opentype/ipafont-gothic/ipag.ttf"               // Debian
                           ,"/usr/share/fonts/opentype/ipafont-gothic/ipam.ttf"               // Debian
                           ,"/usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf" // Linux Mint English
                           };

/*-----------------
 * getWinFontPath()
 *----------------*/
char* getWinFontPath(char* sBuf, int bufSize, const char* fontName) {
  char* sWinDir = getenv("windir");
  if (sWinDir == NULL) return NULL;
  snprintf(sBuf, bufSize, "%s\\Fonts\\%s", sWinDir, fontName);
  return sBuf;
}

/*------------
 * point2px()
 *-----------*/
float point2px(float point) { //## Convert point to pixel
  return (point * 96) / 72;
}

const ImWchar ranges_icon_fonts[]  = {(ImWchar)ICON_MIN_FA, (ImWchar)ICON_MAX_FA, (ImWchar)0};
/*--------------
 * setupFonts()
 *-------------*/
void setupFonts(void) {
  ImGuiIO* pio = ImGui_GetIO();
  ImFontConfig* config  = ImFontConfig_ImFontConfig();
  ImFont* font = NULL;
  char* fontPath;
  int tableLen = sizeof(WinFontNameTbl) / MAX_PATH;
  for(int i=0; i<tableLen; i++){
    fontPath = getWinFontPath(sBufFontPath, sizeof(sBufFontPath), WinFontNameTbl[i]);
    if (existsFile(fontPath)) {
      font = ImFontAtlas_AddFontFromFileTTF(pio->Fonts, fontPath, point2px(14.5)
          , config
          , ImFontAtlas_GetGlyphRangesJapanese(pio->Fonts));
      printf("Found FontPath: [%s]\n",fontPath);
      break;
    }
  }
  tableLen = sizeof(LinuxFontNameTbl) / MAX_PATH;
  for(int i=0; i<tableLen; i++){
    fontPath = LinuxFontNameTbl[i];
    if (existsFile(fontPath)) {
      font = ImFontAtlas_AddFontFromFileTTF(pio->Fonts, fontPath, point2px(13)
          , config
          , ImFontAtlas_GetGlyphRangesJapanese(pio->Fonts));
      printf("Found FontPath: [%s]\n",fontPath);
      break;
    }
  }
  if (font == NULL) {
    printf("Error!: Font loading falied: in %s\n", __FILE__);
    printf("Default has been set.\n");
    ImFontAtlas_AddFontDefault(pio->Fonts, NULL);
  }
  // Merge IconFont
  config->MergeMode = true;
  ImFontAtlas_AddFontFromFileTTF(pio->Fonts, IconFontPath, point2px(11), config , ranges_icon_fonts);
}
