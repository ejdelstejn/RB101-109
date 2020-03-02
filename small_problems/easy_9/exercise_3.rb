# rb101_109 / small_problems / easy_9 / exercise_3.rb

# Write a method that takes a number as an argument. If the argument is a positive
# number, return the negative of that number. If the number is 0 or negative, return
# the original number.

def negative(number)
  number > 0 ? -number : number
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
puts negative(10) == -10
puts negative(-222) == -222
puts negative(6) == -6
puts negative(6.543) == -6.543
puts negative(-20) == -20
puts negative(9.9999) == -9.9999
puts negative(0.5) == -0.5
puts negative(1) == -1