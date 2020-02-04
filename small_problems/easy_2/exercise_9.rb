# rb101_109 / easy_2 / exercise_9.rb

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB, BOB

# Both will be BOB because 'upcase!' mutated the string permanently.
# Both name and save_name are pointing at the same object in physical memory, and so when that 
# object is mutated, printing both variables will show the same result.
