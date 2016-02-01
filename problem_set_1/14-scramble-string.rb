# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

def scramble_string(string, positions)
  scrambled = []
  #split the string into an array of letters
  letters = string.split("")
  #loop through array
  i = 0
  while i < letters.length
  #assign each letter an index in a new array
    scrambled[positions[i]] = letters[i]
    i += 1
  end
  #return the new array
  return scrambled.join("")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
  (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
)
puts(
  'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vroakm"): ' +
  (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vroakm").to_s
)
#vroakm
