# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  #determine which is the smaller number
  smaller = number1 > number2 ? number2 : number1
  larger = number1 > number2 ? number1 : number2
  #loop from smaller number backwards to zero
  denominator = smaller
  while denominator > 0
    #find largest number that divides into smaller number
    if smaller % denominator == 0
      #check if it also divides evenly into larger number
      if larger % denominator == 0
      #if it does, return number
      return denominator
      end 
    end 
    denominator -= 1
  end 
    #return nil
    return nil
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
