# Keyword Arguments

*What does this code print?*

```ruby
5.step(to: 10, by: 3) { |value| puts value }
```

The `Integer#step` method invokes a block with the sequence of numbers starting at `Integer`, incremented by `step` (`by:`) on each call. The loop finishes when the value to be passed to the block is greater than the number specified by `to:`.

The code will print:

`5`

` 8`



