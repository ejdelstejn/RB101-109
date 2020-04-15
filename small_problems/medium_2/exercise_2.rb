# rb101_109 / small_problems / medium_2 / exercise_2.rb

####### Now I Know My ABCs #######

# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from
# any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks,
# false otherwise.

# -------------------------------------------------------------------------------------------------------------

# (Understanding the) Problem:
# Input: string
# Output: boolean value (true if word can be spelled from list of blocks, false if not)

# Examples:

# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# Data Structure:
# Nested arrays for block values
# => if one block is used for either value, then that block cannot be used again
# => make copy of the blocks array and delete a pair value if used

# Algorithm:
# Intialize variable blocks_copy and assign it the value of a copy of constant variable BLOCKS
# Initialize answer? = nil
# Iterate through blocks_copy (pair)
# => if word.upcase.include?(pair[0] || pair[1])
# => blocks_copy.delete(pair)
# => answer? = true
# => else
# => answer? = false


# -------------------------------------------------------------------------------------------------------------

BLOCKS = [['B', 'O'], ['G', 'T'], ['V', 'I'], ['X', 'K'], ['R', 'E'], ['L', 'Y'], ['D', 'Q'], ['F', 'S'], ['Z', 'M'], ['C', 'P'], ['J', 'W'], ['N', 'A'], ['H', 'U']]

def block_word?(word)
  blocks_copy = BLOCKS.dup
  total_word = ''
  letters = word.chars
  letters.each do |char|
    blocks_copy.each do |pair|
      pair.each do |side|
        if char.upcase == side
          total_word << side
          blocks_copy.delete(pair)
        else
          next
        end
      end
    end
  end
  if total_word == word.upcase
    true
  else
    false
  end
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
p block_word?('real') #== false
p block_word?('got') #== false
p block_word?('BUG') #== true
