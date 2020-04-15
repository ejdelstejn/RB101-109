# rb101_109 / small_problems / easy_1 / exercise_9.rb

# Sum of Digits

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# input: positive integer
# output: sum of its digits

# Need to break down the integer into individual digits
  # convert the integer into a string (23 -> '23')
  # separate the string into characters ('23' -> ['2', '3'])
# Add the digits together
  # initialize variable sum, assign value of zero
  # loop through array, convert string to integer, add it to sum
# Return the sum

def sum(num)
  num_arr = num.to_s.chars
  sum = 0
  num_arr.each {|num| sum += num.to_i}
  sum
end

p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45
