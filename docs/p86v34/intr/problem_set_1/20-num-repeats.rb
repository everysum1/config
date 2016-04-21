# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    h = Hash.new(0)
    string.each_char do |c| 
        h[c] = h[c] ? h[c]+1 : 1
    end 
    repeated = h.values.select {|n| n > 1 }
    return repeated.length
    
    
    # I'm just going to leave this right here so you remember how much time you wasted trying to write javascript in ruby.  There's a method for everything!
    #
    # repeated = 0
    # i = 0
    # count = 0
    # while i < string.length
    #     #count up the times a letter occurs in a string
    #     j = 0
    #     while j < string.length
    #         if string[i] == string[j]
    #           count += 1
    #         end
    #         j += 1 
    #         #if the answer is greater than 1, increment repeated
    #         if count > 1
    #         repeated += 1
    #     end
    #     count = 0
    #     i += 1
    # end 
    
    # #split string into array
    # strArray = string.split("")
    # #iterate over array
    # i = 0
    # while i < strArray.length
    #     #for each letter the first letter matches, update counter
    #     for j in strArray
    #         if strArray[i] == j
    #             counter += 1
    #         end 
    #     #if counter > 1 
    #     end
    #     if counter > 1
    #     #update repeated variable
    #         repeated += 1
    #     end 
    #     counter = 0
    #     i += 1
    
    # puts repeated
    # return repeated
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
