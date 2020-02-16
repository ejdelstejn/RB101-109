# rb101_109 / small_problems / easy_3 / exercise_2.rb

# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power.
# Do not worry about validating the input.

puts '==> Enter the first number:'
number_1 = gets.chomp.to_i

puts '==> Enter the second number:'
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

exponent = number_1**number_2
puts "==> #{number_1} ** #{number_2} = #{exponent}"
