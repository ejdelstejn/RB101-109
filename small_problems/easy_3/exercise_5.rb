# rb101_109 / small_problems / easy_3 / exercise_5.rb

# sing the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square is the
# result of multiplying a number by itself).

def multiply(x, y)
  x * y
end

def square(x)
  multiply(x, x)
end

square(5)
square(-8)
