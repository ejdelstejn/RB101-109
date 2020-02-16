# rb101_109 / lesson_4 / methods_and_more_methods / 02.rb

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# => 2
# The return value is 2 because Enumerable#count will count the number of 
# element for which the block returns a true value.  In this case, str.length < 4
# returns the number of strings with a length less than four, which for this array
# are 'ant' and 'bat'.
