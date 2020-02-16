# rb101_109 / small_problems / easy_5 / exercise_1.rb

def ascii_value(string)
  ascii_value = 0
  string.chars.each do |chr|
    ascii_value += chr.ord
  end
  ascii_value
end

ascii_value('Four score') # => 984
ascii_value('Launch School') # => 1251
ascii_value('a') # => 97
ascii_value('') # => 0
