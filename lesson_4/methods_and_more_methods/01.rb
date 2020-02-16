# rb101_109 / lesson_4 / methods_and_more_methods / 01.rb

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3]
# The return value is [1, 2, 3] because the last value of the block, 'hi',
# is truthy.  Even though num > 5 is false, it is the second to last value
# in the block and Enumerable#select returns a new array containing all elements
# of an array for which the given block returns a true value.
