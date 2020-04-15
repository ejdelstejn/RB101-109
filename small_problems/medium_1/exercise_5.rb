# rb101_109 / small_problems / medium_1 / exercise_5.rb

####### Diamonds! #######

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer
# that is supplied as an argument to the method. You may assume that the argument will always
# be an odd integer.

# ---------------------------------------------------------------------------------------------

# PROBLEM ~
# input: odd integer (n)
# output: a 4-pointed diamond in an n x n grid

# The method takes an odd integer and returns a 4-pointed diamond in an n x n grid.

# EXAMPLES ~
# diamond(1)

# *

# diamond(3)

#  *
# ***
#  *

# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# DATA STRUCTURE / ALGORITHM ~
# 

# Steps
# 1.) 

# CODE! ~

# ---------------------------------------------------------------------------------------------

def diamond(n)
  array = (1..n).to_a
  array.each do |num|
    if num.odd?
      puts ('*' * num).center(n)
    end
  end
  if array.size > 1
    array.pop
    array.reverse!
    array.each do |num|
      if num.odd?
        puts ('*' * num).center(n)
      end
    end
  end
end

diamond(1)
diamond(3)
diamond(9)
diamond(13)
diamond(21)
diamond(49)




