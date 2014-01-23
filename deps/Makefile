all: libwrapcuda

libwrapcuda: wrapcuda.c
	nvcc --shared --compiler-options=-fPIC --linker-options=-fPIC wrapcuda.c -o libwrapcuda.so
