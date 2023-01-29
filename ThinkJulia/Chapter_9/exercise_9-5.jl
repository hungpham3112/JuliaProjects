function usesall(word::String, string::String)::Bool
    Set(intersect(word, string)) == Set(string)
end


open(joinpath("..", "words.txt")) do file
    print("Type the string: ")
    string = readline()
    lst = filter(x -> usesall(x, string), readlines(file))
    mapped_file = map(x -> x * "\n", lst)
    print(mapped_file...)
end
