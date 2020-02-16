# rb101_109 / lesson_5 / practice_problems / 11.rb

# Given the following data structure use a combination of methods, including
# either the select or reject method, to return a new array identical in
# structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

=begin
 
input: a nested array containing arrays of various size containing integers as elements
output: a new array identical in structure to the original but containing only
the integers that are multiples of 3.

steps:
1. iterate through arr using map to access the inner arrays
2. iterate through the inner arrays using select to select the values that are
integers that are multiples of 3
3. return the new array containing only integers that are multiples of 3

=end

new_array = arr.map do |inner_array|
  inner_array.select {|num| num %3 ==0 } 
end

p new_array