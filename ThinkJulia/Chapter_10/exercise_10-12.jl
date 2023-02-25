include("exercise_10-9.jl")

array = version1(joinpath("..", "words.txt"))

function interlock2(array)::Tuple
    for word in array
        even, odd = word[2:2:end], word[1:2:end]
        if even in array && odd in array
            println((odd, even))
        end
    end
    (1, 1)
end

function interlock3(array)::Tuple
    for word in array
        first, second, third = word[1:2:end], word[2:2:end], word[3:2:end]
        if third in word
            print((first, second, third))
        end
    end
    (1, 1, 1)
end

println(interlock3(array))











