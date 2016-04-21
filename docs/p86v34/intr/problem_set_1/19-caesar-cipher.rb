# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)

def caesar_cipher(offset, string)
  #split string into an array
  letter_array = string.split("")
  #iterate through array
  #puts "letter array: #{letter_array}"
  i = 0
  while i < letter_array.length
    #if the value will wrap with this offset
    unless letter_array[i].ord == 32
      if offset >= (123 - letter_array[i].ord)  
      #puts true
      #replace it with the wrapped offset letter
      letter_array[i] = ((letter_array[i].ord) - (26 - offset)).chr
      #letter_array[i] = (letter_array[i].ord + offset).chr
      #else add offset to letter ASCII and convert back
      elsif offset < (123 - letter_array[i].ord)
       #set new value to replace old value
      letter_array[i] = (letter_array[i].ord + offset).chr
      end
    else 
      letter_array[i]= letter_array[i]
    end 
    i += 1
  end
  #return the joined array
  puts letter_array
  return letter_array.join
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s
)
