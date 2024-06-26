#include <stdio.h>
#include "utils.h"

/*-------------
 * existFile()
 * -----------*/
bool existsFile(const char* path) {
  FILE* fp = fopen(path, "r");
  if (fp == NULL) return false;
  fclose(fp);
  return true;
}
