# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#


def caesar_cipher(offset, string)
  string_array = string.split(" ")
  i = 0
  result = []
  while i < string_array.length
    changed_word = ""

    string_array[i].each_char do |character|
      number_code  = character.ord + offset
      if number_code > 122
        number_code = number_code - 26
      else
        number_code = number_code
      end
      character = number_code.chr
      changed_word += character
    end

    result.push(changed_word)
    i += 1
  end
  result.join(" ")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('caesar_cipher(3, "abc") == "def": ' + (caesar_cipher(3, 'abc') == 'def').to_s)
puts('caesar_cipher(3, "abc xyz") == "def abc": ' + (caesar_cipher(3, 'abc xyz') == 'def abc').to_s)
