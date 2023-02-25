include("exercise_10-9.jl")

array = version1(joinpath("..", "words.txt"))

reversepairs(array::Array) = filter(x -> x == reverse(x), array)

println(map(x -> x * "\n", reversepairs(array))...)
