function is_six_digit_palindrome(string)::Bool
    if length(string) == 6
        string[1:3] == reverse(string[4:6])
    else
        false
    end
end


lst = filter(x -> is_six_digit_palindrome(x), map(x -> string(x), 100_000:999_999))
mapped_file = map(x -> x * "\n", lst)
print("The number of abecedarian words is: ", length(lst))
