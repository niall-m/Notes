# Calculate Doubles

# Define a method that returns a new array of all the elements in its argument doubled. 
# This method should *not* modify the original array.

def calculate_doubles(arr)
  arr.map { |x| x * 2 }
end

puts "---------Calculate_doubles"
puts calculate_doubles([1, 2, 3]) == [2, 4, 6]
puts calculate_doubles([]) == []
