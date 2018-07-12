# Greatest Common Factor 

# Return the greatest number that's a factor of both inputs.
# greatest_common_factor(6, 10) => 2
# greatest_common_factor(10, 15) => 5

def greatest_common_factor(first_number, second_number)
  (1..first_number).select { |x| first_number % x == 0 && second_number % x == 0 }.max
end

puts "---------Greatest_common_factor"
p greatest_common_factor(4, 7) == 1
p greatest_common_factor(10, 15) == 5
