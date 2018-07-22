# Calculate

# Define a method, #calculate, that accepts two arguments: a starting value and an
# array of commands. The method should preform the specified commands and return the
# final value. An example of commands might look like:

# [["+", 3], ["/",4 ], ['-', 10], ["*", 6]]

# Note that this is an array of arrays, where the first element is the operation to perform,
# and the second argument is the value to use in the operation. You only need to account
# for the 4 basic operations: +, -, *, and /

# ex: calculate(3, [["*", 5]]) ==> 3 * 5 == 15
# ex: calculate(2, [["+", 2], ["/",4 ]]) ==> (2 + 2) / 4 == 1

def calculate(starting_value, operations)
  result = starting_value
  operations.each_with_index do |el, idx|
    command = operations[idx][0]
    value = operations[idx][1]
    if command == "+" || command == :+
      result += value
    elsif command == "-" || command == :-
      result -= value
    elsif command == "*" || command == :*
      result *= value
    elsif command == "/" || command == :/
      result /= value
    end
  end
  result
end

puts "---------Calculate"
puts calculate(3, [[:*, 5]]) == 15
puts calculate(2, [["+", 2], ["/",4 ]]) == 1
puts calculate(0, [["+", 3], ["/", 3], ['-', 10], ["*", 6]]) == -54
puts calculate(10, [["+", 1], ["+", 10], ['-', 3], ["/", 2]]) == 9
