# rb101_109 / small_problems / easy_9 / exercise_1.rb

# Create a method that takes 2 arguments, an array and a hash. The array will contain
# 2 or more elements that, when combined with adjoining spaces, will produce a person's
# name. The hash will contain two keys, :title and :occupation, and the appropriate
# values. Your method should return a greeting that uses the person's full name, and
# mentions the person's title and occupation.

def greetings(ary, hsh)
  name = ''
  ary.each do |item|
    name << ' ' + item
  end
  puts "Hello,#{name}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.

greetings(['David', 'Naftali'], { title: 'Expert', occupation: 'Yiddish Teacher' })
greetings(['Rachel', 'R'], { title: 'Master', occupation: 'Law School Student' })
