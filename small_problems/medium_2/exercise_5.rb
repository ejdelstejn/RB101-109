# rb101_109 / small_problems / medium_2 / exercise_5.rb

####### Triangle Sides #######

# A triangle is classified as follows:

# * equilateral All 3 sides are of equal length
# * isosceles 2 sides are of equal length, while the 3rd is different
# * scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of
# the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied,
# the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral,
# :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# ------------------------------------------------------------------------------------------------------------------------

# P
# input: 3 lengths (Integers)
# output: symbol with result - :equilateral, :isosceles, :scalene, or :invalid

# Valid triangle:
# => sum of length of two shortest sides > longest side 
# => all sides > 0

# A
# Stored values in array

# ------------------------------------------------------------------------------------------------------------------------

def invalid_tri?(side1, side2, side3)
  sides = [side1, side2, side3]
  sides.sort!
  if sides.include?(0)
    return true
  elsif (sides[0] + sides[1]) < sides[2]
    return true
  else
    return false
  end
end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  result = nil
  if invalid_tri?(side1, side2, side3)
    result = :invalid
  else
    if (sides.uniq).length == 1
      result = :equilateral
    elsif (sides.uniq).length == 2
      result = :isosceles
    else
      result = :scalene
    end
  end
  result
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
