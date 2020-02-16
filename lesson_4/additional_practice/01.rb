# rb101_109 / lesson_4 / additional_practice / 01.rb

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

Hash[flintstones.each_with_index.map { |value, index| [value, index] }]
