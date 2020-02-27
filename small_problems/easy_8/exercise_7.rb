# rb101_109 / small_problems / easy_8 / exercise_7.rb

# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(strng)
  repeat_strng = ''
  strng.split('').map do |char|
    repeat_strng << char * 2
  end
  repeat_strng
end

repeater('Hello') # => "HHeelllloo"
repeater("Good job!") # => "GGoooodd  jjoobb!!"
repeater('') # => ''
