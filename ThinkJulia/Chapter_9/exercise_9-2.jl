open(joinpath("..", "words.txt")) do file
    temp = file
    number_of_line = countlines(temp)
    hasno_e = filter(x -> !occursin("e", x), readlines(file))
    mapped_file = map(x -> x * "\n", hasno_e)
    print(mapped_file...)
    println(length(hasno_e) / number_of_line * 100, " %")
end

