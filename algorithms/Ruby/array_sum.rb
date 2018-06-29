# Array Sum

# Define a method that returns the sum of all the elements in its argument (an array of numbers).

def array_sum(arr)
  arr.reduce(:+)
end

puts "---------Array_sum"
puts array_sum([1, 2, 3]) == 6
puts array_sum([0, 0, 0]) == 0
