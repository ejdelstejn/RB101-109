# rb101_109 / small_problems / easy_6 / exercise_2.rb

# Write a method that takes an array of strings, and returns an array of the same string
# values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(array)
  array.map do |string|
    string.chars.map do |letter|
      if letter.downcase == 'a' || letter.downcase == 'e' || letter.downcase == 'i' || letter.downcase == 'o' || letter.downcase == 'u'
        string.delete!(letter)
      end
    end
  end
  array
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) # => %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) # => %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) # => ['BC', '', 'XYZ']