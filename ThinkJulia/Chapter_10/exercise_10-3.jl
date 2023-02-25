function interior(t::Vector)::Vector
    popfirst!(t)
    pop!(t)
    t
end

t = [1, 2, 3, 4]
print(interior(t))

