function hasno_e(word::String)::Bool
    !occursin("e", word)
end

open(joinpath("..", "words.txt")) do file
    lst = filter(x -> hasno_e(x), readlines(file))
    mapped_file = map(x -> x * "\n", lst)
    print(mapped_file...)
    number_of_line = countlines(open(joinpath("..", "words.txt")))
    println("The percentage of the words in the list that have no e: ", length(lst) / number_of_line * 100, " %")
end

