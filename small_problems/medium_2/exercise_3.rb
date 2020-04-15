# rb101_109 / small_problems / medium_2 / exercise_3.rb

####### Lettercase Percentage Ratio #######

# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase
# characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the
# percentage of characters in the string that are lowercase letters, one the percentage of characters that
# are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# -------------------------------------------------------------------------------------------------------------
# (Understanding the) Problem
# Input: string
# Output: hash with 3 entries:
#         => 1. percentage of lowercase chars 
#         => 2. percentage of uppercase chars
#         => 3. percentage of neither

# Assume that string will be >= 1

# Examples:

# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Data Structure
# Output is a hash with 3 key-value pairs
# Split string into array to iterate through the values (.chars) 

# Algorithm
# Initialize variable chars and assign it the value of the split string (strng.chars)
# Initialize hash percentage_ratio and create entries for each lettercase value
# Iterate through chars character by character
# => if character uppercase then percentage_ratio[:uppercase] += 1
# => if character lowercase then percentage_ratio[:lowercase] += 1
# => else then percentage_ratio[:neither] += 1


# -------------------------------------------------------------------------------------------------------------
def letter_count(string)
  letter_count = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}
  string.chars.each do |char|
    if char =~ /[a-z]/
      letter_count[:lowercase] += 1.0
    elsif char =~ /[A-Z]/
      letter_count[:uppercase] += 1.0
    else
      letter_count[:neither] += 1.0
    end
  end
  letter_count
end

def letter_percentages(string)
  percentage_ratio = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}
  total = letter_count(string)[:lowercase] + letter_count(string)[:uppercase] + letter_count(string)[:neither]
  percentage_ratio[:lowercase] = (letter_count(string)[:lowercase] / total) * 100.0
  percentage_ratio[:uppercase] = (letter_count(string)[:uppercase] / total) * 100.0
  percentage_ratio[:neither] = (letter_count(string)[:neither] / total) * 100.0
  percentage_ratio
end

p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }
