<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [ImGuinZ](#imguinz)
  - [Prerequisites](#prerequisites)
  - [Build and run](#build-and-run)
  - [Available libraries list at this moment](#available-libraries-list-at-this-moment)
  - [Examples screen shots](#examples-screen-shots)
    - [ImGui-Toggle / CImGui-Toggle](#imgui-toggle--cimgui-toggle)
    - [ImGui-Knobs / CImGui-Knobs](#imgui-knobs--cimgui-knobs)
    - [ImSpinner / CImSpinner](#imspinner--cimspinner)
    - [ImNodes / CImNodes](#imnodes--cimnodes)
    - [ImGuizmo / CImGuizmo](#imguizmo--cimguizmo)
    - [Image load](#image-load)
    - [Showing CJK multi byte fonts and input UTF-8 text](#showing-cjk-multi-byte-fonts-and-input-utf-8-text)
    - [Icon font viewer](#icon-font-viewer)
    - [Image load / save](#image-load--save)
    - [glfw_opengl3_implot](#glfw_opengl3_implot)
  - [ImPlot Demo written in Zig lang.](#implot-demo-written-in-zig-lang)
    - [Build and run](#build-and-run-1)
    - [ImPlot demo source in Zig lang.](#implot-demo-source-in-zig-lang)
    - [Plots Tab](#plots-tab)
      - [LinePlots (Dynamic)](#lineplots-dynamic)
      - [BarGroups](#bargroups)
      - [BarStacks](#barstacks)
      - [PieCharts](#piecharts)
      - [Heatmaps](#heatmaps)
      - [Histogram2D](#histogram2d)
      - [Images](#images)
    - [Axes Tab](#axes-tab)
      - [LogScale](#logscale)
    - [Subplots Tab](#subplots-tab)
      - [Tables (Dynamic)](#tables-dynamic)
    - [Tools Tab](#tools-tab)
      - [DragRects](#dragrects)
  - [Show / Hide console window](#show--hide-console-window)
  - [SDL libraries](#sdl-libraries)
    - [Similar project ImGui / CImGui](#similar-project-imgui--cimgui)
    - [SDL game tutorial Platfromer](#sdl-game-tutorial-platfromer)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## ImGuinZ 

![alt](https://github.com/dinau/imguinz/actions/workflows/win_dev.yml/badge.svg)
![alt](https://github.com/dinau/imguinz/actions/workflows/win_rel.yml/badge.svg)  
![alt](https://github.com/dinau/imguinz/actions/workflows/linux_dev.yml/badge.svg)
![alt](https://github.com/dinau/imguinz/actions/workflows/linux_rel.yml/badge.svg)  


This project aims to simply and easily build [Dear ImGui](https://github.com/ocornut/imgui) 
[(CImGui)](https://github.com/cimgui/cimgui) / [ImPlot](https://github.com/epezent/implot) [(CImPlot)](https://github.com/cimgui/cimplot) 
examples in Zig language with less external dependencies.

- ImGui / CImGui version **1.92.0 dock** (2025/07)
- OS: Windows and Linux
- Frontends and Backends 

   |                    | GLFW   | SDL2  | SDL3   |
   | ---                | :----: | :---- | :----: |
   | OpenGL3<br>backend | v      | v     | v      |

- Features 
   - Included [Font Awesome](https://fontawesome.com/search?m=free&o=r) Icon fonts.  
      ![alt](img/icon_font.png)
   - Included GLFW 3.4.0 static library (for Windows)
   - Included SDL2/SDL3 libraries (for Windows)
   - Included STB libraries (only stb_image) for Load / Save images
   - Available [ImPlot](https://github.com/epezent/implot) [(CImPlot)](https://github.com/cimgui/cimplot) with `ImDrawIdx="unsigned int"`
   - Enabled Input method \(IME\) flag with `IMGUI_ENABLE_WIN32_DEFAULT_IME_FUNCTIONS`


### Prerequisites

---

- Zig version confirmed
   1. Windows: [zig-x86_64-windows-0.14.1.zip](https://ziglang.org/download/0.14.1/zig-x86_64-windows-0.14.1.zip)
   1. Linux:   [zig-x86_64-linux-0.14.1.tar.xz](https://ziglang.org/download/0.14.1/zig-x86_64-linux-0.14.1.tar.xz)
   1. zig-0.15.0-dev.885 or later

- WindowsOS
   - Windows10 or later
   - MSys2/MinGW basic commands (make, rm, cp, strip ...)
- Linux OS (Ubuntu / Debian families)

  ```sh
  $ sudo apt install libopengl-dev libgl1-mesa-dev
  ```

  and for glfw3 and sdl2,

  ```sh
  $ sudo apt install libglfw3 libglfw3-dev
  $ sudo apt install libsdl2-dev
  ```

### Build and run

---

1. Download this project.

   ```sh
   git clone --recurse-submodules https://github.com/dinau/imguinz
   ```
1. Go to one of the examples folder,

   ```sh
   cd imguinz/examples/glfw_opengl3
   ```

1. Build and Run 

   ```sh
   make run   # or  zig build --release=fast run
   ```

### Available libraries list at this moment

---

Library name / C lang. wrapper

- [x] [ImGui](https://github.com/ocornut/imgui) / [CImGui](https://github.com/cimgui/cimgui) (2024/11)
- [x] [ImPlot](https://github.com/epezent/implot) / [CImPlot](https://github.com/cimgui/cimplot)
- [ ] [ImPlot3d](https://github.com/brenocq/implot3d) / [CImPlot3d](https://github.com/cimgui/cimplot3d) 
- [x] [ImNodes](https://github.com/Nelarius/imnodes) / [CImNodes](https://github.com/cimgui/cimnodes) (2025/06)
- [x] [ImGuizmo](https://github.com/CedricGuillemet/ImGuizmo) / [CImGuizmo](https://github.com/cimgui/cimguizmo) (2025/07) 
- [x] [ImGui-Knobs](https://github.com/altschuler/imgui-knobs) / [CImGui-Knobs](https://github.com/dinau/imguin/tree/main/src/imguin/private/cimgui-knobs) (2025/05)
- [ ] [ImGuiFileDialog](https://github.com/aiekick/ImGuiFileDialog) / [CImGuiFileDialog](https://github.com/dinau/CImGuiFileDialog)
- [x] [ImGui_Toggle](https://github.com/cmdwtf/imgui_toggle) / [CimGui_Toggle](https://github.com/dinau/cimgui_toggle) (2025/05)
- [x] [ImSpinner](https://github.com/dalerank/imspinner) / [CImSpinner](https://github.com/dinau/cimspinner) (2025/05)
- [ ] [ImGuiColorTextEdit](https://github.com/santaclose/ImGuiColorTextEdit) / [cimCTE](https://github.com/cimgui/cimCTE) (2025)
- [ ] [ImGui_Markdown](https://github.com/enkisoftware/imgui_markdown) 
### Examples screen shots 

####  [ImGui-Toggle](https://github.com/cmdwtf/imgui_toggle) / [CImGui-Toggle](https://github.com/dinau/cimgui_toggle)

---

[glfw_opengl3_imgui_toggle.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imgui_toggle/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imtoggle.png)  

####  [ImGui-Knobs](https://github.com/altschuler/imgui-knobs) / [CImGui-Knobs](https://github.com/dinau/cimgui-knobs)

---

[glfw_opengl3_imknobs.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imknobs/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imknobs.png)  

#### [ImSpinner](https://github.com/dalerank/imspinner) / [CImSpinner](https://github.com/dinau/cimspinner)

---

[glfw_opengl3_imspinner.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imspinner/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imspinner.gif)

#### [ImNodes](https://github.com/Nelarius/imnodes) / [CImNodes](https://github.com/cimgui/cimnodes)

---

[glfw_opengl3_imnodes.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imnodes/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imnodes.png)


#### [ImGuizmo](https://github.com/CedricGuillemet/ImGuizmo) / [CImGuizmo](https://github.com/cimgui/cimguizmo)

---


[glfw_opengl3_imguizmo.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_imguizmo/src/main.zig)  

![alt](https://github.com/dinau/imguinz/raw/main/img/imguizmo.png)

#### Image load 

---

Image load and magnifying glass


[glfw_opengl3.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3/src/main.zig) / 
[sdl2_opengl3.zig](https://github.com/dinau/imguinz/blob/main/examples/sdl2_opengl3/src/main.zig) / 
[sdl3_opengl3.zig](https://github.com/dinau/imguinz/blob/main/examples/sdl3_opengl3/src/main.zig)

![alt](https://github.com/dinau/imguinz/raw/main/img/sdl2_opengl3.png)

#### Showing CJK multi byte fonts and input UTF-8 text 

---

[glfw_opengl3_jp.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_jp/src/main.zig)

![alt](https://github.com/dinau/imguinz/raw/main/img/glfw_opengl3_jp.png)

#### Icon font viewer

---

[iconFontViewer.zig](https://github.com/dinau/imguinz/blob/main/examples/iconFontViewer/src/main.zig), magnifying glass, incremental search

![alt](https://github.com/dinau/imguinz/raw/main/img/iconFontViewer.png)

#### Image load / save

---

Image load / save and magnifying glass.  
Image file captured would be saved in .the folder `./zig-out/bin`.  
Image can be saved as `JPEG / PNG / BMP / TGA` file.

[glfw_opengl3_image_load.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_image_load/src/main.zig) 

![alt](https://github.com/dinau/imguinz/raw/main/img/glfw_opengl3_image_load.png)  

#### glfw_opengl3_implot

---

[glfw_opengl3_implot.zig](https://github.com/dinau/imguinz/blob/main/examples/glfw_opengl3_implot/src/main.zig)

![alt](https://github.com/dinau/imguinz/raw/main/img/glfw_opengl3_implot.png)

### ImPlot Demo written in Zig lang.

---

Now work in progress.


#### Build and run

```sh
pwd
examples/imPlotDemo
make run   # or zig build --release=fast run
```

#### ImPlot demo source in Zig lang.

---

[demoAll.zig](https://github.com/dinau/imguinz/blob/main/examples/imPlotDemo/src/demoAll.zig)

#### Plots Tab

---

##### LinePlots (Dynamic)

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/LinePlots.png)
##### BarGroups

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/BarGroups.png)

##### BarStacks

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/BarStacks.png)

##### PieCharts

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/PieCharts.png)

##### Heatmaps

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/Heatmaps.png)

##### Histogram2D

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/Histogram2D.png)

##### Images

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/Images.png)

#### Axes Tab

---

##### LogScale

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/LogScale.png)

#### Subplots Tab

---

##### Tables (Dynamic)

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/Tables.png)

#### Tools Tab

---

##### DragRects 

![alt](https://github.com/dinau/imguinz/raw/main/examples/imPlotDemo/img/DragRects.png)


### Show / Hide console window

---

Open `build.zig` in each example folder and   
Hide console window: Default,  
Show console window: Comment out this line as follows,

  ```zig
  ... snip ...
  //exe.subsystem = .Windows;  // Hide console window
  ... snip ...
  ```

  and rebuild example.

### SDL libraries

---

https://github.com/libsdl-org/SDL/releases

#### Similar project ImGui / CImGui

---

| Language [^order]    |          | Project                                                                                                                                         |
| -------------------: | :---:    | :----------------------------------------------------------------:                                                                              |
| **Lua**              | Script   | [LuaJITImGui](https://github.com/dinau/luajitImGui)                                                                                             |
| **NeLua**            | Compiler | [NeLuaImGui](https://github.com/dinau/neluaImGui)                                                                                               |
| **Nim**              | Compiler | [ImGuin](https://github.com/dinau/imguin), [Nimgl_test](https://github.com/dinau/nimgl_test), [Nim_implot](https://github.com/dinau/nim_implot) |
| **Python**           | Script   | [DearPyGui for 32bit WindowsOS Binary](https://github.com/dinau/DearPyGui32/tree/win32)                                                         |
| **Ruby**             | Script   | [igRuby_Examples](https://github.com/dinau/igruby_examples)                                                                                     |
| **Zig**, C lang.     | Compiler | [Dear_Bindings_Build](https://github.com/dinau/dear_bindings_build)                                                                             |
| **Zig**              | Compiler | [ImGuinZ](https://github.com/dinau/imguinz)                                                                                                     |


#### SDL game tutorial Platfromer

---

![ald](https://github.com/dinau/nelua-platformer/raw/main/img/platformer-nelua-sdl2.gif)


| Language    [^order] |          | SDL         | Project                                                                                                                                               |
| -------------------: | :---:    | :---:       | :----------------------------------------------------------------:                                                                                    |
| **LuaJIT**           | Script   | SDL2        | [LuaJIT-Platformer](https://github.com/dinau/luajit-platformer)
| **Nelua**            | Compiler | SDL2        | [NeLua-Platformer](https://github.com/dinau/nelua-platformer)
| **Nim**              | Compiler | SDL3 / SDL2 | [Nim-Platformer-sdl2](https://github.com/def-/nim-platformer)/ [Nim-Platformer-sdl3](https://github.com/dinau/sdl3_nim/tree/main/examples/platformer) |
| **Ruby**             | Script   | SDL3        | [Ruby-Platformer](https://github.com/dinau/ruby-platformer)                                                                                           |
| **Zig**              | Compiler | SDL2        | [Zig-Platformer](https://github.com/dinau/zig-platformer)                                                                                             |

[^order]: Alphabectial order
