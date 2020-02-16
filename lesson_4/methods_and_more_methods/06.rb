# rb101_109 / lesson_4 / methods_and_more_methods / 06.rb

['ant', 'bear', 'caterpillar'].pop.size

# => 11
# The return value is 11 becaue Array#pop destructively removes the last item from
# the calling array and returns it. Then Array#size returns the size of the item (in 
# this case, the returned value of "caterpillar") so the result is 11.
