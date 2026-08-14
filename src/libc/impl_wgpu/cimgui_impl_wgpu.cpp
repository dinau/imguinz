// cimgui_impl_wgpu.cpp
// Auto-generated-style C wrapper for imgui_impl_wgpu.h, following the cimgui project's
// conventions (https://github.com/cimgui/cimgui, MIT License, Copyright (c) 2015 Stephan Dilly).
// Wraps Dear ImGui's WebGPU backend (https://github.com/ocornut/imgui, MIT License).


#ifdef CIMGUI_USE_WGPU
#include "cimgui_impl.h"
#include "imgui_impl_wgpu.h"

CIMGUI_API bool ImGui_ImplWGPU_IsSurfaceStatusError(WGPUSurfaceGetCurrentTextureStatus status)
{
    return ::ImGui_ImplWGPU_IsSurfaceStatusError(status);
}

CIMGUI_API bool ImGui_ImplWGPU_IsSurfaceStatusSubOptimal(WGPUSurfaceGetCurrentTextureStatus status)
{
    return ::ImGui_ImplWGPU_IsSurfaceStatusSubOptimal(status);
}

CIMGUI_API void xImGui_ImplWGPU_DebugPrintAdapterInfo(WGPUAdapter adapter)
{
    ::ImGui_ImplWGPU_DebugPrintAdapterInfo(adapter);
}

CIMGUI_API const char* ImGui_ImplWGPU_GetBackendTypeName(WGPUBackendType type)
{
    return ::ImGui_ImplWGPU_GetBackendTypeName(type);
}

CIMGUI_API const char* ImGui_ImplWGPU_GetAdapterTypeName(WGPUAdapterType type)
{
    return ::ImGui_ImplWGPU_GetAdapterTypeName(type);
}

#if defined(IMGUI_IMPL_WEBGPU_BACKEND_DAWN)
CIMGUI_API const char* ImGui_ImplWGPU_GetDeviceLostReasonName(WGPUDeviceLostReason type)
{
    return ::ImGui_ImplWGPU_GetDeviceLostReasonName(type);
}
CIMGUI_API const char* ImGui_ImplWGPU_GetErrorTypeName(WGPUErrorType type)
{
    return ::ImGui_ImplWGPU_GetErrorTypeName(type);
}
#elif defined(IMGUI_IMPL_WEBGPU_BACKEND_WGPU)
CIMGUI_API const char* ImGui_ImplWGPU_GetLogLevelName(WGPULogLevel level)
{
    return ::ImGui_ImplWGPU_GetLogLevelName(level);
}
#endif

#ifndef __EMSCRIPTEN__
CIMGUI_API WGPUSurface ImGui_ImplWGPU_CreateWGPUSurfaceHelper(ImGui_ImplWGPU_CreateSurfaceInfo* info)
{
    return ::ImGui_ImplWGPU_CreateWGPUSurfaceHelper(info);
}
#endif

#endif // CIMGUI_USE_WGPU
