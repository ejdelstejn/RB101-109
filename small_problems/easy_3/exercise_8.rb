# rb101_109 / easy_3 / exercise_8.rb

# Write a method that returns true if the string passed as an argument is
# a palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# Further Exploration
# Write a method that determines whether an array is palindromic; that is, the
# element values appear in the same sequence both forwards and backwards in
# the array.

def palindrome_words?(words)
  true if words.reverse == words
end

puts palindrome_words?('madam') == true
puts palindrome_words?('Madam') == false          # (case matters)
puts palindrome_words?("madam i'm adam") == false # (all characters matter)
puts palindrome_words?('356653') == true

def palindrome_array?(array)
  array_string = ''
  array.map do |item|
    array_string << item.to_s
  end
  array_string.reverse == array_string
end

puts palindrome_array?([2, 3, 4, 3, 2]) #== true
puts palindrome_array?(['whoop']) # == false          # (case matters)
puts palindrome_array?(%w(Yay yay yay)) #== false # (all characters matter)
puts palindrome_array?(%w(yay yay yay)) #== true
