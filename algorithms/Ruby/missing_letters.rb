# Missing Letters

# Define a method that returns an array of letters that do not occur in the method's argument.

def missing_letters(string)
  alphabet = ("a".."z").to_a
  alphabet.reject { |x| string.downcase.include?(x) }
end

puts "---------Missing_letters"
puts missing_letters("Tyger! Tyger! burning bright In the forest of the night What immortal hand or eye Could frame thy fearful symmetry?") == ["j", "k", "p", "q", "v", "x", "z"]
puts missing_letters("ABCDEFGHIJKLMNOPQRSTUVWXYZ") == []
