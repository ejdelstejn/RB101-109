# Reverse Sentence

rb101_109 / small_problems / debugging / exercise_4.rb

*The `reverse_sentence` method should return a new string with the words of its argument in reverse order, without using any of Ruby's built-in `reverse` methods. However, the code below raises an error. Change it so that it behaves as expected.*

```ruby
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
```

There are a few issues with the code here.  The error that is thrown is due to the fact that, on line 7, we attempt to use the `+` operator to concatenate a string (`word[i]`) with an array (`reversed_words`).  The `+` operator can only be used on strings.

What we can do is turn `words[i]` into an array to make it possible to add the two together:

```ruby
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
```

