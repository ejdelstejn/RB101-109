# rb101_109 / easy_1 / exercise_3.rb

# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

def digit_list(number)
  if number >= 0
    string = number.to_s
    string2 = string.split('')
    string2.map!(&:to_i)
  else
    'This number is not a positive integer.'
  end
end

puts digit_list(12_345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                      # => true
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]              # => true
