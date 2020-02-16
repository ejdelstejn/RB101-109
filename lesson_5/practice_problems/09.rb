# rb101_109 / lesson_5 / practice_problems / 09.rb

# Given this data structure, return a new array of the same structure but with
# the sub arrays being ordered (alphabetically or numerically as appropriate)
# in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

=begin
 
input: array with three nested arrays, two containing strings and one containing
integers
output: a new array of the same structure but with the sub arrays being ordered 
(alphabetically or numerically as appropriate) in descending order.

steps:

1. iterate through the outer array using map! to access the inner arrays and return
a new array
2. call sort on the inner arrays to sort them
3. use <=> to sort the arrays in descending order
4. return the new array

=end

arr.map! do |inner_arr|
  inner_arr.sort do |a, b|
    b <=> a
  end
end

p arr
