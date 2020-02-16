# rb101_109 / easy_3 / exercise_10.rb

# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(number)
  number.to_s.reverse == number.to_s
end

puts palindromic_number?(34543) #== true
puts palindromic_number?(123210) #== false
puts palindromic_number?(22) #== true
puts palindromic_number?(5) #== true
