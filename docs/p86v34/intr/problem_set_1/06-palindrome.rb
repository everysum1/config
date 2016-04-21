# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)
    #reverse string
    reversed = []
    i = string.length-1
    while i >= 0
        reversed.push(string[i])
        i -= 1
    end 
    #compare original string and reversed one
    if (reversed.join == string)
        #if they match, return true
        return true
    #otherwise return false
    else
        return false
    end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
