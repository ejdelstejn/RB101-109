# rb101_109 / small_problems / easy_7 / exercise_10.rb

# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(words)
  words.split(' ')[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
puts penultimate('Launch school is the absolute BEST') == 'absolute'
puts penultimate('"Tell me and I forget. Teach me and I remember. Involve me and I learn" - Benjamin Franklin') == 'Benjamin'
