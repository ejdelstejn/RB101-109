# rb101_109 / easy_2 / exercise_4.rb

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retire_age = gets.to_i

years_left = retire_age - age

current_year = Time.now.year
retire_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"