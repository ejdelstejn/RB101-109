=begin
a method that takes an array of integers, and returns a new array with every other element

Define method that takes array of integers as an argument

iterate through the argument and
* if index of integer is even, print integer
* else, next it
=end

def every_other(array)
  array.each do |num|
    if array.index(num) % 2 == 0
      p num
    else
      next
    end
  end
end

every_other([3,4,5,6,1,23,4,7])

