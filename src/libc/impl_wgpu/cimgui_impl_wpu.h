// cimgui_impl_wgpu.h
// Auto-generated-style C wrapper for imgui_impl_wgpu.h, following the cimgui project's
// conventions (https://github.com/cimgui/cimgui, MIT License, Copyright (c) 2015 Stephan Dilly).
// Wraps Dear ImGui's WebGPU backend (https://github.com/ocornut/imgui, MIT License).



#ifdef CIMGUI_USE_WGPU
#include <webgpu/webgpu.h>
#if defined(IMGUI_IMPL_WEBGPU_BACKEND_WGPU) && !defined(__EMSCRIPTEN__)
#include <webgpu/wgpu.h>
#endif

#ifdef CIMGUI_DEFINE_ENUMS_AND_STRUCTS

typedef struct ImGui_ImplWGPU_InitInfo ImGui_ImplWGPU_InitInfo;
struct ImGui_ImplWGPU_InitInfo
{
    WGPUDevice              Device;
    int                     NumFramesInFlight;
    WGPUTextureFormat       RenderTargetFormat;
    WGPUTextureFormat       DepthStencilFormat;
    WGPUMultisampleState    PipelineMultisampleState;
};

typedef struct ImGui_ImplWGPU_RenderState ImGui_ImplWGPU_RenderState;
struct ImGui_ImplWGPU_RenderState
{
    WGPUDevice              Device;
    WGPURenderPassEncoder   RenderPassEncoder;
};

#ifndef __EMSCRIPTEN__
typedef struct ImGui_ImplWGPU_CreateSurfaceInfo ImGui_ImplWGPU_CreateSurfaceInfo;
struct ImGui_ImplWGPU_CreateSurfaceInfo
{
    WGPUInstance    Instance;
    const char*     System;      // "cocoa"   | "wayland"   | "x11"     | "win32"
    void*           RawWindow;   // NSWindow* | 0           | Window    | HWND
    void*           RawDisplay;  // 0         | wl_display* | Display*  | 0
    void*           RawSurface;  //           | wl_surface* | 0         | 0
    void*           RawInstance; // 0         | 0           | 0         | HINSTANCE
};
#endif // #ifndef __EMSCRIPTEN__

#endif //CIMGUI_DEFINE_ENUMS_AND_STRUCTS

CIMGUI_API bool ImGui_ImplWGPU_Init(ImGui_ImplWGPU_InitInfo* init_info);
CIMGUI_API void ImGui_ImplWGPU_Shutdown(void);
CIMGUI_API void ImGui_ImplWGPU_NewFrame(void);
CIMGUI_API void ImGui_ImplWGPU_RenderDrawData(ImDrawData* draw_data,WGPURenderPassEncoder pass_encoder);
CIMGUI_API bool ImGui_ImplWGPU_CreateDeviceObjects(void);
CIMGUI_API void ImGui_ImplWGPU_InvalidateDeviceObjects(void);
CIMGUI_API void ImGui_ImplWGPU_UpdateTexture(ImTextureData* tex);

CIMGUI_API bool ImGui_ImplWGPU_IsSurfaceStatusError(WGPUSurfaceGetCurrentTextureStatus status);
CIMGUI_API bool ImGui_ImplWGPU_IsSurfaceStatusSubOptimal(WGPUSurfaceGetCurrentTextureStatus status);
CIMGUI_API void ImGui_ImplWGPU_DebugPrintAdapterInfo(WGPUAdapter adapter);
CIMGUI_API const char* ImGui_ImplWGPU_GetBackendTypeName(WGPUBackendType type);
CIMGUI_API const char* ImGui_ImplWGPU_GetAdapterTypeName(WGPUAdapterType type);
#if defined(IMGUI_IMPL_WEBGPU_BACKEND_DAWN)
CIMGUI_API const char* ImGui_ImplWGPU_GetDeviceLostReasonName(WGPUDeviceLostReason type);
CIMGUI_API const char* ImGui_ImplWGPU_GetErrorTypeName(WGPUErrorType type);
#elif defined(IMGUI_IMPL_WEBGPU_BACKEND_WGPU)
CIMGUI_API const char* ImGui_ImplWGPU_GetLogLevelName(WGPULogLevel level);
#endif

#ifndef __EMSCRIPTEN__
CIMGUI_API WGPUSurface ImGui_ImplWGPU_CreateWGPUSurfaceHelper(ImGui_ImplWGPU_CreateSurfaceInfo* info);
#endif

#endif //CIMGUI_USE_WGPU
