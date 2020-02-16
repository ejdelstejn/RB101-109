# rb101_109 / lesson_5 / practice_problems / 15.rb

# Given this data structure write some code to return an array which
# contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

=begin

input: array of nested hashes containing symbols as keys and arrays with integers
as values
output: an array which contains only the hashes where all the integers are even

steps:
1. initalize a variable equal to the values of hsh
2. initialize variable hsh_array to an empty array. The returned values will be
appended to this array
  
=end

arr.select do |inner_hash|
  inner_hash.all? do |key, value|
    value.all? do |num|
      num.even?
    end
  end
end