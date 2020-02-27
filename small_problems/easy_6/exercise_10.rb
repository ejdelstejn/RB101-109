# rb101_109 / small_problems / easy_6 / exercise_10.rb

# Write a method that takes a positive integer, n, as an argument, and displays a
# right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

def triangle(n)
  puts ""
  counter1 = n
  counter2 = 1
  for i in (1..n)
    puts (' ' * (counter1)) + ('*' * (n - (n - counter2)))
    counter1 -= 1
    counter2 += 1
  end
end


triangle(5)

# =>     *
# =>    **
# =>   ***
# =>  ****
# => *****

triangle(9)

# =>         *
# =>        **
# =>       ***
# =>      ****
# =>     *****
# =>    ******
# =>   *******
# =>  ********
# => *********

triangle(4)
triangle(33)
