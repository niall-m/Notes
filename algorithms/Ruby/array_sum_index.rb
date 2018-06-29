# Array Sum With Index

# Define a method that returns the sum of each element in its argument multiplied by its index.
# array_sum_with_index([2, 9, 7]) => 23 because (2 * 0) + (9 * 1) + (7 * 2) = 0 + 9 + 14 = 23

def array_sum_with_index(arr)
  sum = 0
  arr.each_with_index { |el, idx| sum += el * idx }
  sum
end

puts "---------Array_sum_with_index"
puts array_sum_with_index([2, 9, 7]) == 23
puts array_sum_with_index([0, 0]) == 0
