# Hashtag

# Given a sentence string and an array of words, add a hashtag to the words
# in the original string and return the updated cool string with hashtags. Case-insensitive.

def hashtag(sentence, tags)
  sentence.split.map do |word|
    if tags.include?(word.downcase.delete(".!"))
      word = "#" + word
    else
      word
    end
  end.join(" ")
end

puts "---------Hashtag"
puts hashtag("coding", ["coding"]) == "#coding"
puts hashtag("coding is fun", ["coding", "fun"]) == "#coding is #fun"
puts hashtag("Learned about coding. Coding is fun!", ["coding", "fun"]) == "Learned about #coding. #Coding is #fun!"

