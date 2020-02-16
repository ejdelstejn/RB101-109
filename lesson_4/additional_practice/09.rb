# rb101_109 / lesson_4 / additional_practice / 09.rb

words = "the flintstones rock"

def titleize(string)
  words = string.split(' ')
  words.map! { |word| word.capitalize }
  words.join(' ')
end

puts titleize(words)
