/* Functions that circumvent Julia's limitation in passing C-structs as function arguments */

#include <cuda_runtime_api.h>
#include <stdio.h>

#ifdef _WIN32
#define DLLEXPORT __declspec(dllexport)
#else
#define DLLEXPORT
#endif

DLLEXPORT cudaError_t wrapcudaMalloc3D(struct cudaPitchedPtr *p, struct cudaExtent *ext)
{
  cudaError_t err;
/*  printf("width = %d\n", ext->width);
  printf("height = %d\n", ext->height);
  printf("depth = %d\n", ext->depth);*/
  
  err = cudaMalloc3D(p, *ext);
/*  printf("ptr = %lx\n", p->ptr);
  printf("pitch = %ld\n", p->pitch);
  printf("xsize = %ld\n", p->xsize);
  printf("ysize = %ld\n", p->ysize);
  
  printf("err = %d\n", err);*/
  return err;
}

DLLEXPORT cudaError_t wrapcudaMemset3D(struct cudaPitchedPtr *p, char val, struct cudaExtent *ext)
{
  return cudaMemset3D(*p, (int) val, *ext);
}
