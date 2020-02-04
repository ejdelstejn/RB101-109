# rb101_109 / lesson_3 / medium_1 / question_3.rb

def factors(number)
  divisor = number
  factors = Array.new
  while divisor > 0
    if number % divisor == 0
      factors << divisor
    end
    divisor -= 1
  end
  p factors
end

factors(-1)


