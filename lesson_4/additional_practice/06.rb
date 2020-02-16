# rb101_109 / lesson_4 / additional_practice / 06.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map { |name| name.slice!(0, 3) }