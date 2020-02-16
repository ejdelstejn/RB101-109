# rb101_109 / easy_3 / exercise_9.rb

# Write another method that returns true if the string passed as an argument
# is a palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters.

def real_palindrome?(string)
  new_string = string.gsub(/[^0-9a-z]+/i, '').downcase
  new_string.reverse == new_string
end

puts real_palindrome?('madam') #== true
puts real_palindrome?('Madam') #== true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
puts real_palindrome?('356653') #== true
puts real_palindrome?('356a653') #== true
puts real_palindrome?('123ab321') #== false
