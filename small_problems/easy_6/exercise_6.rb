# rb101_109 / small_problems / easy_6 / exercise_6.rb

# Write a method that takes two Arrays as arguments, and returns an Array that contains
# all of the values from the argument Arrays. There should be no duplication of values
# in the returned Array, even if there are duplicates in the original Arrays.

def merge(ary1, ary2)
  new_ary = ary1 + ary2
  p new_ary.uniq!
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
merge([1, 1, 5], [3, 5, 19])
merge([77, 234, 13, 13, 7], [7, 13, 99, 0, -4])
