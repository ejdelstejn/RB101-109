# rb101_109 / small_problems / easy_7 / exercise_9.rb

# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of every pair of numbers that can be formed
# between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(ary1, ary2)
  products = []
  ary1.each do |num1|
    ary2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort!
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) # => [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([2, 4], [3, 6, 9, 12]) # => [6, 12, 12, 18, 24, 24, 36, 48]
p multiply_all_pairs([1, 1], [1, 2, 3]) # => [1, 1, 2, 2, 3, 3]
p multiply_all_pairs([2], [10, 20, 30]) # => [20, 40, 60]
p multiply_all_pairs([2, 3], [10, 20, 30]) # => [20, 30, 40, 60, 60, 90]
p multiply_all_pairs([5, 6, 7, 10], [5, 6, 7, 10]) # => [25, 30, 30, 35, 35, 36, 42, 42, 49, 50, 50, 60, 60, 70, 70, 100]
