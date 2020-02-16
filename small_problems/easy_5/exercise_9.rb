# rb101_109 / small_problems / easy_5 / exercise_9.rb

def crunch(strng)
  new_strng = ''
  ary = strng.split('')
  ary.each do |letter|
    if new_strng[-1] != letter
      new_strng << letter
    else
      next
    end
  end
  puts new_strng
end

crunch('ddaaiillyy ddoouubbllee') # => 'daily double'
crunch('4444abcabccba') # => '4abcabcba'
crunch('ggggggggggggggg') # => 'g'
crunch('a') # => 'a'
crunch('') # => ''
