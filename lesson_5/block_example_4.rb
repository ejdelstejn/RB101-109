# rb101_109 / lesson_5 / block_example_4.rb

 my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

=begin

The each method is called on an array, [18, 7], [3, 12]], the result of which
is saved to variable my_arr.  If the value of the current element is greather
than 5, the number is output to the console.  The return value of my_arr is
[[18, 7], [3, 12]] because no transformation is performed.
  
=end