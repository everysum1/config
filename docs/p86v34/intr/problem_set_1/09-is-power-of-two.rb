# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.

def is_power_of_two?(num)
    if num <= 0 
        return false
    elsif num == 1
        return true
    #check if num is greater than 1
    elsif (num > 1)
        #if num is divisible by 2
        if num % 2 == 0
            #if the number divided by 2 equals 2
            if num / 2 == 2
                #return true
                return true
            else 
                #else call powerOfTwo on the num divided by two
                 is_power_of_two?(num/2)
            end 
        else 
           return false
        end
    end 
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
