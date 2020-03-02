# rb101_109 / small_problems / easy_9 / exercise_2.rb

# A double number is a number with an even number of digits whose left-side digits
# are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676
# are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the
# argument is a double number; double numbers should be returned as-is.

# input: integer
# output: 2 times the integer provided as an argument, unless the argument is a double
# number; double numbers should be returned as-is

# steps:
# convert number to string
# if string.length.even?
#   if string[0...(string.length/2)] == string[string.length/2...-1]
# 

def twice(number)
  number2 = ''
  strng = number.to_s
  strng.chars do |num|
    number2 << num unless number2.length == strng.length/2
  if num == strng
  else
    p 'no'
  end
end

twice(37) #== 74
twice(44) #== 44
twice(334433) #== 668866
twice(444) #== 888
twice(107) #== 214
twice(103103) #== 103103
twice(3333) #== 3333
twice(7676) #== 7676
twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
twice(5) #== 10