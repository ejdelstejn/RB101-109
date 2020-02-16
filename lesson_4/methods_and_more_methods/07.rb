# rb101_109 / lesson_4 / methods_and_more_methods / 07.rb

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => true
# The return value is true becaue Array#any? returns true if the block
# ever returns a value other than false or nil, and the block returns true on the 
# first iteration so any? must return true.
