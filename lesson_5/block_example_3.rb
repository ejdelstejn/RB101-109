# rb101_109 / lesson_5 / block_example_3.rb

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# => [1, 3]
=begin
Okay so in the case of this problem we call math on the outer array which 
contains two inner arrays the first array contains the elements 1 and 2 the 
second array contains the elements 3 + 4. So we are calling map on this array 
and in the block the first element in the array which is 1 + 2 will have put sARR. 
1st so this means that the first element within that array which is one will 
be output then the next line isour. First which is the return value of r and 
since map performs transformation this means that this return value will be 
in the new array created by map which will be one.
=end