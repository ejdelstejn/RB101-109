# rb101_109 / lesson_5 / practice_problems / 12.rb

# Given the following data structure, and without using the Array#to_h method,
# write some code that will return a hash where the key is the first item in 
# each sub array and the value is the second item.

arr = [
  [:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']
]

# expected return value: 
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

=begin

input: an array of nested arrays and hashes containing various types of elements
output: a hash where the key is the first item in each sub array and the value
is the second item 

steps
1. iterate through the outer array using map to access the inner arrays
2. iterate through the inner arrays using each_with_object to initialize a hash
and 

=end

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
p hsh
