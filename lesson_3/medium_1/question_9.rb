# rb101_109 / lesson_3 / medium_1 / question_9.rb

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
# => 'no'