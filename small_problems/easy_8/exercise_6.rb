# rb101_109 / small_problems / easy_8 / exercise_6.rb

# Write a method that takes two arguments: the first is the starting number, and the second
# is the ending number. Print out all numbers between the two numbers, except if a number is
# divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if
# a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(num1, num2)
  results = []  
  for i in num1..num2
    if i % 3 == 0 && i % 5 != 0
      results << "Fizz"
    elsif i % 5 == 0 && i % 3 != 0
      results << "Buzz"
    elsif i % 3 == 0 && i % 5 == 0
      results << "FizzBuzz"
    else
      results << i
    end
  end 
  puts results.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz