# rb101_109 / small_problems / easy_3 / exercise_1.rb

# Write a program that solicits 6 numbers from the user, then prints a
# message that describes whether or not the 6th number appears amongst
# the first 5 numbers.

number_array = []

puts '==> Enter the 1st number: '
number_array << gets.chomp.to_i

puts '==> Enter the 2nd number: '
number_array << gets.chomp.to_i

puts '==> Enter the 3rd number: '
number_array << gets.chomp.to_i

puts '==> Enter the 4th number: '
number_array << gets.chomp.to_i

puts '==> Enter the 5th number: '
number_array << gets.chomp.to_i

puts '==> Enter the last number: '
number_6 = gets.chomp.to_i

if number_array.include?(number_6)
  puts "The number #{number_6} appears in #{number_array}."
else
  puts "The number #{number_6} does not appear in #{number_array}."
end
