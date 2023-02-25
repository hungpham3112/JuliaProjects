t = [1, 2, 3]
cumulsum(t) = map(x -> sum(first(t, x)), 1:length(t))
println(cumulsum(t))
# julia >= 1.5
println(accumulate(+, t))
