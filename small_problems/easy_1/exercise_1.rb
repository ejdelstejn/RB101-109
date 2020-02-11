# rb101_109 / easy_1 / exercise_1.rb

# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

def repeat(string, int)
  int.times do
    puts string
  end
end

repeat('Hello', 3)
