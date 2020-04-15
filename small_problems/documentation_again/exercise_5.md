# Multiple Signatures

*What do each of these `puts` statements output?*

```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
```

`Array#fetch` tries to return the element at position `index`, and throws an error if the referenced `index` lies outside of the bounds of the array.  However, the error can be prevented if a second, default argument is provided.

If a block is given the block will only be executed when an invalid `index` is referenced.

`puts a.fetch(7)` with throw an IndexError: `IndexError: index 7 outside of array bounds: -5...5`

`puts a.fetch(7, 'beats me')`will print `'beats me'` because `'beats me'` is the default argument.

`puts a.fetch(7) { |index| index**2 }`will print the index squared.  This is beause an invalid `index` was referenced, and so the block is executed.  The index is `7` and so the value printed will be `49`.

