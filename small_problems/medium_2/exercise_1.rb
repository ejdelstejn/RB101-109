# rb101_109 / small_problems / medium_2 / exercise_1.rb

####### Longest Sentence #######

# Write a program that reads the content of a text file and then prints the longest sentence in the file based
# on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?).
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.

# -------------------------------------------------------------------------------------------------------------

# input: text file
# output: the longest sentence in the file; the number of words in the longest sentence

# Considerations:
# => Sentences can end with (.), (!), or (?)
# => Characters that are not spaces or (.), (!), (?) are words.

# Data Structure:
# Assign variable text to imported text file
# Split text file into sentences (split by (.), (!), (?))
# initialize variable longest_sentence; assign value nil
# initialize variable longest_sentence_count; assign value 0
# Iterate through text file sentences
# Initialize variable current_sentence
# Initialize variable current_sentence_count = 0
# Iterate through the words in each sentence (split sentences by " ")
# current_sentence_count += 1 (for each word)
# end
# Compare the length of current_sentence_count with longest_sentence_count
# if current_sentence_count >= longest_sentence_count
# longest_sentence_count = current_sentence_count
# longest_sentence = current_sentence
# Return longest_sentence
# Return longest_sentence_count

# -------------------------------------------------------------------------------------------------------------

def longest_sentence(text)
  sentences = text.scan(/[^\.!?]+[\.!?]/)
  longest_sentence = nil
  longest_sentence_count = 0
  sentences.each do |sentence|
    current_sentence = sentence
    current_sentence_count = 0
    sentence.split(' ').each do |word|
      current_sentence_count += 1
    end
    if current_sentence_count >= longest_sentence_count
      longest_sentence_count = current_sentence_count
      longest_sentence = current_sentence
    end
  end
  puts "The longest sentence is: #{longest_sentence}"
  puts "There are #{longest_sentence_count} words in this sentence."
end

frankenstein = File.read('frankenstein.txt')
longest_sentence(frankenstein)
