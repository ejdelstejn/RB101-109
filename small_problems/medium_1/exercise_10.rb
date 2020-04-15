# rb101_109 / small_problems / medium_1 / exercise_10.rb

####### Fibonacci Numbers (Last Digit)) #######

# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers.
# This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# -------------------------------------------------------------------------------------------------

def fibonacci_last(n)
  return 1 if n == 1 || n == 2
  arr = [1, 1]
  if n > 2
    for i in 2..n-1
      number = arr[(i - 1)] + arr[(i - 2)]
      arr.push(number)
    end
  end
  last = arr.pop
  last.to_s.slice!(-1).to_is
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4