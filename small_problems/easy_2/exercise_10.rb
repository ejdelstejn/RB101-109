# rb101_109 / easy_2 / exercise_10.rb

# What will the following code print, and why?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# ==> Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo
# On line 5, we initialize variable array1 and set it equal to an array
# containing the string values 'Moe', 'Larry', 'Curly', 'Shemp', 'Harpo',
# 'Chico', 'Groucho', and 'Zeppo'.
# On line 6, we initialize variable array2 and set it equal to an empty array.
# On line 7, we use the each method to iterate through array1 and append each
# value to array2.
# On line 8, we we use the each method to iterate through array1 once more, this
# time using upcase! to destructively modify all values that start with either 'C'
# or 'S' so that the entire word is capitalized. All values are once again appended
# to array2
# On line 8, we use puts to output array2. The output will be each name on a separate
# line, and CURLY, SHEMP, and CHICO will be capitalized.
