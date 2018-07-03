# Ordered Vowel Words

# Define a method that accepts an array of words and returns an array of those words 
# whose vowels appear in order. You may wish to write a helper method: ordered_vowel_word?

def ordered_vowel_words(words)
  words.select { |word| ordered_vowel_word?(word) }
end

def ordered_vowel_word?(word)
  orderly_vowels = word.chars.select { |ch| "aeiou".include?(ch) }
  orderly_vowels == orderly_vowels.sort
end

puts "---------Ordered_vowel_words"
puts ordered_vowel_words(["era", "are", "ear"]) == ["are"]
puts ordered_vowel_words(["hey", "wassup", "hello"]) == ["hey", "wassup", "hello"]
