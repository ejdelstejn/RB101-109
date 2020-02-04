# rb101_109 / easy_1 / exercise_7.rb

def stringy(number)
  string = ''
  if number %2 == 0
    string = '10' * (number / 2)
  else
    string = ('10' * ((number - 1) / 2 )) + '1'
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'