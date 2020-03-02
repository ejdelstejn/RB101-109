# rb101_109 / small_problems / documentation_again / exercise_2.rb

# Assume you have the following code:

require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

# What will each of the 4 puts statements print?

# Answer:
# puts Date.new
# => According to the documentation for Date::new, its signature is:
# => new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
# puts Date.new(2016)
# => According to the documentat
# puts Date.new(2016, 5)
# puts Date.new(2016, 5, 13)
