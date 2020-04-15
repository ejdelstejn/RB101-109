# Mandatory Blocks

*The `Array#bsearch` method is used to search ordered `Array`s more quickly than `#find` and `#select` can. Assume you have the following code:*

```ruby
a = [1, 4, 8, 11, 15, 19]
```

*How would you search this `Array` to find the first element whose value exceeds `8`?*

The `Array#bsearch` method works by usng binary search.  In order to use this method, the `Array` must be ordered.  In this case, we would use the find-minimum mode.  The block must return `true` or `false`, and it will return the first element to which the block evaluates to `true`.

```ruby
a.bsearch {|x| x > 8 }
```

This returns `11`.