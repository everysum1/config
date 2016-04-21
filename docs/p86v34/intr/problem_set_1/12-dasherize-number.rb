# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  #split number into an array
  array = num.to_s.chars.map(&:to_i)
  i = 0
  #iterate over array to find odd numbers
  while i < array.length
    if !(array[i] % 2 == 0)
      #if it is the first number, only put a dash on the right side
      if i == 0
        array[0] = [array[i], "-"].join
        puts "first number: #{array[0]}"
        #if it is the last number, only put a dash on the left side
      elsif i == array.length-1
        array[array.length-1] = ["-", array[array.length-1]].join
        puts "last number: #{array[array.length-1]}"
      #else put a dash on both sides
      else
        if (i-1 == 0 && i+1 == array.length-1)
          array[i] = array[i]
        elsif i-1 == 0
          array[i] = [array[i], "-"].join
        elsif i+1 == array.length-1
          array[i] = ["-", array[i]].join
        else
          array[i] = ["-", array[i], "-"].join
        end 
      end 
    end 
    i += 1
  end 
  #return dashedString
  array = array.join
  puts array
  return array
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
