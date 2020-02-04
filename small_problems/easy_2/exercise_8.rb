# rb101_109 / easy_2 / exercise_8.rb

def compute_sum(number)
  sum = 0
  sum_nums = []
  for i in 1..number
    sum_nums << i
  end
  sum_nums.each do |num|
    sum += num
  end
  sum
end

def compute_product(number)
  product = 1
  prod_nums = []
  for i in 1..number
    prod_nums << i
  end
  prod_nums.each do |num|
    product *= num
  end
  product
end

loop do
  puts "Please enter an integer greater than 0: "
  int = gets.to_i

  puts "Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp

  if operation == 's'
    sum = compute_sum(int)
    puts "The sum of the integers between 1 and #{int} is #{sum}."
    break
  elsif operation == 'p'
    product = compute_product(int)
    puts "The product of the integers between 1 and #{int} is #{product}."
    break
  else
    puts "Oops, you need to enter 's' or 'p'. Try again!"
  end
end