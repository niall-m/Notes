# Calculator

# You are given a hash with letters as keys and mathematical operators as values,
# an input array of numbers and letters, and a starting value.

# Write a method that takes the start value then goes through the input array
# performing the operation on the accumulated output. If a letter in the input 
# does not appear in the hash, skip it and the number after it.

# Example:
# hash = {"a" => "+", "z" => "*", "t", "/"}
# input = ["z", 5, "t", 8]
# start = 9

# calculator(hash, input, start) = 5 (remember integer division!)

def calculator(hash, input, start)
  input.each_with_index do |el, idx|
    if hash[el] == "+"
      start += input[idx + 1]
    elsif hash[el] == "-"
      start -= input[idx + 1]
    elsif hash[el] == "*"
      start *= input[idx + 1]
    elsif hash[el] == "/"
      start /= input[idx + 1]
    end
  end
  start
end

puts "---------Calculator"
hash = {"a" => "+", "z" => "*", "t" => "/"}
hash2 = { "y" => "*", "r" => "/", "u" => "-"}
puts calculator(hash, ["z", 5, "t", 8], 9) == 5
puts calculator(hash, ["z", 5, "z", 3], 3) == 45
puts calculator(hash2, ["a", 5, "y", 7, "r", 9, "u", 4], 8) == 2
puts calculator(hash2, ["y", 5, "u", 20, "r", 9, "y", 4], 0) == -12
