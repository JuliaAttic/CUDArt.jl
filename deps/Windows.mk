default: libwrapcuda.dll utils.ptx

libwrapcuda.dll: wrapcuda.c
    nvcc --shared --compiler-options="/wd4819" --linker-options= wrapcuda.c -o libwrapcuda.dll

utils.ptx: utils.cu
    nvcc -ptx --compiler-options="/wd4819" -gencode=arch=compute_20,code=sm_20 utils.cu

clean:
    del /Q libwrapcuda.dll libwrapcuda.lib libwrapcuda.exp
    del /Q utils.ptx