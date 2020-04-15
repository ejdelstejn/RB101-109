# rb101_109 / small_problems / medium_1 / exercise_1.rb

# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# P
# input: array
# output: rotated array (first element moved to the end of the array)

# The first element of the array should be rotated to be the final element of the array.
# The return value is a new array and the original array is not modified

# E
# 1. 
# input: [7, 3, 5, 2, 9, 1]
# output: [3, 5, 2, 9, 1, 7]

# 2.
# input: ['a', 'b', 'c']
# output: ['b', 'c', 'a']

# D / A
# Mental model:
# 1. Initialize variable 'rotated' as a dup of ary
# => rotated = ary.dup
# 2. Initialize variable 'first_element' as the first element of the array
# => first_element = rotated.shift
# 3. Push first_element to the end of rotated
# => rotated.push(first_element)
# Return rotated
# => rotated

# C!

def rotate_array(ary)
  rotated = ary.dup
  first_element = rotated.shift
  rotated.push(first_element)
  rotated
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
