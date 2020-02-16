# rb101_109 / lesson_4 / additional_practice / 07.rb

statement = "The Flintstones Rock"

statement_array = statement.chars

statement_hash = Hash[statement_array.each_with_object({}) do |letter, hash| 
  hash[letter] = statement_array.count(letter)
end]

p statement_hash
