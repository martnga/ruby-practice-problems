# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
 if number > 0

  if (number == 2) || (number == 3) || (number == 5)
    true
  elsif (  (number % 2)  == 0  || (number % 3)  == 0 || (number % 5)  == 0 )
   false
  else
    true
  end

else
false
end

end

def nth_prime(n)
  i = 0
  result = []
  arr = (2..30).to_a
  while i < arr.length
    if (is_prime?(arr[i]))
      result.push(arr[i])
    end
    i += 1
  end
  result [(n-1)]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
