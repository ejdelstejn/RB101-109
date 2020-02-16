# rb101_109 / lesson_4 / additional_practice / 05.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name[0, 2] == "Be" }
