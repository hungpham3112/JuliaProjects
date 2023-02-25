function version1(filename::String)
    array = []
    open(filename) do file
        for line in readlines(file)
            push!(array, line)
        end
    end
    array
end

function version2(filename::String)
    array = []
    open(filename) do file
        for line in readlines(file)
            array = [array..., line]
        end
    end
    array
end

if abspath(PROGRAM_FILE) == @__FILE__
    @time version1(joinpath("..", "words.txt"))
    @time version2(joinpath("..", "words.txt"))
end
