# rb101_109 / lesson_3 / hard_1 / question_3.rb

# a)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# The method alters the 
# output will be as follows:
# one is: one
# two is: two
# three is: three



