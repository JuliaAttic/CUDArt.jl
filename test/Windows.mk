default: vadd.ptx

vadd.ptx: vadd.cu
    nvcc -ptx --compiler-options="/wd4819" vadd.cu

clean:
    del /Q vadd.ptx