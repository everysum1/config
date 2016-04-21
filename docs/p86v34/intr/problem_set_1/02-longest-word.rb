# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  #split string into array by word
  sentenceArray = sentence.split(" ")
  #save first word as longest word so far (variable)
  longestSoFar = sentenceArray[0]
  #iterate through the array starting with second word
  i = 1
  while (i < sentenceArray.length)
    if (longestSoFar.length < sentenceArray[i].length)
      longestSoFar = sentenceArray[i]
    end
  i = i + 1
  end
  #compare it to first. if longer, replace longest word so far variable
  #return longest word variable
  return longestSoFar
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
