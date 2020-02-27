# rb101_109 / small_problems / easy_8 / exercise_4.rb

# Write a method that returns a list of all substrings of a string. The returned list should
# be ordered by where in the string the substring begins. This means that all substrings that
# start at position 0 should come first, then all substrings that start at position 1, and
# so on. Since multiple substrings will occur at each position, the substrings at a given
# position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise.

def substrings_at_start(strng)
  substrings = []
  indx = 0
  strng.chars.each do |char|
    substrings << strng[0..indx]
    indx += 1
  end
  substrings
end

def substrings(strng)
  results = []
  (0...strng.size).each do |start_index|
    this_substring = strng[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  p results
end

substrings('abcde') # => 
=begin
[ 
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end