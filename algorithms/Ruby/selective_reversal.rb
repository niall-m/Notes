# Selective Array Reversal

# Given an array, return the reversed version of the array. You'll be given a length 
# argument which represents the length of each portion you are to reverse.

# Example:

# selReverse([1,2,3,4,5,6], 2)
# //=> [2,1, 4,3, 6,5]

# If after reversing some portions of the array and the length of the remaining 
# portion in the array is not up to the length argument, just reverse them.

# selReverse([2,4,6,8,10,12,14,16], 3)
# //=> [6,4,2, 12,10,8, 16,14]

# selReverse(array, length)
#     array - array to reverse
#     length - length of each portion to reverse

# Note : if the length argument exceeds the array length, reverse all of them, 
# if the length argument is zero do not reverse at all.

def selective_reversal(arr,l)
  return arr.reverse if l > arr.length
  return arr if l == 0
  reversed = []
  until arr.empty?
    part = []
    until part.length == l
      part << arr.shift
    end
    reversed << part.reverse
  end
  reversed.flatten.compact
end

puts "---------Selective_array_reversal"
puts selective_reversal([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 4) == [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 15, 14, 13]
puts selective_reversal([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 0) == [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
puts selective_reversal([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 16) == [15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
puts selective_reversal([],2) == []
