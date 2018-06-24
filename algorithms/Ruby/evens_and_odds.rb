# Evens and Odds

# Define a method that, given an array of numbers, returns a hash with "even" and "odd" as keys and the 
# frequency of each parity as values.

def evens_and_odds(numbers)
  parity = { "even" => 0, "odd" => 0 }
  numbers.each { |x| x.even? ? parity["even"] += 1 : parity["odd"] += 1 }
  parity
end

puts "---------Evens_and_odds"
puts evens_and_odds([1, 2, 3]) == {"even"=>1, "odd"=>2}
puts evens_and_odds([0, 2]) == {"even"=>2, "odd"=>0}
