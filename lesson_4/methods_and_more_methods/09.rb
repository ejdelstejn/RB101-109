# rb101_109 / lesson_4 / methods_and_more_methods / 09.rb

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, 'bear']
# 
