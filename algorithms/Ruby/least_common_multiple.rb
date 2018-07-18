# Least Common Multiple

# Define a method, #least_common_multiple, that accept two integers as arguments. The method should
# return the least common multiple of the two integers.

def least_common_multiple(a, b)
  counter = a
  until counter % b == 0
    counter += a
  end
  counter
end

puts "---------Least_common_multiple"
puts least_common_multiple(2, 3) == 6
puts least_common_multiple(6, 10) == 30
puts least_common_multiple(5, 20) == 20
puts least_common_multiple(50, 50) == 50
