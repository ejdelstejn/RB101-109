# rb101_109 / easy_2 / exercise_10.rb

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value } 
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# array2 = %w(Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo)