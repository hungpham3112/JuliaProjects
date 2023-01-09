open(joinpath("..", "words.txt")) do file
    letters = readline()
    lst = filter(x -> isempty(intersect(Set(letters), Set(x))), readlines(file))
    mapped_file = map(x -> x * "\n", hasno_e)
    print(mapped_file...)
end
