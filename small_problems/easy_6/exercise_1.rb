# rb101_109 / small_problems / easy_6 / exercise_1.rb

# Write a method that takes a floating point number that represents an angle between 
# 0 and 360 degrees and returns a String that represents that angle in degrees, minutes
# and seconds. You should use a degree symbol (°) to represent degrees, a single quote
# (') to represent minutes, and a double quote (") to represent seconds. A degree has
# 60 minutes, while a minute has 60 seconds.Write a method that takes a floating point
# number that represents an angle between 0 and 360 degrees and returns a String that
# represents that angle in degrees, minutes and seconds. You should use a degree symbol
# (°) to represent degrees, a single quote (') to represent minutes, and a double quote
# (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.


DEGREE = "\xC2\xB0"

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")