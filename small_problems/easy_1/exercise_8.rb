# rb101_109 / smalls_problems / easy_1 / exercise_8.rb

# Array Average

# Write a method that takes one argument, an array containing integers, and returns the average
# of all numbers in the array. The array will never be empty and the numbers will always be positive
# integers.

# input: array containing positive integers
# output: average of all numbers in the array

# need to:
# calculate the sum of all the integers
  # initialize variable sum, assign value of 0
  # loop through array, adding each number to total sum
# divide the sum by the total number of integers
  # initialize variable average - assign value of sum / arr.size

def average(arr)
  sum = arr.reduce(:+)
  sum / arr.size
end

puts average([1, 5, 87, 45, 8, 8])    == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Further Exploration

# Currently, the return value of average is an Integer. When dividing numbers, sometimes the quotient
# isn't a whole number, therefore, it might make more sense to return a Float. Can you change the
# return value of average from an Integer to a Float?

def average_float(arr)
  sum = arr.reduce(:+)
  sum.to_f / arr.size
end

puts average_float([1, 5, 87, 45, 8, 8])    == 25.666666666666668
puts average_float([9, 47, 23, 95, 16, 52]) == 40.333333333333336
