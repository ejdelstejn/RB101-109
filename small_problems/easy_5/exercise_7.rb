# rb101_109 / small_problems / easy_5 / exercise_7.rb

# Modify the word_sizes method from the previous exercise to exclude non-letters when
# determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(string)
  array = string.split(' ')
  hsh = {}
  array.each do |word|
    new_word = word.delete('^A-Za-z')
    hsh[new_word.size] += 1
  end
  p hsh
end


word_sizes('Four score and seven.') # => { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') # => { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") # => { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') # => {}