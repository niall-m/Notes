# Letter Counts

# Define a method that, given a word, returns a hash with the letters in the word 
# as keys and the frequencies of the letters as values.

def letter_counts(word)
  counts = Hash.new(0)
  word.each_char { |ch| counts[ch] += 1 }
  counts
end

puts "---------Letter_counts"
puts letter_counts("hi") == {"h"=>1, "i"=>1}
puts letter_counts("hello") == {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
