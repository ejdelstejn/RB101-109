# rb101_109 / small_problems / medium_2 / exercise_4.rb

####### Matching Parentheses? #######

# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced,
# false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# ------------------------------------------------------------------------------------------------------------------------

# (Understanding the) Problem
# Input: string
# Output: boolean (true if all parentheses are properly balanced, false otherwise)

# We need to go through each character of the string, and if a character is a '(', then we need to see if there is a
# matching ')'.  We want to keep track of the '(' as we go, and add a ')' if we find it.

# We can add the parentheses to a new string in order
# 

# Cases:
# no parentheses = true
# matching parentheses = true
# non-matching parentheses = false
# backwards parentheses = false

# Data Structure
# 

# Algorithm
# initialize variable parentheses, assign empty string
# iterate through string.chars using each
# if char = '(' or ')'
# => add to string
# else
# next


# ------------------------------------------------------------------------------------------------------------------------

def get_parentheses(string)
  parentheses = ''
  string.chars do |char|
    if char == '('
      parentheses << char
    elsif char == ')'
      parentheses << char
    end
  end
  parentheses
end

def balanced?(string)
  parentheses = get_parentheses(string).to_a
  balanced = ''
  counter = 0
  until parentheses == [] do
    if parentheses[counter] == '('
      if balanced == ''
        balanced << parentheses[counter]
        parentheses.delete_at(counter)
    elsif parentheses[counter] == ')'
      if balanced.include?('(')


# def empty_parens?(string)
#   get_parentheses(string) == '' ? true : false
# end

# def even_parens?(string)
#   get_parentheses(string).size.even? ? true : false
# end

# def start_or_end_with?(string)
#   get_parentheses(string).start_with?(')') || get_parentheses(string).end_with?('(') ? true : false
# end

# def collect_balance(string)
#   get_parentheses(string)

# def balanced?(string)
#   result = nil
#   if empty_parens?(string) == true
#     result = true 
#   elsif even_parens?(string) == true
#     result = true 
#   elsif start_or_end_with?(string) == true
#     result = false 
#   else
#   result
# end


p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(')# == false
p balanced?('What ((is))) up(') #== false

    
