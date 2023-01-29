function usesonly(word::String, string::String)::Bool
    Set(word) == Set(string)
end

open(joinpath("..", "words.txt")) do file
    print("Type the letters: ")
    letters = readline()
    lst = filter(x -> usesonly(x, letters), readlines(file))
    mapped_file = map(x -> x * "\n", lst)
    print(mapped_file...)
end
