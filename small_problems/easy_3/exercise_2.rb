# rb101_109 / easy_3 / exercise_2.rb

puts "==> Enter the first number:"
number_1 = gets.chomp.to_i

puts "==> Enter the second number:"
number_2 = gets.chomp.to_i

addition = number_1 + number_2
puts "==> #{number_1} + #{number_2} = #{addition}"

subtraction = number_1 - number_2
puts "==> #{number_1} - #{number_2} = #{subtraction}"

multiplication = number_1 * number_2
puts "==> #{number_1} * #{number_2} = #{multiplication}"

division = number_1 / number_2
puts "==> #{number_1} / #{number_2} = #{division}"

modulo = number_1 % number_2
puts "==> #{number_1} % #{number_2} = #{modulo}"

exponent = number_1 ** number_2
puts "==> #{number_1} ** #{number_2} = #{exponent}"