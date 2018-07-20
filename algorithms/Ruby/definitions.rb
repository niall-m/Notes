# Definitions

# Define a method, #definitions(dictionary, word), that accepts a hash and
# a string as arguments. The keys of the hash are words, the values their definitions.
# #definitions should look up the definition of the provided word in the dictionary,
# and construct a new hash of only the dictionary entries that the provided word's
# definition depends on.

# Example:
dictionary = {
  "dog" => "a cute furry animal",
  "cute" => "pretty charming",
  "charming" => "delightfully charismatic",
  "furry" => "an animal covered with a furlike substance",
  "animal" => "a multicellular organism of the kingdom Animalia"
}

# Expected output:
# definitions(dictionary, "dog") ==
# {
#   "cute" => "pretty charming",
#   "furry" => "covered with a furlike substance",
#   "animal" => "a multicellular organism of the kingdom Animalia"
# }

def definitions(dictionary, entry)
  new_dictionary = {}
  definition = dictionary[entry]
  definition.split.each do |word|
    new_dictionary[word] = dictionary[word] if dictionary.include?(word)
  end
  new_dictionary
end

puts "---------Definitions"
puts definitions(dictionary, "cute") == {"charming" => "delightfully charismatic"}
puts definitions(dictionary, "charming") == {}
puts definitions(dictionary, "furry") == {"animal" => "a multicellular organism of the kingdom Animalia"}
puts definitions(dictionary, "dog") ==
  {
  "cute" => "pretty charming",
  "furry" => "an animal covered with a furlike substance",
  "animal" => "a multicellular organism of the kingdom Animalia"
}
