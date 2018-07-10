# Xbonacci

# Define a method that works similarly to the fibonacci sequence.
# The fibonacci sequence takes the previous two numbers in the sequence and adds
# them together to create the next number.
#
# First five fibonacci numbers = [1, 1, 2, 3, 5]
# The fourth fibonacci number (3) is the sum of the two numbers before it
# (1 and 2).
#
# In Xbonacci, the sum of the previous X numbers (instead of the previous 2 numbers)
# of the sequence becomes the next number in the sequence.
#
# The method will take two arguments: the starting sequence with X number of
# elements and an integer N. The method will return the first N elements in the given
# sequence.
#
# xbonacci([1, 1], 5) => [1, 1, 2, 3, 5]
# xbonacci([1, 1, 1, 1], 8) => [1, 1, 1, 1, 4, 7, 13, 25]
#
# X is the length of the starting sequence.
#
# number_of_xbonacci_numbers_to_return is the same as N.

def xbonacci(starting_sequence, number_of_xbonacci_numbers_to_return)
  result = starting_sequence
  nums_to_sum = starting_sequence.length
  until result.length == number_of_xbonacci_numbers_to_return
    last_x_nums = result[-nums_to_sum..-1]
    result << last_x_nums.reduce(:+)
  end
  result
end

puts "---------Xbonacci"
puts xbonacci([1, 1], 5) == [1, 1, 2, 3, 5]
puts xbonacci([1, 1, 1, 1], 8) == [1, 1, 1, 1, 4, 7, 13, 25]
