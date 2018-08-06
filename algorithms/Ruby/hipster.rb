# Hipster

# Define a method that accepts a sentence (string) as an argument.
# The method should return a new string with the last vowel removed from each word.
# 'y' is not a vowel. If a word has no vowels, don't change it.

# hipster("towel flicker banana") => "towl flickr banan"

def hipster(sentence)
  vowels = ['a', 'e', 'i', 'o', 'u']
  sentence.split.map do |word|
    idx = word.length - 1
    while idx >= 0 
      if vowels.include?(word[idx])
        word = word[0...idx] + word[idx + 1..-1]
        break
      end
      idx -= 1
    end
    word
  end.join(" ")
end

puts "---------Hipster"
puts hipster("proper") == "propr"
puts hipster("mstrkrft") == "mstrkrft"
puts hipster("towel flicker banana") == "towl flickr banan"
puts hipster("turtle cheeseburger fries") == "turtl cheeseburgr fris"
