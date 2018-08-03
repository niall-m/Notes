# Even Split

# Return an array of characters on which we can split an input string to produce
# substrings of the same length. Don't count empty strings after the split.

# Here's an example for "banana":

# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
# result: ["b", "a"]

def even_split(string)
  result = []
  string.chars.uniq.each do |letter|
    splits = string.split(letter)
    splits.delete("")
    if splits.all? { |el| el.length == splits[0].length }
      result << letter
    end
  end
  result
end

puts "---------Even_split"
puts even_split("") == []
puts even_split("t") == ["t"]
puts even_split("jk") == ["j", "k"]
puts even_split("xoxo") == ["x", "o"]
puts even_split("banana") == ["b","a"]
puts even_split("mishmash") == ["m","h"]
