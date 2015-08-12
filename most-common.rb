# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#

def most_common_letter(string)
store = []
sorted_string = string.chars.sort!

sorted_string.each do |character|
 i = string.count(character)
 store.push(i)
end

pointer = store.index(store.max)
return [sorted_string[pointer], store.max]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('most_common_letter("abca") == ["a", 2]: ' + (most_common_letter('abca') == ['a', 2]).to_s)
puts('most_common_letter("abbab") == ["b", 3]: ' + (most_common_letter('abbab') == ['b', 3]).to_s)
