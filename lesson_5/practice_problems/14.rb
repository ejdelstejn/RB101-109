# rb101_109 / lesson_5 / practice_problems / 14.rb

# Given this data structure write some code to return an array containing
# the colors of the fruits and the sizes of the vegetables. The sizes should
# be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# The return value should look like this:

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

=begin
 
input: hashes: keys = string with food name
               values = hashes with symbol keys: :type, :colors, :size
                                           values: string, array of string colors, string
output: an array containing the colors of the fruits and the sizes of the vegetables.
The sizes should be uppercase and the colors should be capitalized

steps:
1. initalize a variable equal to the values of hsh
2. initialize variable hsh_array to an empty array. The returned values will be
appended to this array
3. iterate through hsh_values using each to access the keys and values:
  hsh_values.each do |key, value|
    if key[:type] == 'fruit'
      key[:colors].each do |color|
        color.capitalize!
        hsh_array << key[:colors]
      end
    elsif key[:type] == 'vegetable'
     hsh_array << key[:size].upcase
    end
  end
4. p hsh_array to output result to the console
=end

hsh_values = hsh.values
hsh_array = []

hsh_values.each do |key, value|
  if key[:type] == 'fruit'
    key[:colors].each do |color|
      color.capitalize!
      hsh_array << key[:colors]
    end
  elsif key[:type] == 'vegetable'
    hsh_array << key[:size].upcase
  end
end

p hsh_array








