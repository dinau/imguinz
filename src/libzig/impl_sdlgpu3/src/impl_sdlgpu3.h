#include "cimgui.h"
#include "cimgui_impl.h"
#include <SDL_gpu.h>

typedef struct {
   SDL_GPUDevice* Device;
   SDL_GPUTextureFormat ColorTargetFormat;
   SDL_GPUSampleCount MSAASamples;
} ImGui_ImplSDLGPU3_InitInfo;

bool ImGui_ImplSDLGPU3_Init(ImGui_ImplSDLGPU3_InitInfo* info);
void ImGui_ImplSDLGPU3_Shutdown();
void ImGui_ImplSDLGPU3_NewFrame();
void ImGui_ImplSDLGPU3_PrepareDrawData(ImDrawData* draw_data ,SDL_GPUCommandBuffer* command_buffer);
void ImGui_ImplSDLGPU3_RenderDrawData(ImDrawData* draw_data
    ,SDL_GPUCommandBuffer* command_buffer
    ,SDL_GPURenderPass* render_pass
    ,SDL_GPUGraphicsPipeline* pipeline);
void ImGui_ImplSDLGPU3_CreateDeviceObjects();
void ImGui_ImplSDLGPU3_DestroyDeviceObjects();
void ImGui_ImplSDLGPU3_CreateFontsTexture();
void ImGui_ImplSDLGPU3_DestroyFontsTexture();
