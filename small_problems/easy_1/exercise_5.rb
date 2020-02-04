# rb101_109 / easy_1 / exercise_5.rb

def prompt(message)
  Kernel.puts("=> #{message}")
end

def reverse_sentence(sentence)

  new_sentence = []
  words = sentence.split(' ')

  loop do
    new_sentence.push(words[-1])
    words.pop
    break if words.empty?
  end
  reversed = new_sentence.join(" ")
  puts "Your reversed sentence is: #{reversed}"
end

prompt("Welcome to Reverse Sentence!")
sleep(0.3)

loop do
  prompt("Enter your sentence:")
  to_reverse = gets.chomp
  reverse_sentence(to_reverse)
  sleep(0.3)
  prompt("Do you want to reverse another sentence? (Y to reverse another sentence)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you, goodbye!")

