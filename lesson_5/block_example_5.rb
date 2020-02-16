# rb101_109 / lesson_5 / block_example_5.rb

[[1, [2]], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# => [[2, 4], [6, 8]]