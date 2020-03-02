# rb101_109 / small_problems / easy_9 / exercise_5.rb

# Write a method that takes a string argument, and returns true if all of the alphabetic
# characters inside the string are uppercase, false otherwise. Characters that are not
# alphabetic should be ignored.

def uppercase?(strng)
  !(!!(strng =~ /[a-z]/))
end

p uppercase?('t')              #== false
p uppercase?('T')              #== true
p uppercase?('Four Score')     #== false
p uppercase?('FOUR SCORE')     #== true
p uppercase?('4SCORE!')        #== true
p uppercase?('54354HHHHHHH')   #== true
p uppercase?('1h4k2hk4')       #== false
p uppercase?('YOYOYOY0000')    #== true
p uppercase?('HIIIIIII')       #== true
p uppercase?('HIIIhhhiiii')    #== false
p uppercase?('HAKFHDSALi')     #== false
p uppercase?('J')              #== true
p uppercase?('JK')             #== true
