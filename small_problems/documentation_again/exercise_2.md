#Optional Argument Redux#

rb101_109 / small_problems / documentation_again / exercise_2.md

*Assume you have the following code:*

```ruby
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
```

*What will each of the 4 `puts` statements print?*

The documentation shows that `Date::new` defaults to:

`new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]])`

We can see from the brackets that all arguments are optional.  This means that:

`puts Date.new` will print `-4712-01-01`.  The reason for this is because, according to the Ruby docs, "The Julian day number is in elapsed days since noon (Greenwich Mean [Time](https://ruby-doc.org/stdlib-2.7.0/libdoc/date/rdoc/Time.html)) on January 1, 4713 BCE (in the Julian calendar)."  So, if you create `Date.new` without specifying a date, you will get the default.

`puts Date.new(2016)` will print `2016-01-01`.  The reason for this is because a year was specified (`2016`), but because no month or day was specified, the default values of `01-01` are printed.

`puts Date.new(2016, 5)` and `puts Date.new(2016, 5, 13)` will therefore print `2016-05-01` and `2016-05-13` respectfully.

