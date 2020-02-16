# rb101_109 / lesson_4 / additional_practice / 03.rb

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |name, age| age > 100 }

p ages
