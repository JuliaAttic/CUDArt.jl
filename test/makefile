all: vadd.ptx

vadd.ptx: vadd.cu
	nvcc -ptx vadd.cu

.PHONY: clean
clean:
	$(RM) vadd.ptx
