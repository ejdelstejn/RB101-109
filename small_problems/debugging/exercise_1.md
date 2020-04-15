# Countdown

rb101_109 / small_problems / debugging / exercise_1.rb

*Our countdown to launch isn't behaving as expected. Why? Change the code so that our program successfully counts down*
*from 10 to 1.*

```ruby
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'
```

On line 1, `decrease` is defined and takes `counter` as a parameter.  On line 5, we initialize variable `counter` and assign it the value `10`.    However, the value of `counter` remains `10`, because, when it is passed to `decrease` as an argument it is scoped at the method definition level, and reassignment does not mutate the caller.

In order to get this method to work, we would have to reassign `counter` within each iteration of the loop.  We can also remove the reassignment of `counter` within `decrease`, since it is irrelevant:

```ruby
def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
```



#### Further Exploration

*We specify `10` two times, which looks a bit redundant. It should be possible to specify it only once. Can you refactor the code accordingly?*

```ruby
def decrease(counter)
  counter - 1
end

counter = 10

until counter == 0 do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
```

