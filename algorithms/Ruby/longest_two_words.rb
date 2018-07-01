# Longest Two Words

# Define a method that returns an array of the longest two words (in order) in the method's argument. Ignore punctuation!

def longest_two_words(string)
  string.split.sort_by { |word| word.length }[-2..-1]
end

puts "---------Longest_two_words"
puts longest_two_words("Stately plump Buck Mulligan came from the stairhead bearing a bowl of lather on which a mirror and a razor lay crossed") == ["Mulligan", "stairhead"]
puts longest_two_words("yarg barg yaarga barga") == ["barga", "yaarga"]
