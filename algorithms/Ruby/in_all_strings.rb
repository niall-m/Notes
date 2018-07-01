# In All Strings?

# Define a method that returns a boolean indicating whether substring is a substring of all the long_strings (an array).

def in_all_strings?(long_strings, substring)
  long_strings.all? { |str| str.include?(substring) }
end

puts "---------In_all_strings?"
puts in_all_strings?(["leopold", "leopard", "leonine"], "leo") == true
puts in_all_strings?(["leopold", "leopard", "leonine"], "leop") == false
