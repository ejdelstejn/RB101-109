# rb101_109 / lesson_5 / practice_problems / 10.rb

# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the original
# but where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

=begin 

input: an array of nested hashes, each containing a key-value pairs with symbols as keys
and integers as values

output: a new array identical in structure to the original array but where the value
of each integer is incremented by 1.

steps
1. initialize a variable new_array and equal it to the iteration through the current
data structure
2. iterate through the outer array using map to access the inner hashes
3. iterate through the inner hashes' values using map to access the
integers
4. increment each integer by one
5. return the key, value pair
6. return the variable new_array

=end

new_array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hashes|
  hashes.map do |k, v|
    v += 1
    {k => v}
  end
end

p new_array