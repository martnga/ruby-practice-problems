# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#


def two_sum(nums)
  # pointer for the number looking for match
i = 0
 # loop through out array to find match for the pointed element
while i < nums.length
 x = i + 1 #pointer for the possible match
 while x < nums.length
  if nums[i] + nums[x] == 0
   return [i,x]
  end
 x += 1
 end
i += 1
end

return nil
end



# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s)
puts('two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s)
