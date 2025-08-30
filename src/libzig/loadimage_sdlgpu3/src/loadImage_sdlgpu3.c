// See:
//    https://github.com/ocornut/imgui/wiki/Image-Loading-and-Displaying-Examples
//
#define _CRT_SECURE_NO_WARNINGS
//#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include <stdbool.h>
#include <stdlib.h>
#include "loadImage_sdlgpu3.h"

/*-------------
 * existFile()
 * -----------*/
static bool existsFile(const char* path) {
  if (path == NULL){
    return false;
  }
  FILE* fp = fopen(path, "r");
  if (fp == NULL) return false;
  fclose(fp);
  return true;
}

bool LoadTextureFromMemorySDLGPU3(const void* data, size_t data_size, SDL_GPUDevice* device, SDL_GPUTexture** out_texture, int* out_width, int* out_height)
{
    // Load from disk into a raw RGBA buffer
    int image_width = 0;
    int image_height = 0;
    unsigned char* image_data = stbi_load_from_memory((const unsigned char*)data, (int)data_size, &image_width, &image_height, NULL, 4);
    if (image_data == NULL)
        return false;

    // Create texture
    SDL_GPUTextureCreateInfo texture_info = {};
    texture_info.type = SDL_GPU_TEXTURETYPE_2D;
    texture_info.format = SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM;
    texture_info.usage = SDL_GPU_TEXTUREUSAGE_SAMPLER;
    texture_info.width = image_width;
    texture_info.height = image_height;
    texture_info.layer_count_or_depth = 1;
    texture_info.num_levels = 1;
    texture_info.sample_count = SDL_GPU_SAMPLECOUNT_1;

    SDL_GPUTexture* texture = SDL_CreateGPUTexture(device, &texture_info);

    // Create transfer buffer
    // FIXME: A real engine would likely keep one around, see what the SDL_GPU backend is doing.
    SDL_GPUTransferBufferCreateInfo transferbuffer_info = {};
    transferbuffer_info.usage = SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD;
    transferbuffer_info.size = image_width * image_height * 4;
    SDL_GPUTransferBuffer* transferbuffer = SDL_CreateGPUTransferBuffer(device, &transferbuffer_info);
    //IM_ASSERT(transferbuffer != NULL);

    // Copy to transfer buffer
    uint32_t upload_pitch = image_width * 4;
    void* texture_ptr = SDL_MapGPUTransferBuffer(device, transferbuffer, true);
    for (int y = 0; y < image_height; y++)
        memcpy((void*)((uintptr_t)texture_ptr + y * upload_pitch), image_data + y * upload_pitch, upload_pitch);
    SDL_UnmapGPUTransferBuffer(device, transferbuffer);

    SDL_GPUTextureTransferInfo transfer_info = {};
    transfer_info.offset = 0;
    transfer_info.transfer_buffer = transferbuffer;

    SDL_GPUTextureRegion texture_region = {};
    texture_region.texture = texture;
    texture_region.x = (Uint32)0;
    texture_region.y = (Uint32)0;
    texture_region.w = (Uint32)image_width;
    texture_region.h = (Uint32)image_height;
    texture_region.d = 1;

    // Upload
    SDL_GPUCommandBuffer* cmd = SDL_AcquireGPUCommandBuffer(device);
    SDL_GPUCopyPass* copy_pass = SDL_BeginGPUCopyPass(cmd);
    SDL_UploadToGPUTexture(copy_pass, &transfer_info, &texture_region, false);
    SDL_EndGPUCopyPass(copy_pass);
    SDL_SubmitGPUCommandBuffer(cmd);

    SDL_ReleaseGPUTransferBuffer(device, transferbuffer);

    *out_texture = texture;
    *out_width = image_width;
    *out_height = image_height;
    stbi_image_free(image_data);

    return true;
}

// Open and read a file, then forward to LoadTextureFromMemory()
bool LoadTextureFromFileSDLGPU3(const char* file_name, SDL_GPUDevice* device, SDL_GPUTexture** out_texture, int* out_width, int* out_height){
    FILE* f = fopen(file_name, "rb");
    if (f == NULL){
        printf("\nError!: Image file not found  error: %s", file_name);
        return false;
    }
    fseek(f, 0, SEEK_END);
    size_t file_size = (size_t)ftell(f);
    if (file_size == -1)
        return false;
    fseek(f, 0, SEEK_SET);
    void* file_data = (void *)malloc(file_size);
    fread(file_data, 1, file_size, f);
    fclose(f);
    bool ret = LoadTextureFromMemorySDLGPU3(file_data, file_size, device, out_texture, out_width, out_height);
    free(file_data);
    return false;
}

void DestroyTexture(SDL_GPUDevice* device, SDL_GPUTexture* texture)
{
    SDL_ReleaseGPUTexture(device, texture);
}
