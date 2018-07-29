# Longest Segment

# Write a method, #longest_segment, that accepts two strings as arguments. The
# first is a long string of characters, and the second is a delimeter. Split the
# first string by the delimeter and return the longest segment.

def longest_segment(input, delimeter)
  input.split(delimeter).sort_by { |str| str.length }.last
end

puts "---------Longest_segment"
puts longest_segment('this is a string','a') == "this is "
puts longest_segment('this is a string','i') == "s a str"
puts longest_segment('this is a string',' ') == "string"

