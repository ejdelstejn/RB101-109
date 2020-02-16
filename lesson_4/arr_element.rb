# rb101_109 / lesson_4 / arr_element.rb

arr = [1, 2, 3, 4, 5]

new_arr = []
arr.each do |i|
  i += 1
  new_arr << i
end

p new_arr