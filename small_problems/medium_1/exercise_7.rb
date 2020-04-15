# rb101_109 / small_problems / medium_1 / exercise_7.rb

####### Word to Digit #######

# Write a method that takes a sentence string as input, and returns the same string with
# any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven',
# 'eight', 'nine' converted to a string of digits.

# ---------------------------------------------------------------------------------------------

# P
# input: sentence string
# output: the same string with any sequence of digit words ('zero', 'one', etc.) converted to
# a string of digits

# E 
# word_to_digit('Please call me at five five five one two three four. Thanks.')
# => 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# word_to_digit('I live in zip code eight three two zero one.')
# => 'I live in zip code 8 3 2 0 1.'

# word_to_digit('l three three seven five p three four k')
# => 'l 3 3 7 5 p 3 4 k'

# D 
# 1.) Split the string by words
# 2.) Use each to iterate through the words of the string
# 3.) Use case statement (or hash?) to change the words WHEN they are digit names to digits
# themselves
# 4.) Consider: How do we sub within the original string instead of returning a new string?
#               How do we consider edge cases such as when there is a comma, period. etc. at
#               the end of the digit word?

# Code!

# ---------------------------------------------------------------------------------------------

# first time around (less elegant solution):

# def word_to_digit(sentence)
#   sentence.scan(/[\w']+/).each do |word|
#     case word
#     when /\b#{'zero'}\b/     then sentence[/\b#{'zero'}\b/] = '0'
#     when /\b#{'one'}\b/      then sentence[/\b#{'one'}\b/  ] = '1'
#     when /\b#{'two'}\b/      then sentence[/\b#{'two'}\b/] = '2'
#     when /\b#{'three'}\b/    then sentence[/\b#{'three'}\b/  ] = '3'
#     when /\b#{'four'}\b/     then sentence[/\b#{'four'}\b/] = '4'
#     when /\b#{'five'}\b/     then sentence[/\b#{'five'}\b/  ] = '5'
#     when /\b#{'six'}\b/      then sentence[/\b#{'six'}\b/] = '6'
#     when /\b#{'seven'}\b/    then sentence[/\b#{'seven'}\b/  ] = '7'
#     when /\b#{'eight'}\b/    then sentence[/\b#{'eight'}\b/ ] = '8'
#     when /\b#{'nine'}\b/     then sentence[/\b#{'nine'}\b/] = '9'
#     else                     next
#     end
#   end
#   sentence
# end


# more elegant solution (from second time around):

DIGITS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

def word_to_digit(sentence)
  sentence.scan(/[\w']+/).each do |word|
    if DIGITS.include?(word)
      sentence[word] = DIGITS.index(word).to_s
    end
  end
  p sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
# => 'Please call me at 5 5 5 1 2 3 4. Thanks.'

p word_to_digit('I live in zip code eight three two zero one.')
# => 'I live in zip code 8 3 2 0 1.'

p word_to_digit('l three three seven five p three four k')
# => 'l 3 3 7 5 p 3 4 k'

p word_to_digit("I'm on freight train number three one eight on my way to clone hamsters.")
# => 'I'm on freight train number 3 1 8 on my way to clone hamsters'
