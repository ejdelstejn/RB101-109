# rb101_109 / small_problems / easy_5 / exercise_3.rb

# As seen in the previous exercise, the time of day can be represented as the number
# of minutes before or after midnight. If the number of minutes is positive, the time
# is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number
# of minutes before and after midnight, respectively. Both methods should return a value
# in the range 0..1439.

# You may not use ruby's Date and Time methods.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

time_of_day(0) # => "00:00"
time_of_day(-3) # => "23:57"
time_of_day(35) # => "00:35"
time_of_day(-1437) # => "00:03"
time_of_day(3000) # => "02:00"
time_of_day(800) # => "13:20"
time_of_day(-4231) # => "01:29"
