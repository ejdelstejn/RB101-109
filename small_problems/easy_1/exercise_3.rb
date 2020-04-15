# rb101_109 / small_problems / easy_1 / exercise_3.rb

# List of Digits

# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

def digit_list(digits)
  digits.to_s.chars.map { |digit| digit.to_i }
end

p digit_list(12345) #== [1, 2, 3, 4, 5]     # => true
p digit_list(7) #== [7]                     # => true
p digit_list(375290) #== [3, 7, 5, 2, 9, 0] # => true
