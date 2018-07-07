# Repeated Number Ranges

# Define a method that, given an array of numbers, returns a nested array of two-element arrays 
# that each contain the start and end indices of whenever a number appears multiple times in a row.
# repeated_number_ranges([1, 1, 2]) => [[0, 1]]
# repeated_number_ranges([1, 2, 3, 3, 4, 4, 4]) => [[2, 3], [4, 6]]

def repeated_number_ranges(arr)
  result = []
  start_idx = nil
  arr.each_with_index do |el, idx|
    if el == arr[idx + 1]
      start_idx = idx unless start_idx
    elsif start_idx
      result << [start_idx, idx]
      start_idx = nil
    end
  end
  result
end

puts "---------Repeated_number_ranges"
puts repeated_number_ranges([1, 1, 2]) == [[0, 1]]
puts repeated_number_ranges([8, 7, 7, 14, 12, 12, 12, 12, 21]) == [[1, 2], [4, 7]]
