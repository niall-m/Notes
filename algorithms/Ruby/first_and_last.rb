# First and Last Indices

# Write a method that, given a string, returns a hash in which each key is a character in the 
# string and each value is an array of the first and last indices where that character occurs. 
# If the character occurs only once, the array should contain a single index. Consider defining helper methods.

# first_last_indices("banana") => {"b" => [0], "a" => [1, 5], "n" => [2, 4]}

def first_last_indices(str)
  indicies = Hash.new { |k, v| k[v] = [] }
  str.chars.uniq.each do |ch|
    first = str.index(ch)
    last = str.length - str.reverse.index(ch) - 1
    indicies[ch] << first
    indicies[ch] << last unless last == first
  end
  indicies
end

puts "---------First_last_indices"
p first_last_indices("banana") == {"b"=>[0], "a"=>[1, 5], "n"=>[2, 4]}
p first_last_indices("racecar") == {"r"=>[0, 6], "a"=>[1, 5], "c"=>[2, 4], "e"=>[3]}
