# rb101_109 / easy_1 / exercise_6.rb

# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters
# reversed. Each string will consist of only letters and spaces. Spaces should
# be included only when more than one word is present.

def reverse_words(string)
  split_string = string.split(' ')
  new_string = []
  split_string.each do |word|
    if word.length >= 5
      new_word = word.reverse
      new_string << new_word
    else
      new_string << word
    end
  end
  new_string.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
