# rb101_109 / small_problems / medium_2 / exercise_6.rb

####### Tri-Angles #######

# A triangle is classified as follows:

# * right One angle of the triangle is a right angle (90 degrees)
# * acute All 3 angles of the triangle are less than 90 degrees
# * obtuse One angle is greater than 90 degrees.

# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0:
# if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse,
# or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume
# that the arguments are specified in degrees.

# ---------------------------------------------------------------------------------------------------------------------

# input: 3 sides (Integers - specified in degrees)
# output: symbol: :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, 
# obtuse, or invalid triangle.

# ---------------------------------------------------------------------------------------------------------------------

def invalid_tri?(side1, side2, side3)
  sides = [side1, side2, side3]
  if sides.include?(0)
    return true
  elsif (side1 + side2 + side3) != 180
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
    if sides.include?(90)
      result = :right
    elsif sides.max >= 91
      result = :obtuse
    else
      result = :acute
    end
  end
  result
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
p triangle(50, 20, 110) == :obtuse
p triangle(40, 90, 50) == :right
p triangle(140, 30, 10) == :obtuse
p triangle(80, 20, 80) == :acute

