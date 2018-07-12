# Words With Repeats

# Write a method that, given a sentence without punctuation or capitalization, 
# returns the word with the greatest number of repeated letters. Return the first
# word if there's a tie. It doesn't matter how often individual letters repeat,
# just that they repeat.

# words_with_repeats("I took the road less traveled and that has made all the
# difference") => "difference" because "difference" has two repeated letters,
# more than the other words.

def words_with_repeats(sentence)
  words_with_repeats = {}
  sentence.split.each { |word| words_with_repeats[word] = repeat_count(word) }
  most_repeats = words_with_repeats.sort_by { |k, v| v }.last.last
  ties = words_with_repeats.select { |k, v| v == most_repeats }.first.first
end

def repeat_count(word)
  counter = Hash.new(0)
  word.each_char { |ch| counter[ch] += 1 }
  counter.count { |k, v| v > 1 }
end

# def words_with_repeats(sentence)
#   sentence.split.select { |word| repeat_chars(word) > 1 }.first
# end

# def repeat_chars(word)
#   word.chars.count { |ch| word.count(ch) > 1 }
# end

puts "---------Words_with_repeats"
p words_with_repeats("good luck") == "good"
p words_with_repeats("what if there is a tie betwixt words") == "there"
