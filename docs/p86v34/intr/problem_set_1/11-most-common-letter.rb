# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  # #create array, letter and count to return 
  # mostCommon = []
  # count = 0
  # #assign the first letter to a variable
  # i = 0
  # #loop through array
  # while i < string.length
  #   count = string.count(string[i])
  #   for j in string
  #   #count how many times that first letter exists
  #     if string.count(j) > count
  #   #count how many times the second letter exists
  #       mostCommonLetter = j
  #       count = string.count(j)
  #   #if first is greater, make it mostcommon
  #     end  
  #   #if second is greater, make it most common
  #   end 
  # end
  
 #loop through array
 i = 0
 j = 0
 counter = 0
 greatestCount = 0
 #for every element, keep a tally counter
 while i < string.length
    j = 0
    #loop through the array and count how many times this char occurs
    while j < string.length
      if string[i] == string[j]
        counter += 1
      end 
      j += 1
    end 
    #if it is greater than the last count
    if counter > greatestCount 
      #reassign it to the last count
      greatestCount = counter
      #put the char and the count in an array
      mostCounted = [string[i], greatestCount]
    end 
    counter = 0
    i += 1
 end 
  #return array
  return mostCounted
end 
  



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)

