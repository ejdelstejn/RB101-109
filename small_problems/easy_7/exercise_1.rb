# rb101_109 / small_problems / easy_7 / exercise_1.rb

# Write a method that combines two Arrays passed in as arguments, and returns a new Array
# that contains all elements from both Array arguments, with the elements taken in alternation.

def interleave(ary1, ary2)
  new_ary = []
  until ary1.empty? && ary2.empty?
    new_ary << ary1[0] unless ary1.empty?
    ary1.slice!(0)
    new_ary << ary2[0] unless ary2.empty?
    ary2.slice!(0)
  end
  new_ary
end

p interleave([1, 2, 3], ['a', 'b', 'c']) # => [1, 'a', 2, 'b', 3, 'c']
p interleave([1, 2, 3, 4, 5], ['-', '-', '-', '-'])
p interleave(['hi', 'my', 'is'], ['there', 'name', 'jessye'])
