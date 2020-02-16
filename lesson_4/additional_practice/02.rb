# rb101_109 / lesson_4 / additional_practice / 02.rb

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age_total = 0
ages.map do |name, age|
  age_total += age
end

puts age_total