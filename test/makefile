all: vadd.ptx

LBITS := $(shell getconf LONG_BIT)
ifeq ($(LBITS),64)
	NVFLAGS=-m64
else
	NVFLAGS=-m32
endif

vadd.ptx: vadd.cu
	nvcc -ptx $(NVFLAGS) vadd.cu
