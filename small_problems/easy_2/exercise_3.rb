# rb101_109 / easy_2 / exercise_3.rb

# Create a simple tip calculator. The program should prompt for a bill amount
#  and a tip rate. The program must compute the tip and then display both
# the tip and the total amount of the bill.

puts 'What is the bill?'
bill = gets.to_f

puts 'What is the tip percentage?'
tip_percent = (gets.to_f / 100)

tip = (bill * tip_percent).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{sprintf '%.2f', tip}"
puts "The total is $#{sprintf '%.2f', total}"
