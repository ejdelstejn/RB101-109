# rb101_109 / small_problems / easy_1 / exercise_1.rb

# Repeat Yourself

# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

def repeat(string, num)
  num.times {puts string}
end

repeat('Hello', 3)
repeat('Wow!', 10)
repeat('Repeat!', 7)
