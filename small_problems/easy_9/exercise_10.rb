# rb101_109 / small_problems / easy_9 / exercise_10.rb

# Write a method which takes a grocery list (array) of fruits with quantities and
# converts it into an array of the correct number of each fruit.

# input: array of arrays of each fruit with quantities
# output: array with the correct number of each fruit

# steps:
# 

def buy_fruit(fruit_list)
  quantities = []
  fruit_list.each do |fruit|
    for i in 1..fruit[1]
      quantities << fruit[0]
    end
  end
  quantities
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
#  ["apples", "apples", "apples", "orange", "bananas","bananas"]
p buy_fruit([["apples", 5], ["oranges", 2], ["dragonfruit", 1]])
