# Uniq

# Define a method that, given an array, returns its argument without duplicates. Use a hash! Don't use the uniq method.

def uniq(arr)
  uniq_hash = {}
  arr.each { |el| uniq_hash[el] = true }
  uniq_hash.keys
end

puts "---------Uniq"
puts uniq([1, 1, 2, 2, 3]) == [1, 2, 3]
puts uniq([1, 1, 1]) == [1]
