# rb101_109 / easy_1 / exercise_3.rb

def digit_list(number)
  if number >= 0
    string = number.to_s
    string2 = string.split('')
    string2.map! {|a| a.to_i }
    p string2
  else
    "This number is not a positive integer."
  end
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true