using Compat

if is_windows()
    if haskey(ENV, "VS140COMNTOOLS")
        vs_cmd_tools_dir = ENV["VS140COMNTOOLS"]
    elseif haskey(ENV, "VS120COMNTOOLS")
        vs_cmd_tools_dir = ENV["VS120COMNTOOLS"]
    elseif haskey(ENV, "VS110COMNTOOLS")
        vs_cmd_tools_dir = ENV["VS110COMNTOOLS"]
    elseif haskey(ENV, "VS100COMNTOOLS")
        vs_cmd_tools_dir = ENV["VS100COMNTOOLS"]
    else
        error("Cannot find proper Visual Studio installation; Visual Studio 2015, 2013, 2012, or 2010 is required.")
    end
    vs_cmd_prompt = joinpath(dirname(vs_cmd_tools_dir), "..", "..", "VC", "vcvarsall.bat")
    
    # check whether 32 or 64 bit archtecture
    # NOTE: Actually, nvcc in x86 visual studio command prompt doesn't make 32-bit binary
    # It depends on whether CUDA toolkit is 32bit or 64bit
    arch = Sys.WORD_SIZE == 64 ? "amd64" : "x86"

    # Run nmake -f Windows.mk under visual studio command prompt
    cd(@__DIR__) do
        run(`cmd /C "$vs_cmd_prompt" $arch \& nmake -f Windows.mk clean`)
        run(`cmd /C "$vs_cmd_prompt" $arch \& nmake -f Windows.mk`)
    end

    cd(joinpath(@__DIR__, "..", "test")) do
        run(`cmd /C "$vs_cmd_prompt" $arch \& nmake -f Windows.mk clean`)
        run(`cmd /C "$vs_cmd_prompt" $arch \& nmake -f Windows.mk`)
    end
else # linux or mac
    cd(@__DIR__) do
        run(`make clean`)
        run(`make`)
    end
    cd(joinpath(@__DIR__, "..", "test")) do
        run(`make clean`)
        run(`make`)
    end
end
