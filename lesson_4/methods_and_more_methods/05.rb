# rb101_109 / lesson_4 / methods_and_more_methods / 05.rb

hash = { a: 'ant', b: 'bear' }
hash.shift

# => [ a:, 'ant' ]
# The return value is [ a:, 'ant' ] because Hash#shift destructively removes the 
# first key-value pair from a hash and returns it as a two-item array.
