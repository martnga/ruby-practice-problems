# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
def factorial(n)
  i = 1
  result = 1
  until i > n
   result *= i
   i+=1
  end
  return result
end

#tests
puts('factorial(0) == 1: ' + (factorial(0) == 1).to_s)
puts('factorial(1) == 1: ' + (factorial(1) == 1).to_s)
puts('factorial(2) == 2: ' + (factorial(2) == 2).to_s)
puts('factorial(3) == 6: ' + (factorial(3) == 6).to_s)
puts('factorial(4) == 24: ' + (factorial(4) == 24).to_s)
