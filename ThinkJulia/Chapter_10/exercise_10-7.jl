hasdupicates(array::Matrix) = length(array) == length(Set(array))
print(hasdupicates(reshape(["a", 1, 5, "a"], 4, 1)))
