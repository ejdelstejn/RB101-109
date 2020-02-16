# rb101_109 / lesson_4 / additional_practice / 04.rb

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

current_age = 0
smallest_age = 0
ages.each do |name, age|
  current_age = age
  if age < smallest_age || smallest_age == 0
    smallest_age = current_age 
  end
end

smallest_age
