# CUDArt

This is a wrapper of the CUDA Runtime API. It also implements some elements from the Driver API for working with CUDA modules and launching kernels. It borrows heavily from Dahua Lin's [CUDA.jl](https://github.com/JuliaGPU/CUDA.jl). The primary motivation for developing the Runtime wrapper was to be able to use libraries that appear incompatible with the Driver API, such as CUFFT.

Update: @moon6pence has apparently figured out some of the incompatibilities between CUFFT and the driver API. In the meantime, this package has evolved quite considerably.

At the present time, this package is certainly the least-documented but probably the most full-featured CUDA wrapper.

#### Notes on memory

Julia convention is that matrices are stored in column-major order, whereas C (and CUDA) use row-major. For efficiency this wrapper avoids reordering memory, so that the linear sequence of addresses is the same between main memory and the GPU. For most usages, this is probably what you want. However, for the purposes of linear algebra, this effectively means that one is storing the transpose of matrices on the GPU. (Note to self: create CudaMatrix and CudaPitchedMatrix types that will automatically take the transpose when copying between main and GPU memory.) Note that the size of a CudaArray/CudaPitchedArray is represented as the size _of the corresponding main-memory object_; thus, an array's dimensions (as reported by Julia) will not change when you copy it between main and GPU memory.
