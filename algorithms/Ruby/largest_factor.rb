# Largest Factor

# Write a method, #largest_factor, that accepts an integer as an argument and returns
# the largest factor of that integer.

def largest_factor(num)
  (1...num).select { |x| num % x == 0 }.max
end

puts "---------Largest_factor"
puts largest_factor(10) == 5
puts largest_factor(143) == 13
puts largest_factor(27) == 9
puts largest_factor(17) == 1
