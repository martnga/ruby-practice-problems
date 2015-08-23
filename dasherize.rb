
# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.


def dasherize_number(num)
  number_string = num.to_s
  i = 0
  result = []
  while i < number_string.length
  if number_string[i].to_i % 2 == 1 && number_string[i + 1].to_i % 2 == 1
    letter =  "-" + number_string[i]
  else
    leter = number_string[i]
  end
  result.push(letter)
  i += 1
  end
 result.join("")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('dasherize_number(203) == "20-3": ' + (dasherize_number(203) == '20-3').to_s )
puts('dasherize_number(303) == "3-0-3": ' + (dasherize_number(303) == '3-0-3').to_s)
puts('dasherize_number(333) == "3-3-3": ' + (dasherize_number(333) == '3-3-3').to_s)
puts('dasherize_number(3223) == "3-22-3": ' + (dasherize_number(3223) == '3-22-3').to_s)
