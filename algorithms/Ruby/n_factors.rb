# At Least N Factors

# Given an array of numbers, return an array of those numbers that have at least n factors (including 1 and the number itself as factors).
# at_least_n_factors([1, 3, 10, 16], 5) => [16] because 16 has five factors (1, 2, 4, 8, 16) and the others have fewer than five factors.
# Consider writing a helper method num_factors

def at_least_n_factors(numbers, n)
  numbers.select { |num| factors(num) >= n }
end

def factors(num)
  (1..num).count { |x| num % x == 0 }
end

puts "---------At_least_n_factors"
puts at_least_n_factors([1, 3, 10, 16], 5) == [16]
puts at_least_n_factors([1, 3, 10, 16], 2) == [3, 10, 16]
