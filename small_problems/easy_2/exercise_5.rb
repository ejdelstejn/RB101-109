# rb101_109 / easy_2 / exercise_5.rb

puts "What is your name?"
name = gets.chomp
name_chars = name.chars

if name_chars[-1] == "!"
  name_chars.pop
  puts "HELLO #{name_chars.join.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end