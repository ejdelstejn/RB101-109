# rb101_109 / small_problems / medium_1 / exercise_2.rb

# Write a method that can rotate the last n digits of a number. For example:

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# --------------------------------------------------------------------------------

# P
# input: number, number of digits to rotate (n)
# output: number with the last n digits rotated

# Rotate the last n digits of a number. Return the number with those digits rotated.

# --------------------------------------------------------------------------------

# E
# 1. 
# input: 735291, 1
# output: 735291

# 2.
# input: 735291, 2
# output: 735219

# 3. 
# input: 735291, 3
# output: 735912

# 4.
# input: 735291, 4
# output: 732915

# 5. 
# input: 735291, 5
# output: 752913

# 6.
# input: 735291, 6
# output: 352917

# --------------------------------------------------------------------------------

# D / A
# Mental model:
# 1. Convert the number to a string
# => strng = num.to_s
# 2. Use chars to split the string into an array
# => strng.chars
# 3. 

# --------------------------------------------------------------------------------
# Code!

def rotate_array(ary)
  rotated = ary.dup
  first_element = rotated.shift
  rotated.push(first_element)
  rotated
end

def rotate_rightmost_digits(num, n)
  strng = num.to_s
  array = strng.chars
  array[0..(-n - 1)]
end

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917

