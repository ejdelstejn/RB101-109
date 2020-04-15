# Default Arguments in the Middle

*Consider the following method and a call to that method:*

```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```

*Use the ruby documentation to determine what this code will print.*

According to the Ruby documentation on calling methods, when it comes to default positional arguments, "you do not need to supply all the arguments to the method. Ruby will fill in the missing arguments in-order."  This means that, in this example where we send 3 arguments to `my_method`, Ruby will fill in the missing arguments from left to right.  The output will be`[4, 5, 3, 6]`.  `4`, `5` and `6` are assigned to the positional arguments `a`, `b` and `d`,  and `c` is assigned its default value of `3`.

