# rb101_109 / small_problems / easy_6 / exercise_7.rb

# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of
# the original Array, respectively. If the original array contains an odd number
# of elements, the middle element should be placed in the first half Array.

def halvsies(ary)
  ary1 = []
  until ary1.length >= ary.length
    ary1 << ary[0]
    ary.slice!(0)
  end
  new_ary = [ary1, ary]
end

p halvsies([1, 2, 3, 4]) # => [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) # => [[1, 5, 2], [4, 3]]
p halvsies([5]) # => [[5], []]
p halvsies([]) # => [[], []]

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
