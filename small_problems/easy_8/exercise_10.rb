# rb101_109 / small_problems / easy_8 / exercise_10.rb

# Write a method that takes a non-empty string argument, and returns the middle character
# or characters of the argument. If the argument has an odd length, you should return
# exactly one character. If the argument has an even length, you should return exactly
# two characters.

def center_of(strng)
  if strng.length.even?
    middle = strng.length / 2
    char = strng[middle-1..middle]
  else
    middle = strng.length / 2
    char = strng[middle]
  end
  char
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'