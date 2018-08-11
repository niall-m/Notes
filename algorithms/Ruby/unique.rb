# Unique

# Write a function that takes in an array. It should return a new array
# containing only the elements that were unique in the original array.

def unique(arr)
  uniq = Hash.new(0)
  arr.each { |x| uniq[x] += 1 }
  uniq.select { |k, v| v == 1 }.keys
end

puts "---------Uniq_array"
puts unique([1, 5, 5, 7, 16, 8, 1, 8, 9]) == [7, 16, 9]
