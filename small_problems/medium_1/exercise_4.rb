# rb101_109 / small_problems / medium_1 / exercise_4.rb

####### 1000 Lights #######

# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to
# exactly one light that is initially off. You walk down the row of switches and toggle every
# one of them. You go back to the beginning, and on this second pass, you toggle switches
# 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches
# 3, 6, 9, and so on. You repeat this process and keep going until you have been through n
# repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array
# that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# ---------------------------------------------------------------------------------------------

# PROBLEM ~
# input: number of switches and rounds
# output: array containing which lights are on after n repetitions.

# The total number of lights is the same as the total number of rounds.  Each round, the number
# of switches are toggled by the number of that round + the number of that round etc. (ex: during round 2, switch
# numbers 2, 4, 6, 8, etc. are toggled).  We must iterate through each number between 1 and n
# and add the numbers representing the switches that are on to our array, and remove the numbers
# whose switches are off from the array.

# EXAMPLES ~
# input: 5
# output: [1, 4]

# input: 10
# output: [1, 4, 9]

# input: 7
# output: [1, 4]

# input: 20
# output: [1, 4, 9, 16]

# DATA STRUCTURE / ALGORITHM ~
# There are many factors to consider for how we will get our total number of lights that are on
# at the end of the rounds:
# 1.) How should we iterate through the numbers between 1 and n?
# 2.) How will we add and remove the numbers effectively?

# Steps
# 1.) Initialize variable lights to an empty array.
#     => lights = []
# 2.) Initialize variable switches to the range between 1 and n as an array
#     => switches = (1..n).to_a
# 3.) Iterate through switches using each
#     => 
# 4.) Iterate through numbers between 1 and n and "switch on and off the lights"
#     => for i in 1..n
#     => if i is a multiple of num -- if i %num == 0
#     => if lights does NOT include i, then add i
#     => otherwise, remove i
# 5.) Return lights

# CODE! ~

# ---------------------------------------------------------------------------------------------

def lights(n)
  lights = []
  switches = (1..n).to_a
  switches.each do |num|
    for i in 1..n
      if i %num == 0
        if lights.include?(i) == false
          lights << i
        else
          lights.delete(i)
        end
      else
        next
      end
    end
  end
  lights
end

p lights(5)    # => [1, 4]
p lights(10)   # => [1, 4, 9]
p lights(7)    # => [1, 4]
p lights(20)   # => [1, 4, 9, 16]
p lights(0)    # => []
p lights(100)  # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
p lights(1000) # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 
# 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
