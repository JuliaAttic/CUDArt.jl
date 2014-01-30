#include <stdint.h>
//#include <stdio.h>

template <typename T>
__device__ void fill_contiguous(T *data, size_t len, T val) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;

    for (int i = idx; i < len; i += gridDim.x * blockDim.x) {
        data[i] = val;
    }
}

// Note that pitch must be expressed in elements, not bytes!
template <typename T>
__device__ void fill_pitched(T *data, size_t width, size_t height, size_t depth, size_t pitch, T val) {
    int idxx = blockIdx.x * blockDim.x + threadIdx.x;
    int idxy = blockIdx.y * blockDim.y + threadIdx.y;
    int idxz = blockIdx.z * blockDim.z + threadIdx.z;

    for (int iz = idxz; iz < depth; iz += gridDim.z * blockDim.z) {
        int offsetz = iz;
        for (int iy = idxy; iy < height; iy += gridDim.y * blockDim.y) {
            int offsety = height*offsetz + iy;
            for (int ix = idxx; ix < width; ix += gridDim.x * blockDim.x) {
                data[pitch*offsety + ix] = val;
            }
        }
    }
}

extern "C"
{
    void __global__ fill_contiguous_double(double *data, size_t len, double val) {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_float(float *data, size_t len, float val)  {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_int64(int64_t *data, size_t len, int64_t val)  {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_uint64(uint64_t *data, size_t len, uint64_t val)  {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_int32(int32_t *data, size_t len, int32_t val)  {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_uint32(uint32_t *data, size_t len, uint32_t val)  {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_int16(int16_t *data, size_t len, int16_t val)  {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_uint16(uint16_t *data, size_t len, uint16_t val)  {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_int8(int8_t *data, size_t len, int8_t val)  {fill_contiguous(data, len, val);}
    void __global__ fill_contiguous_uint8(uint8_t *data, size_t len, uint8_t val)  {fill_contiguous(data, len, val);}

    void __global__ fill_pitched_double(double *data, size_t width, size_t height, size_t depth, size_t pitch, double val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_float(float *data, size_t width, size_t height, size_t depth, size_t pitch, float val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_int64(int64_t *data, size_t width, size_t height, size_t depth, size_t pitch, int64_t val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_uint64(uint64_t *data, size_t width, size_t height, size_t depth, size_t pitch, uint64_t val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_int32(int32_t *data, size_t width, size_t height, size_t depth, size_t pitch, int32_t val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_uint32(uint32_t *data, size_t width, size_t height, size_t depth, size_t pitch, uint32_t val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_int16(int16_t *data, size_t width, size_t height, size_t depth, size_t pitch, int16_t val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_uint16(uint16_t *data, size_t width, size_t height, size_t depth, size_t pitch, uint16_t val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_int8(int8_t *data, size_t width, size_t height, size_t depth, size_t pitch, int8_t val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
    void __global__ fill_pitched_uint8(uint8_t *data, size_t width, size_t height, size_t depth, size_t pitch, uint8_t val) {
        fill_pitched(data, width, height, depth, pitch, val);
    }
}

// For implementing sleep, from http://stackoverflow.com/questions/11217117/equivalent-of-usleep-in-cuda-kernel
extern "C" {
// __global__ void clock_block(int64_t *d_o, int64_t clock_count)
__global__ void clock_block(int64_t clock_count)
{
    int64_t start_clock = clock64();
    int64_t clock_offset = 0;
    while (clock_offset < clock_count)
    {
        clock_offset = clock64() - start_clock;
    }
//     d_o[0] = (int64_t) clock_offset;
}
}

/*// Debugging
int main()
{
  size_t width = 5;
  size_t height = 3;
  size_t depth = 1;
  size_t pitch = sizeof(double)*width;
  cudaSetDevice(0);
  cudaExtent extent = make_cudaExtent(pitch, height, depth);
  cudaPitchedPtr devpp;
  cudaMalloc3D(&devpp, extent);
  pitch = devpp.pitch;
  fill_pitched_double<<<32,16>>>((double *) devpp.ptr, width, height, depth, pitch/sizeof(double), (double) 8.4);
  cudaDeviceSynchronize();
  double *host = new double[width*height];
  cudaPos dstpos = make_cudaPos(0, 0, 0);
  cudaPos srcpos = make_cudaPos(0, 0, 0);
  cudaPitchedPtr hostpp = make_cudaPitchedPtr(host, sizeof(double)*width, width, height);
  cudaMemcpy3DParms mcpp = {0};
  mcpp.srcPos = srcpos;
  mcpp.dstPos = dstpos;
  mcpp.srcPtr = devpp;
  mcpp.dstPtr = hostpp;
  mcpp.extent = extent;
  mcpp.kind = cudaMemcpyDeviceToHost;
  cudaMemcpy3D(&mcpp);
  cudaDeviceSynchronize();
  for (int i = 0; i < width*height; i++)
    printf("%g\n", host[i]);
  cudaDeviceReset();
}*/