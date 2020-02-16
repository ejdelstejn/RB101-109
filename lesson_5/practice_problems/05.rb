# rb101_109 / lesson_5 / practice_problems / 05.rb

# Given this nested hash, figure out the total age of just the male members of the family:

munsters = {
  'Herman' => { 'age' => 32, 'gender' => 'male' },
  'Lily' => { 'age' => 30, 'gender' => 'female' },
  'Grandpa' => { 'age' => 402, 'gender' => 'male' },
  'Eddie' => { 'age' => 10, 'gender' => 'male' },
  'Marilyn' => { 'age' => 23, 'gender' => 'female' }
}

age_total = 0
munsters.values.each do |item|
  age_total += item['age'] if item['gender'] == 'male'
end

age_total
