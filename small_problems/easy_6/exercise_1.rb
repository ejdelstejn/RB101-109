# rb101_109 / small_problems / easy_6 / exercise_1.rb

# Write a method that takes a floating point number that represents an angle between 
# 0 and 360 degrees and returns a String that represents that angle in degrees, minutes
# and seconds. You should use a degree symbol (°) to represent degrees, a single quote
# (') to represent minutes, and a double quote (") to represent seconds. A degree has
# 60 minutes, while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round values, but should be
# within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and
# seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

# DEGREE = "\xC2\xB0"

#--------------------------------------------------------------------------------------

# input: floating point number
# output: string that represents angle in degrees, minutes, and seconds

# To get degree:
# => round down number


DEGREE = "\xC2\xB0"

def dms(float)
  degree_string = ''
  degree_string << float.floor.to_s + DEGREE
  minutes = (float - float.floor) * 60
  degree_string << minutes.floor.to_s + "'"
  seconds = (minutes - minutes.floor) * 60
  degree_string << seconds.round.to_s + '"'
  degree_string
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
