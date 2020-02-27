# rb101_109 / small_problems / easy_8 / exercise_3.rb

# Write a method that returns a list of all substrings of a string that start at the
# beginning of the original string. The return value should be arranged in order from
# shortest to longest substring.

def substrings_at_start(strng)
  substrings = []
  indx = 0
  strng.chars.each do |char|
    substrings << strng[0..indx]
    indx += 1
  end
  substrings
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
