# rb101_109 / small_problems / easy_7 / exercise_6.rb

# Modify the method from the previous exercise so it ignores non-alphabetic characters when
# determining whether it should uppercase or lowercase each letter. The non-alphabetic characters
# should still be included in the return value; they just don't count when toggling the
# desired case.

def staggered_case(strng)
  staggered = strng.chars.map do |char|
    if char =~ /[a-zA-z]/
      if strng.index(char) %2 == 0
        char.upcase
      else
        char.downcase
      end
    else
      char
    end
  end
  staggered.join
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
