# Num Prime Factors

# Write a method that returns the number of prime factors of its argument.

def num_prime_factors(num)
  factors = (1..num).select { |x| num % x == 0 }
  factors.count { |x| is_prime?(x) }
end

def is_prime?(n)
  return false if n < 2
  (2...n).none? { |x| n % x == 0 }
end

puts "---------Num_prime_factors"
p num_prime_factors(2) == 1
p num_prime_factors(54) == 2
p num_prime_factors(1) == 0
