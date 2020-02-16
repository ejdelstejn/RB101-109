# rb101_109 / lesson_4 / methods_and_more_methods / 03.rb

[1, 2, 3].reject do |num|
  puts num
end

# => [1, 2, 3]
# The return value is [1, 2, 3] because Enumerable#reject returns a new array
# with the elements that the block evaluates to as false.  Since puts always
# returns as nil, which is falsey, this means that the elements are selected
# for the new array.
