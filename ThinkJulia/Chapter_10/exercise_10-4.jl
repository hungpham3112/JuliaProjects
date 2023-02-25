"""
```
julia> t = [1, 2, 3, 4]
4-element Vector{Int64}:
    1
    2
    3
    4
julia> interior!(t)
julia> t
2-element Vector{Int64}:
    2
    3
```
"""
function interior!(t::Vector)
    popfirst!(t)
    pop!(t)
end

t = [1, 2, 3, 4]
interior!(t)
print(t)
