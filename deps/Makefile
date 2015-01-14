ifeq ($(shell uname),Darwin)
	libfile := libwrapcuda.dylib
	libflag := dylib
else
	libfile := libwrapcuda.so
	libflag := fPIC
endif

all: $(libfile) utils.ptx

$(libfile): wrapcuda.c
	nvcc --shared --compiler-options=-fPIC --linker-options=-$(libflag) wrapcuda.c -o $(libfile)

utils.ptx: utils.cu
	nvcc -ptx -gencode=arch=compute_20,code=sm_20 utils.cu

.PHONY: clean
clean:
	$(RM) $(libfile) utils.ptx libwrapcuda.so
