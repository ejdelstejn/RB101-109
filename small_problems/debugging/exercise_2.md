# HEY YOU!

rb101_109 / small_problems / debugging / exercise_2.rb

*[String#upcase!](https://ruby-doc.org/core/String.html#method-i-upcase-21) is a destructive method, so why does this code print `HEY you` instead of `HEY YOU`? Modify the code so that it produces the expected output.*

```ruby
def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
```

Although `String#upcase!` is a destructive method, on line 2 we invoke the `chars` method on `name`, which returns a new array in which the elements are the characters present in string `name`.  Therefore, when we invoke the `each` method on `name.chars` and pass it a block in which we call `upcase!` on each character, we are invoking this method on a different object than `name`.

If we want every character in name to be capitalized, the easiest solution would be to simply call `upcase!` on name itself:

```ruby
def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')
```

