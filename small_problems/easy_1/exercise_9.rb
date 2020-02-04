# rb101_109 / easy_1 / exercise_9.rb

def sum(int)
  int_to_s = int.to_s.chars
  total = 0
  int_to_s.each do |num|
    total += num.to_i
  end
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45