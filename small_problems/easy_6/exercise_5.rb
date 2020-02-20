# rb101_109 / small_problems / easy_6 / exercise_5.rb

# Write a method that takes an Array, and returns a new Array with the elements of the
# original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote
# in the previous exercise.

# -------------------------------------------------------------------------------------

def reverse(ary)
  location = -2
  new_ary = ary.dup
  unless ary.empty?
    until location == -(new_ary.length+1)
      item = new_ary.slice!(location)
      new_ary.push(item)
      location -= 1
    end
  end
  new_ary
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
