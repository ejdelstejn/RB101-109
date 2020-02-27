# rb101_109 / small_problems / easy_7 / exercise_8.rb

# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of each pair of numbers from the arguments
# that have the same index. You may assume that the arguments contain the same number of elements.

def multiply_list(ary1, ary2)
  products = []
    ary1.each_with_index do |item, index|
    products << (item * ary2[index])
  end
  p products
end


multiply_list([3, 5, 7], [9, 10, 11]) # => [27, 50, 77]
multiply_list([3, 5, 7], [1, 1, 1]) # => [3, 5, 7]
multiply_list([3, 5, 7], [0, 0, 0]) # => [0, 0, 0]
multiply_list([20, 5, 10], [170, 1, -6]) # => [3400, 5, -60]
multiply_list([17, -234, 7.52], [9, -3, 12]) # => [153, 702, 90.24]
