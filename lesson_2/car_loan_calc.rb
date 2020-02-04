# rb101_109 / lesson_2 / car_loan_calc.rb

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

prompt("Welcome to the Mortgage Calculator! Please enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Please use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")
sleep(0.7)

loop do #main loop
  loan_amt = ''
  loop do
    prompt("Please enter the loan amount:")
    loan_amt = Kernel.gets().chomp()

    if valid_number?(loan_amt)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  apr = ''
  loop do
    prompt("Please enter the Annual Percentage Rate (APR):")
    apr = Kernel.gets().chomp()

    if valid_number?(apr)
      break
    else 
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  loan_dur = ''
  loop do
    prompt("Please enter the loan duration in months:")
    loan_dur = Kernel.gets().chomp()

    if valid_number?(loan_dur)
      break
    else 
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  new_apr = (apr.to_f / 100.0)
  j = (new_apr / 12.0)
  monthly_payment = loan_amt.to_f * (j / (1 - (1 + j)**(-loan_dur.to_f)))
  
  prompt("Calculating your monthly payment...")
  sleep(1.5)

  prompt("You monthly payment is $#{monthly_payment}.")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Car Mortgage Calculator. Goodbye, #{name}!")
