if is_windows()
    if haskey(ENV, "VS120COMNTOOLS")
        vs_cmd_prompt = string(ENV["VS120COMNTOOLS"], "..\\..\\VC\\vcvarsall.bat")
    elseif haskey(ENV, "VS110COMNTOOLS")
        vs_cmd_prompt = string(ENV["VS110COMNTOOLS"], "..\\..\\VC\\vcvarsall.bat")
    elseif haskey(ENV, "VS100COMNTOOLS")
        vs_cmd_prompt = string(ENV["VS100COMNTOOLS"], "..\\..\\VC\\vcvarsall.bat")
    else
        error("Cannot find proper Visual Studio installation. VS 2013, 2012, or 2010 is required.")
    end

    # check whether 32 or 64 bit archtecture
    # NOTE: Actually, nvcc in x86 visual studio command prompt doesn't make 32-bit binary
    #       It depends on whether CUDA toolkit is 32bit or 64bit
    if Int == Int64
        arch = "amd64"
    else
        arch = "x86"
    end

    # Run nmake -f Windows.mk under visual studio command prompt
    run(`cmd /C "$vs_cmd_prompt" $arch & nmake -f Windows.mk`)
    cd("../test") do
        run(`cmd /C "$vs_cmd_prompt" $arch & nmake -f Windows.mk`)
    end
else # for linux or mac
    run(`make`)
    cd("../test") do
        run(`make`)
    end
end