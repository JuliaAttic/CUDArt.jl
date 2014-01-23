all: libwrapcuda utils

libwrapcuda: wrapcuda.c
	nvcc --shared --compiler-options=-fPIC --linker-options=-fPIC wrapcuda.c -o libwrapcuda.so

utils: utils.cu
	nvcc -ptx utils.cu
