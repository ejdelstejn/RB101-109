# rb101_109 / small_problems / easy_7 / exercise_2.rb

# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters, one
# the number of characters that are uppercase letters, and one the number of characters
# that are neither.

def letter_case_count(strng)
  case_count = {
   lowercase: 0, 
   uppercase: 0, 
   neither: 0 
 }

  lowercase_chars = ('a'..'z').to_a
  uppercase_chars = ('A'..'Z').to_a

  strng.chars.each do |item|
    if lowercase_chars.include?(item)
      case_count[:lowercase] += 1
    elsif uppercase_chars.include?(item)
      case_count[:uppercase] += 1
    else
      case_count[:neither] += 1
    end
  end
  p case_count
end


letter_case_count('abCdef 123') # => { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') # => { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') # => { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') # => { lowercase: 0, uppercase: 0, neither: 0 }
