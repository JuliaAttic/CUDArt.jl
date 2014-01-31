using Clang, Clang.cindex
# We'll replace some of the wrap functions, and we need to call the following:
import Clang.wrap_c: repr_jl, rep_type, rep_args, name_safe

# The following two likely need to be modified for the host system
includes = ["/usr/include","/usr/lib/gcc/x86_64-redhat-linux/4.4.4/include"]
cudapath = "/usr/local/cuda/include"

context=wrap_c.init(output_file="gen_libcudart.jl",
                    common_file="gen_libcudart_h.jl",
                    header_library=x->"libcudart",
                    clang_includes=includes,
                    header_wrapped=(x,y)->(contains(x,"cuda")))

context.options = wrap_c.InternalOptions(true)  # wrap structs, too
headers = [joinpath(cudapath,"cuda_runtime_api.h")]

# Customize the wrap function for functions. This was copied
# from Clang/src/wrap_c.jl, with the following customizations:
#   - error-check functions that return a cudaError_t
#   - omit types from function prototypes
skipcheck = ["cudaStreamQuery"]#["cudaFree"]
function wrap_c.wrap(buf::IO, funcdecl::FunctionDecl, libname::ASCIIString)
    function print_args(buf::IO, cursors, types)
        i = 1
        for c in cursors
            print(buf, name_safe(c))
            (i < length(cursors)) && print(buf, ", ")
            i += 1
        end
    end

    cu_spelling = spelling(funcdecl)
    
    funcname = spelling(funcdecl)
    arg_types = cindex.function_args(funcdecl)
    args = [x for x in search(funcdecl, ParmDecl)]
    arg_list = tuple( [repr_jl(x) for x in arg_types]... )
    ret_type = repr_jl(return_type(funcdecl))

    print(buf, "function ")
    fname = spelling(funcdecl)
    print(buf, fname)
    print(buf, "(")
    print_args(buf, args, [myrepr_jl(x) for x in arg_types])
    println(buf, ")")
    print(buf, "  ")
    checkerr = ret_type == "cudaError_t" && !in(fname,skipcheck)
    checkerr && print(buf, "checkerror(")
    print(buf, "ccall( (:", funcname, ", ", libname, "), ")
    print(buf, rep_type(ret_type))
    print(buf, ", ")
    print(buf, rep_args(arg_list), ", ")
    for (i,arg) in enumerate(args)
        print(buf, name_safe(arg))
        (i < length(args)) && print(buf, ", ")
    end
    checkerr && print(buf, ")")
    println(buf, ")")
    println(buf, "end")
end

function myrepr_jl(x)
    str = repr_jl(x)
    return (str == "Ptr{Cint}") ? "Array{Cint}" : str
end

# Execute the wrap
wrap_c.wrap_c_headers(context, headers)
