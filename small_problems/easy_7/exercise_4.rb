# rb101_109 / small_problems / easy_7 / exercise_4.rb

# Write a method that takes a string as an argument and returns a new string in which
# every uppercase letter is replaced by its lowercase version, and every lowercase letter
# by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(strng)
  new_strng = strng.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase 
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  new_strng.join
end

p swapcase('CamelCase') # => 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') # => 'tONIGHT ON xyz-tv'
p swapcase('t0n1gHt 0000N %&$@*#^$*((())) XYZ-TV')
