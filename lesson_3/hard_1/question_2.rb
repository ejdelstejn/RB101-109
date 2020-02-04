# rb101_109 / lesson_3 / hard_1 / question_2.rb

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
# the output of "greetings" should now be " a=> 'hi there' ", because the value of ' there'
# was also appended to greetings because both the informal_greeting and greetings  variables were
# pointing towards the same object in physical memory, and the '<<' operator mutates that physical
# space in memory and therefore calling either informal_greeting or greetings will create the
# same result.