using Dates

function timeof(func)
    t₀ = Dates.now()
    result = eval(func)
    t₁ = Dates.now()
    duration = t₁ - t₀
    println("Runtime is $duration")
    println("t₁ is $t₁, t₀ is $t₀")
    return result
end

timeof(rand(100000))
fu
function gettime(expr)
    start_time = now()
    result = eval(expr)
    end_time = now()

    elapsed_time = (end_time - start_time)
    println("elapsed time: $elapsed_time")
    
    return result
end

result = gettime(begin
    tong = 0
    for i in 1:10^6
        tong += i
    end
    tong
end)
