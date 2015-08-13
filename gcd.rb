
# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#


def greatest_common_factor(number1, number2)
  i = 0
  factors_num_one = (1..number1).find_all { |i|  number1 % i == 0 }
  factors_num_two = (1..number2).find_all { |i|  number2 % i == 0 }
  while i < factors_num_two.length
    if (factors_num_one.include? factors_num_two[i])
      gcd = factors_num_two[i]
    end
    i += 1
  end
 gcd
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
