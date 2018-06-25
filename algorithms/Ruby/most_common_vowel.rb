# Most Common Vowel 

# Define a method that, given a string, returns the most common vowel. 
# If there's a tie, return the vowel that occurs earlier in the alphabet. 
# Assume all letters are lower case.

def most_common_vowel(string)
  vowel_count = Hash.new(0)
  string.each_char { |ch| vowel_count[ch] += 1 if "aeiou".include?(ch) }
  max_count = vowel_count.sort_by { |k, v| v }.last.last
  ties = vowel_count.select { |k, v| v == max_count }
  ties.keys.min
end

puts "---------Most_common_vowel" 
p most_common_vowel("Vivamus mea Lesbia atque amemus") == "a"
p most_common_vowel("eeaa") == "a"
