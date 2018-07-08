# Anagrams

# Define a method that, given two strings, returns a boolean indicating whether they are anagrams.

def anagrams(str1, str2)
  str1.chars.sort == str2.chars.sort
end

puts "---------Anagrams"
puts anagrams("desert", "rested") == true
puts anagrams("banana", "fofanna") == false
