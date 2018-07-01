# Non Unique Letters

# Define a method that accepts a string of lower case words (no punctuation) and returns an array of letters that occur more than once.

def non_unique_letters(string)
  uniq_letters = string.chars.uniq
  uniq_letters.select { |ch| string.count(ch) > 1 }
end

puts "---------Non_unique_letters"
puts non_unique_letters("abcdbcd") == ["b", "c", "d"]
puts non_unique_letters("abcde") == []
