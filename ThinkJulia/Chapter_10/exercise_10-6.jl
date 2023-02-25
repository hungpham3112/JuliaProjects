isanagram(word1::String, word2::String) = sort(collect(word1)) == sort(collect(word2))
print(isanagram("hello", "oelhl"))
