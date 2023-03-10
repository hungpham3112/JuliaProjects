function avoids(word::String, letters::String)::Bool
    isempty(intersect(Set(word), Set(letters)))
end

open(joinpath("..", "words.txt")) do file
    print("Type the letters: ")
    letters = readline()
    lst = filter(x -> avoids(x, letters), readlines(file))
    mapped_file = map(x -> x * "\n", lst)
    print(mapped_file...)
end
