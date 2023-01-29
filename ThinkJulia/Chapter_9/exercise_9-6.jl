function isabecedarian(word::String)::Bool
    collect(word) == sort(collect(word))
end


open(joinpath("..", "words.txt")) do file
    lst = filter(x -> isabecedarian(x), readlines(file))
    mapped_file = map(x -> x * "\n", lst)
    print("The number of abecedarian words is: ", length(lst))
end
