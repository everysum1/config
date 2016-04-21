# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
  #declare new array
  reversed = []
  #split string into separate characters in an array
  stringArray = string.split
    #loop through array from end to beginning
    i = string.length-1
    while (i >= 0)
      reversed.push(stringArray[i])
      i = i-1
    #push all characters into a new array
    end
    #join all characters in an array
    reversed = reversed.join
    #return the new array
    return reversed
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
