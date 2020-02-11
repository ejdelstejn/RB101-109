# rb101_109 / easy_1 / exercise_4.rb

# Write a method that counts the number of occurrences of each
# element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count = Hash.new(0)
  array.each do |item|
    count[item] += 1
  end
  puts count
end

count_occurrences(vehicles)
