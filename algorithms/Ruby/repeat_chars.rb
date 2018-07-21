# Repeat Chars

# Define a method, #repeat_chars, that accepts a string as an argument. The method
# should return an array of all the characters that appear multiple times consecutively.
# If a single character is repeated on separate occasions, in should be included
# multiple times in the result.

# repeat_chars("mississippi") => ["s", "s, "p"]

def repeat_chars(word)
  result = []
  start_idx = nil
  word.each_char.with_index do |ch, idx|
    if ch == word[idx + 1]
      start_idx = idx unless start_idx
    elsif start_idx
      result << ch
      start_idx = nil
    end
  end
  result
end

puts "---------repeat_chars"
puts repeat_chars("cat") == []
puts repeat_chars("caat") == ['a']
puts repeat_chars("applle") == ['p', 'l']
puts repeat_chars("caataapulllllt") == ['a', 'a', 'l']
