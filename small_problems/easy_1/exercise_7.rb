# rb101_109 / small_problems / easy_1 / exercise_7.rb

# Stringy Strings

# Write a method that takes one argument, a positive integer, and returns a string of alternating
# 1s and 0s, always starting with 1. The length of the string should match the given integer.

=begin

input: positive integer
output: string of alternating 0s and 1s the length of the integer, starting with 1

if number is even - last char is 0
if number is odd - last char is 1

steps:
1. initialize empty string - stringy
2. add char to stringy - starting with 1, 0, etc.
3. if num is even, do 1, 0 until end
4. if num is odd, do 1, 0 and then 1 at end
  
=end

def stringy(num)
  stringy = ''
  stringy << '10' * (num / 2)
  stringy << '1' if num.odd?
  stringy
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


# Further Exploration

# Modify stringy so it takes an additional optional argument that defaults to 1. If the method
# is called with this argument set to 0, the method should return a String of alternating 0s and
# 1s, but starting with 0 instead of 1.

def stringy0(num, option=1)
  if option == 1
    stringy(num)
  elsif option == 0
    stringy = ''
    stringy << '01' * (num / 2)
    stringy << '0' if num.odd?
    stringy
  end
end

puts stringy0(6, 0) == '010101'
puts stringy0(9)    == '101010101'
puts stringy0(4, 1) == '1010'
puts stringy0(7, 0) == '0101010'
