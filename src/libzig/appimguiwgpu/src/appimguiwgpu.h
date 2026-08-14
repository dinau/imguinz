#ifndef APPIMGUI_WRAPPER_H
#define APPIMGUI_WRAPPER_H

#include <stdint.h>
#include <stdbool.h>

#include "dcimgui.h"
#include "setupFonts.h"
#include "IconsFontAwesome6.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Window Window;

typedef enum {
    THEME_LIGHT = 0,
    THEME_DARK = 1,
    THEME_CLASSIC = 2,
    THEME_MICROSOFT = 3
} Theme;

typedef struct {
  bool docking;
  bool viewport;
  char* title_bar_icon_name;
} COpts;

Window* createImGui_c(int32_t w, int32_t h, const char* title, COpts* opts);

void destroyImGui_c(Window* win);
void render_c(Window* win);
void frame_c(Window* win);
bool shouldClose_c(Window* win);
void pollEvents_c(Window* win);
bool isIconified_c(Window* win);
void showInfoWindow_c(Window* win);
int32_t setTheme_c(int32_t theme);

#ifdef __cplusplus
}
#endif

#endif // APPIMGUI_WRAPPER_H
