# rb101_109 / lesson_5 / practice_problems / 07.rb

# Given this code, what would be the final values of a and b? 
# Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# a in a variable set equal to integer 2
# b is an array with integer values 5 at b[0] and 8 at b[1]
# arr is a nested array: arr = [2, [5, 8]]
# arr[0] = 2
# arr[0] += 2 --> arr[0] = 4 --> a = 2 because we are not referencing a
# arr = [4, [5, 8]]
# arr[1][0] = 5
# arr[1][0] -= a --> 5 -= 2 --> arr[1][0] = 3
# arr = [4, [3, 8]]

# a = 2
# b = [3, 8]
