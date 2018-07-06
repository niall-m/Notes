# For C's Sake

# Define a method that, given a string of words, returns the word that has the letter "c" closest to the end of it. 
# If there's a tie, return the earlier word. Ignore punctuation. If there's no "c", return an empty string. 
# You may wish to write the helper methods c_distance and remove_punctuation.

def for_cs_sake(string)
  string.delete!(",.;:!?'")
  c_words = string.split.select { |word| word.downcase.include?("c") }
  return "" if c_words.empty?
  c_words.sort_by { |word| c_distance(word.downcase) }.first
end

def c_distance(word)
  word.reverse.index("c")
end

puts "---------For_cs_sake"
puts for_cs_sake("r is among the most menacing of sounds That's why they call it murder and not muckduck") == "muckduck"
puts for_cs_sake("muckduck cluck duck") == "muckduck"
