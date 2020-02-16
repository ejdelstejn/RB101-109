# rb101_109 / easy_4 / exercise_2.rb

=begin
Write a method that takes a year as input and returns the century. 

The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 
comprise the 20th century.

input: year (integer)
output: century (string)

calculate century:
current_century = (year / 100).to_int + 1)

st, nd, rd, or th as appropriate for that number:
1st
2nd
3rd
4th
5th
6th
7th
8th
9th
10th

=end

def century
  puts "==> What year is it? "
  year = gets.chomp.to_i
  current_century = ((year / 100).floor)
  current_century += 1 unless (year.to_s)[-2..-1] == '00'
  if current_century.to_s[-1] == '1'
    century_str = current_century.to_s + "st"
  elsif current_century.to_s[-1] == '2'
    century_str = current_century.to_s + "nd"
  elsif current_century.to_s[-1] == '3'
    century_str = current_century.to_s + "rd"
  else
    century_str = current_century.to_s + "th"
  end
  puts "==> The current century is: #{century_str}"
end

century
