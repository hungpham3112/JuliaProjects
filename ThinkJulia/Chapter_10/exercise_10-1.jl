t = [[1, 2], [9, 12.3], [3.31, 21]]
nestedsum(list) = sum(map(x -> sum(x), list))
print(nestedsum(t))
