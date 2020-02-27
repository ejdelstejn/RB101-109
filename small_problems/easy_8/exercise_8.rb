# rb101_109 / small_problems / easy_8 / exercise_8.rb

# Write a method that takes a string, and returns a new string in which every consonant
# character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should
# not be doubled.

CONSONANTS = 'qwrtypsdfghjklzxcvbnmQWRTYPSDFGHJKLZXCVBNM'

def double_consonants(strng)
  string_array = strng.split('')
  new_string = ''
  string_array.each do |char|
    if CONSONANTS.include?(char)
      new_string << char * 2
    else
      new_string << char
    end
  end
  new_string
end

puts double_consonants('String') # => "SSttrrinngg"
puts double_consonants("Hello-World!") # => "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") # => "JJullyy 4tthh"
puts double_consonants('') # => ""
