# rb101_109 / lesson_4 / str_element.rb

str = "joe's favorite color is blue"

arr = str.split

new_arr = []
arr.each do |i|
  i[0] = i[0].upcase
  new_arr << i
end

str = new_arr.join(' ')
puts str