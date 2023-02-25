include("exercise_10-9.jl")
array = version1(joinpath("..", "words.txt"))

function inbisect(arr, low, high, x)
    if high >= low
        mid = div((high + low), 2)
        if arr[mid] == x
            return true
        elseif arr[mid] > x
            return inbisect(arr, low, mid - 1, x)
        else
            return inbisect(arr, mid + 1, high, x)
        end
    else
        return false
    end
end

print(inbisect(array, 1, length(array), "longshoreman"))

