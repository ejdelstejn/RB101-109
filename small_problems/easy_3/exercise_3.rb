# rb101_109 / small_problems / easy_3 / exercise_3.rb

# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be counted
# as a character.

puts 'Please write word or multiple words: '
word_input = gets.chomp

word_array = word_input.split(' ')
number_of_characters = word_array.join.length

puts "There are #{number_of_characters} characters in \"#{word_input}\"."
