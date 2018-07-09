# Isograms 

# An isogram is a word consisting of non-repeating letters. 
# Define a method that, given two isograms of the same length, 
# returns an array of two elements indicating matches: 
# the first number is the number of letters matched in both words at the same position, 
# and the second is the number of letters matched in both words but not in the same position.

def isograms(iso1, iso2)
  idx_match = 0
  letter_match = 0
  iso1.each_char.with_index do |char, idx|
    if char == iso2[idx]
      idx_match += 1
    elsif iso2.include?(char)
      letter_match += 1
    end
  end
  [idx_match, letter_match]
end

puts "---------isograms"
puts isograms("or", "go") == [0,1]
puts isograms("unpredictably", "hydromagnetic") == [1,8]
