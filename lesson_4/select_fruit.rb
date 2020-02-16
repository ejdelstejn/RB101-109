# rb101_109 / lesson_4 / select_fruit.rb

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)

  fruits = {}
  counter = 0
  foods = hash.keys

  loop do
    break if counter == foods.size

    current_food = foods[counter]
    current_food_type = hash[current_food]
    
    fruits.store(current_food, current_food_type) if current_food_type == 'Fruit'
    counter += 1
  end

  p fruits

end

select_fruit(produce)

