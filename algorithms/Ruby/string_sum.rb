# String Sum

# Write a method, #string_sum, that accepts a string of only lower-case characters
# as an argument and returns the sum of the characters of that string. 
# e.g.: a --> 1, b--> 2 .. z --> 26.

def string_sum(string)
  sum = 0
  alphabet = ("a".."z").to_a
  string.each_char { |ch| sum += alphabet.index(ch) + 1 }
  sum
end

puts "---------String_sum"
puts string_sum("pizza") == 78
puts string_sum("bagel") == 27
puts string_sum("smoothie") == 104
