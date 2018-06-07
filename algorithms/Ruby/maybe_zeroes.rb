# Maybe Zeroes

# You are given an array of numbers, and a boolean.
# Write a method that will remove all the zeroes from the numbers if
# drop is true and then add the numbers with the zeroes removed and
# return this sum. If drop is false then add the given numbers and
# return the sum.

def maybe_zeroes(numbers, drop)
  sum = 0
  if drop == false
    return numbers.reduce(:+)
  elsif drop == true
    numbers.each do |num|
      num = num.to_s
      num.delete!("0")
      sum += num.to_i
    end
  end
  sum
end

puts "---------Maybe_zeroes"
puts maybe_zeroes([100, 505, 9, 1002], true) == 77
puts maybe_zeroes([100, 505, 9, 1002], false) == 1616
puts maybe_zeroes([9000103, 43], true) == 956
puts maybe_zeroes([43, 7, 98], false) == 148
