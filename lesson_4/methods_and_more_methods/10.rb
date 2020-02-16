# rb101_109 / lesson_4 / methods_and_more_methods / 10.rb

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]

