# rb101_109 / small_problems / easy_9 / exercise_7.rb

# Write a method that takes a first name, a space, and a last name passed as a single
# String argument, and returns a string that contains the last name, a comma, a space,
# and the first name.

def swap_name(first_and_last)
  name_array = first_and_last.split(' ')
  last_and_first = "#{name_array[1]}, #{name_array[0]}"
  last_and_first
end

p swap_name('Joe Roberts') #== 'Roberts, Joe'
p swap_name('Jessye Ejdelman') #== 'Ejdelman, Jessye'
p swap_name('Ada Lovelace') #== 'Lovelace, Ada
p swap_name('Jerry Seinfeld') #== 'Seinfeld, Jerry'
p swap_name('Moshe Rabbeinu') #== 'Rabbeinu, Moshe'
p swap_name('Kanye West') #== 'West, Kanye'
