# rb101_109 / lesson_4 / methods_and_more_methods / 04.rb

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }
# The return value is { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' } because 
# Enumerable#each_with_object iterates over a collection and passes the current
# value and the memo to the block.  In this case, the collection was an array
# with three strings (['ant', 'bear', 'cat']) and the memo was {}, a new hash.
# The block sets the value of the current value to index 0 in the current value.
# This is returned as a key value pair with index 0 of the values as the keys
# and the original values as values.