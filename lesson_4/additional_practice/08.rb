# rb101_109 / lesson_4 / additional_practice / 08.rb

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# => 