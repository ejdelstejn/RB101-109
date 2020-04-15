# rb101_109 / small_problems / easy_1 / exercise_4.rb

# How Many?

# Write a method that counts the number of occurrences of each
# element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, 
# print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(list)
  element_count = Hash.new(0)
  list.each {|item| element_count[item] += 1}
  element_count.each {|element, count| puts "#{element} => #{count}"}
end

count_occurrences(vehicles)
