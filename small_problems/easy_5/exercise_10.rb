# rb101_109 / small_problems / easy_5 / exercise_10.rb

# Write a method that will take a short line of text, and print it within a box.

# You may assume that the input will always fit in your terminal window.

def print_in_box(strng)
  spacing = ' ' * strng.length

  puts "+-" + '-'* strng.length + "-+"
  puts "| #{spacing} |"
  puts "| #{strng} |"
  puts "| #{spacing} |"
  puts "+-" + '-'* strng.length + "-+"

end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')