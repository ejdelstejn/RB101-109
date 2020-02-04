# rb101_109 / easy_1 / exercise_8.rb

def average(array)
  total = 0
  array.each do |num|
    total += num
  end
  average = (total / array.length)
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40