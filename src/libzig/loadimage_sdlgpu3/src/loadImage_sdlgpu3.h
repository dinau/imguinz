#pragma once

#include <SDL_gpu.h>

bool LoadTextureFromFileSDLGPU3(const char* file_name, SDL_GPUDevice* device, SDL_GPUTexture** out_texture, int* out_width, int* out_height);
bool LoadTextureFromMemorySDLGPU3(const void* data, size_t data_size, SDL_GPUDevice* device, SDL_GPUTexture** out_texture, int* out_width, int* out_height);
void DestroyTexture(SDL_GPUDevice* device, SDL_GPUTexture* texture);
