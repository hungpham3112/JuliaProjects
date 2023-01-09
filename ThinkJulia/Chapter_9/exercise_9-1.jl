open(joinpath("..", "words.txt")) do file
    filtered_file = filter(x -> length(x) <= 20, filter(x -> !occursin(" ", x), readlines(file)))
    mapped_file = map(x -> x * "\n", filtered_file)
    print(mapped_file...)
end
