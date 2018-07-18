# Ranges

# Given a sorted array of integers without duplicates or stand-alone elements, return the 
# start and end integers of each range of numbers found in the array. 
# A range is considered valid when each sequence only increments by 1.
# e.g. [0, 1, 4, 5]) == [[0, 1], [4, 5]]

def ranges(array)
  result = []
  start_idx = nil
  array.each_with_index do |num, idx|
    if num + 1 == array[idx + 1]
      start_idx = idx unless start_idx
    elsif start_idx
      result << [array[start_idx], array[idx]]
      start_idx = nil
    end
  end
  result
end

puts "---------Ranges"
puts ranges([0, 1]) == [[0, 1]]
puts ranges([0, 1, 4, 5]) == [[0, 1], [4, 5]]
puts ranges([0, 1, 3, 4, 6, 7]) == [[0, 1], [3, 4], [6, 7]]
puts ranges([0, 1, 2, 3, 4, 5, 7, 8, 9, 15, 16]) == [[0, 5], [7, 9], [15, 16]]
