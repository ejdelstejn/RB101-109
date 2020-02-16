# rb101_109 / easy_3 / exercise_7.rb

# Write a method that returns an Array that contains every other element of an Array
# that is passed in as an argument. The values in the returned list should be those
# values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Further Exploration

# Write a companion method that returns the 2nd, 4th, 6th, and so on elements of
# an array.

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index] if index.even?
    index += 1
  end
  odd_elements
end

def evenies(array)
  even_elements = []
  index = 0
  while index < array.size
    even_elements << array[index] if index.odd?
    index += 1
  end
  even_elements
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(%w(abc def)) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []

p evenies([2, 3, 4, 5, 6]) #== [3, 5]
p evenies([1, 2, 3, 4, 5, 6]) #== [2, 4, 6]
p evenies(%w(abc def)) #== ['def']
p evenies([123]) #== []
p evenies([]) #== []
