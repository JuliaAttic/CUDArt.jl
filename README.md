# CUDArt

This is a wrapper of the CUDA Runtime API.
It also implements some elements from the Driver API for working with CUDA modules and launching kernels.
It borrows heavily from the [CUDA.jl](https://github.com/JuliaGPU/CUDA.jl) repository created by Dahua Lin.

# Platform support

This has been tested on Linux, OSX, and Windows. With Windows, at least Visual Studio 2010/2012/2013 are supported.

# Installation

First, you need to have an NVIDIA GPU device in your computer (one that is available for computation, i.e., most likely not your graphics card), and the CUDA library installed.
You have to perform these steps manually. **Choose either 32-bit or 64-bit versions to match your julia installation.** 

Install the Julia package using
```julia
Pkg.add("CUDArt")
```

During installation, it should compile a couple of files in the `deps/` directory.
These files provide utility functions necessary for certain functionality in this package.
If the build step fails, try fixing the problems and running `Pkg.build("CUDArt")` manually.

After installation, it's probably a good idea to run the `test/runtests.jl` script to find out whether everything is working on your system, or just say `Pkg.test("CUDArt")`.

In case of errors, one thing to check is your CUDA installation itself. For example, examine whether
the `*.ptx` files are present in `deps/` and `test/`; look at those files and make sure they seem appropriate.
(E.g., if your computer is 64-bit, are they compiled for 64-bit?)

# Usage

Start by saying `using CUDArt`, or `import CUDArt` if you prefer to qualify everything with the module name.


## GPU initialization

One or more GPUs can be initialized, used for computations, and freed for other uses. There are some complexities in this process due to the interaction with Julia's garbage collection---a CUDA array object allocated in one "session" should not be usable if you close the device and then open a new "session." Fortunately, CUDArt should make the process transparent, and as a user you shouldn't have to think about this at all.

The easiest way to ensure that you get full functionality, with proper cleanup of resources, is by using the `do` block syntax:
```julia
result = devices(dev->true) do devlist
    # Code that does GPU computations
end
```
The argument to `devices` is a function that accepts an integer input (the integer representing the CUDA device, starting with 1) and returns `true` or `false`, indicating whether the device should or should not be used, respectively.
`dev->true` means that very device will be used.
The `devlist` variable will be defined inside the block, and is a `Vector{Int}` of the available devices.

If you need to make sure that only devices with sufficient capabilities are used, then use a construct like this:
```julia
result = devices(dev->capability(dev)[1]>=2) do devlist
    # Code that does GPU computations
end
```
This will select all devices that have a major capability of 2 or higher.
You can query any of the properties of your device; see the `device_properties` and `attribute` functions and the list of [fields](http://docs.nvidia.com/cuda/cuda-runtime-api/structcudaDeviceProp.html#structcudaDeviceProp).
If you want to restrict your computations to just one device (perhaps leaving other devices for other users), use the `nmax` keyword:
```julia
result = devices(func, nmax=1) do devlist
    # Code that does GPU computations
end
```

The `do` block syntax initializes the devices and loads some utility functions (defined in `deps/utils.cu`) onto each GPU; it also ensures proper freeing of memory and unloading of code when the `do` block finishes.
Should you want to initialize the utilities manually, you can do so by calling `CUDArt.init(devlist)` and `CUDArt.close(devlist)` where `devlist` is an integer device number or a list of them, e.g. `0` or `[0,1]`.
This can be handy in case of trouble, because unfortunately the `do` syntax does not usually result in ideal backtraces.

If your work doesn't require any of the utility functions, you can manually manage the device:
```julia
device(dev)
# Code that does GPU computations
device_reset(dev)
```
where `dev` is the integer device number.

## Choosing/querying the active device

At any point in your code, the command `device(dev)` makes `dev` the active device.
For example, commands that allocate device memory will be executed on whichever device is currently active. 

Calling `dev = device()` will return the currently-active device

## Arrays

### Device arrays

CUDArt supports two main types of device arrays: `CudaArray`s and `CudaPitchedArray`s.
These correspond to contiguous memory blocks and "pitched pointers", respectively.

To declare an unitialized array on the device, use

```julia
d_A = CudaArray(Float64, (200,300))
d_B = CudaPitchedArray(Int32, (15, 40, 27))
```
The `d_` is a conventional way of reminding yourself that the array is allocated on the device.
To copy a host array to the device, use any of
```julia
d_A = CudaArray(A)
d_AP = CudaPitchedArray(A)
copy!(d_A, A)
copy!(d_AP, A)
```
To copy a device array back to the host, use either of
```julia
A = to_host(d_A)
copy!(A, d_A)
```

Most of the typical Julia functions, like `size`, `ndims`, `reinterpret`, `eltype`, `fill!`, etc.,  work on CUDA array types.
One noteworthy omission is that you can't directly index a CUDA array: `d_A[2,4]` will fail.
This is not supported because host/device memory transfers are relatively slow, and you don't want to write code that (on the host side) makes use of individual elements in a device array.
If you want to inspect the values in a device array, first use `to_host` to copy it to host memory.

You can find out which device is storing an array using
```julia
dev = device(d_A)
```

### HostArrays

Another important array type is the `HostArray`, which is allocated by the CUDA library using pinned memory:
```julia
h_A = HostArray(Float32, (1000,1200))
```
There are circumstances where using a `HostArray` may improve the speed of memory transfers, or allow asynchronous operations using `Stream`s.

**Warning: using a `HostArray` in conjunction with a large memory-mapped file has been observed to cause segfaults; at the present time there is no known workaround.**


## Modules and custom kernels

This will not teach you about CUDA programming; for that, please refer to the CUDA documentation and other online sources.
You can find an example file in `deps/utils.cu`.

### Compiling your own modules

You can write and use your own custom kernels, first writing a `.cu` file and compiling it as a `ptx` module.
On Linux, compilation would look something like this:
```
nvcc -ptx mymodule.cu
```
You can specify that the code should be compiled for compute capability 2.0 devices or higher using
```
nvcc -ptx -gencode=arch=compute_20,code=sm_20 utils.cu
```

If you want to write code that will support multiple datatypes (e.g., `Float32` and `Float64`), it's recommended that you use C++ and write your code using templates.
Then use `extern C` to instantiate bindings for each datatype.
For example,

```
template <typename T>
__device__ void kernel_function1(T *data) {
    // Code goes here
}
template <typename T1, typename T2>
__device__ void kernel_function2(T1 *data1, T2 *data2) {
    // Code goes here
}

extern "C"
{
    void __global__ kernel_function1_float(float *data) {kernel_function1(data);}
    void __global__ kernel_function1_double(double *data) {kernel_function1(data);}
    void __global__ kernel_function2_int_float(int *data1, float *data2) {kernel_function2(data1,data2);}
}
```

### Initializing and freeing PTX modules

To easily make your kernels available, the recommended approach is to define something analagous to the following for each `ptx` module (this example uses the kernels described in the previous section):
```julia
module MyCudaModule

const ptxdict = Dict()
const mdlist = Array(CuModule, 0)

function mdinit(devlist)
    global ptxdict
    global mdlist
    isempty(mdlist) || error("mdlist is not empty")
    for dev in devlist
        device(dev)
        md = CuModule("mycudamodule.ptx"), false)  # false means it will not be automatically finalized
        ptxdict[(dev, "function1", Float32)] = CuFunction(md, "kernel_function1_float")
        ptxdict[(dev, "function1", Float64)] = CuFunction(md, "kernel_function1_double")
        ptxdict[(dev, "function2", Int32, Float32)] = CuFunction(md, "kernel_function2_int_float")
        ...
        push!(mdlist, md)
    end
end

mdclose() = (for md in mdlist; unload(md); end; empty!(mdlist); empty!(ptxdict))

function init(f::function, devlist)
    local ret
    mdinit(devlist)
    try
        ret = f(devlist)
    finally
        mdclose()
    end
    ret
end

function function1{T}(data::CudaArray{T})
    dev = device(data)
    function1 = ptxdict[(dev, "function1", T)]
    # Set up grid and block, see below
    launch(function1, grid, block, (data,))
end

...

end  # MyCudaModule
```

Usage will look something like the following:
```julia
using CUDArt, MyCudaModule

A = rand(10,5)

result = devices(dev->capability(dev)[1]>=2) do devlist
    MyCudaModule.init(devlist) do
        function1(CudaArray(A))
    end
end
```

### grid and block

To be written.

## Streams

One can use streams to manage or synchronize computations between the
CPU & GPU, or using multiple CUDA devices.  Using [julia's `@sync` and
`@async`
macros](http://docs.julialang.org/en/latest/manual/parallel-computing/),
here is a short demonstration that activates processing on multiple
devices:

```
measured_sleep_time = CUDArt.devices(dev->true, nmax=2) do devlist
    sleeptime = 0.5
    results = Array(Float64, 3*length(devlist))
    streams = [(device(dev); Stream()) for dev in devlist]
    # Force one run to precompile
    cudasleep(sleeptime; dev=devlist[1], stream=streams[1])
    wait(streams[1])
    i = 1
    nextidx() = (idx=i; i+=1; idx)
    @sync begin
        for idev = 1:length(devlist)
            @async begin
                while true
                    idx = nextidx()
                    if idx > length(results)
                        break
                    end
                    tstart = time()
                    dev = devlist[idev]
                    stream = streams[idev]
                    cudasleep(sleeptime; dev=dev, stream=stream)
                    wait(stream)
                    tstop = time()
                    results[idx] = tstop-tstart
                end
            end
        end
    end
    results
end
```

In a more realistic version of this demonstration, you would "feed"
work and collect the results from all of your CUDA devices using a
single julia process to organize the efforts.

# Random notes

#### Notes on memory

Julia convention is that matrices are stored in column-major order, whereas C (and CUDA) use row-major.
For efficiency this wrapper avoids reordering memory, so that the linear sequence of addresses is the same between main memory and the GPU.
For most usages, this is probably what you want.
However, for the purposes of linear algebra, this effectively means that one is storing the transpose of matrices on the GPU.
(TODO: create CudaMatrix and CudaPitchedMatrix types that will automatically take the transpose when copying between main and GPU memory.
This will be useful for cuBLAS.)
Note that the size of a CudaArray/CudaPitchedArray is represented as the size _of the corresponding main-memory object_; thus, an array's dimensions (as reported by Julia) will not change when you copy it between main and GPU memory.
