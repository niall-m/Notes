# Greatest Key by Value

# Define a method that, given a hash with integers as values, returns the key with the largest value.

def greatest_key_by_val(hash)
  hash.sort_by { |k, v| v }.last.first
end

puts "---------Greatest_key_by_val"
puts greatest_key_by_val({:a=>100, :b=>1, :c=>50}) == :a
puts greatest_key_by_val({:a=>1, :b=>100, :c=>50}) == :b
