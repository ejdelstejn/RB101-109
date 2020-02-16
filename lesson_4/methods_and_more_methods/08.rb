# rb101_109 / lesson_4 / methods_and_more_methods / 08.rb

arr = [1, 2, 3, 4, 5]
arr.take(2)

# => [1, 2]
# Enumerable#take returns the first n elements from an enumerable. In this case it will
# return 1, 2. Note: Enumerable#take is not destructive, so arr = [1, 2, 3, 4, 5]
# after calling take.