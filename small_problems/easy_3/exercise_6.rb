# rb101_109 / easy_3 / exercise_6.rb

# The || operator returns a truthy value if either or both of its operands are truthy,
# a falsey value if both operands are falsey. The && operator returns a truthy value
# if both of its operands are truthy, and a falsey value if either operand is falsey.
# his works great until you need only one of two conditions to be truthy, the
# so-called exclusive or.

# n this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(x, y)
  if x == true && y == false
    true
  elsif x == false && y == true
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?) # => true
puts xor?(5.odd?, 4.odd?) # => true
puts xor?(5.odd?, 4.even?) # => false
puts xor?(5.even?, 4.odd?) # => false
