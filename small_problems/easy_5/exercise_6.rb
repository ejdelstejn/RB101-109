# rb101_109 / small_problems / easy_5 / exercise_6.rb

# Write a method that takes a string with one or more space separated words and returns
# a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(string)
  array = string.split(' ')
  hsh = {}
  array.each do |word|
    if hsh.keys.include?(word.length)
      hsh[word.length] += 1
    else
      hsh[word.length] = 1
    end
  end
  p hsh
end


word_sizes('Four score and seven.') # => { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') # => { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") # => { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') # => {}