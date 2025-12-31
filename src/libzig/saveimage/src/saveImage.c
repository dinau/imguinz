//# Refer to:
//#   OpenGLでの描画内容の画像化と保存(2012-11-07)
//#     https://npal-shared.hatenablog.com/entry/20121107/1352284053
#include "saveImage.h"

//#define STB_IMAGE_STATIC
#if !defined(STB_IMAGE_WRITE_IMPLEMENTATION)
#     define STB_IMAGE_WRITE_IMPLEMENTATION
#endif
#include "stb_image_write.h"

int even(int x) {
  return (x < 1) ? 0 : (x / 2) * 2;
}

//#-------------
//# saveImage()
//#-------------
void saveImage(const char* fname, GLuint xs, GLuint ys, int imageWidth, int imageHeight, int comp /* = RGB*/, int quality /* = 90*/) {
  if (!(comp == 3 /*RGB*/)) {
    printf("Error!: Color component numbers must be 3 (RGB) at %s\n", __FILE__);
    return;
  }
  int ixs = even(xs);
  int iys = even(ys);
  int iWidth  = even(imageWidth);
  int iHeight = even(imageHeight);
  if ((1 > iWidth) || (1 > iHeight)) {
    printf("Error!: Rect of save image is mismatch at %s\n", __FILE__);
    return;
  }
  GLubyte* texBuffer  = (GLubyte*)malloc(iWidth * iHeight * comp);
  GLubyte* dataBuffer = (GLubyte*)malloc(iWidth * iHeight * comp);

  // 読み取るOpneGLのバッファを指定 GL_FRONT:フロントバッファ　GL_BACK:バックバッファ
  glReadBuffer(GL_BACK);
  // OpenGLで画面に描画されている内容をバッファに格納
  glPixelStorei(GL_PACK_ALIGNMENT, 1);
  glReadPixels(ixs, iys,                  //# 読み取る領域の左下隅のx,y座標 //0 or getCurrentWidth() - 1
               iWidth, iHeight, //# 読み取る領域
               GL_RGB,                  //# it means GL_BGR,  //取得したい色情報の形式
               GL_UNSIGNED_BYTE,        //# 読み取ったデータを保存する配列の型
               texBuffer);              //# ビットマップのピクセルデータ（実際にはバイト配列）へのポインタ

  //# 上下反転を補正する
  int widthStep = 3 * iWidth;
  int n = 0;
  for (int y = 0; y < iHeight; y++) {
    for (int x = 0; x < iWidth; x++) {
      dataBuffer[ ( iHeight - y - 1 ) * widthStep + (x * 3) + 0 ] = texBuffer[n + 0]; // # copy R
      dataBuffer[ ( iHeight - y - 1 ) * widthStep + (x * 3) + 1 ] = texBuffer[n + 1]; // # copy G
      dataBuffer[ ( iHeight - y - 1 ) * widthStep + (x * 3) + 2 ] = texBuffer[n + 2]; // # copy B
      n += 3;
    }
  }

  //# Save image
  // Get file extension to ext[]
  char ext[10];
  char *extPos = strchr(fname, '.');
  int i;
  for (i=0; extPos[i]; i++) { ext[i] = tolower(extPos[i]); }  // copy and change to lowercase.
  ext[i] = '\0';

  // Save image to file
  bool res = true;
  if ((0 == strcmp(ext, ".jpg")) || (0 == strcmp(ext, ".jpeg"))) {
      //# JPEG quality is 90% default. quality=1..100
      res = stbi_write_jpg(fname, iWidth, iHeight, comp, dataBuffer, quality);
  } else if (0 == strcmp(ext, ".png")) {
      res = stbi_write_png(fname, iWidth, iHeight, comp, dataBuffer, iWidth * 3);
  } else if (0 == strcmp(ext, ".bmp")) {
      res = stbi_write_bmp(fname, iWidth, iHeight, comp, dataBuffer);
  } else if (0 == strcmp(ext, ".tga")) {
      //# if quality == 0 then useRLE == false.
      res = stbi_write_tga(fname, iWidth, iHeight, comp, dataBuffer);
  } else {
      printf("Error! Unrecognize image extension: [%s]:  %s\n", ext, __FILE__);
      res = false;
  }
  if (res == false) {
    printf("Error!: at stbiw.writeNNN() function in %s\n", __FILE__);
  }
  free(texBuffer);
  free(dataBuffer);
}
