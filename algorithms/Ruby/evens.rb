# Get Evens

# Define a method that returns an array of only the even numbers in its argument (an array of integers).

def get_evens(arr)
  arr.select { |x| x.even? }
end

puts "---------Get_evens"
puts get_evens([1, 2, 3, 4, 5]) == [2, 4]
puts get_evens([1, 3]) == []
