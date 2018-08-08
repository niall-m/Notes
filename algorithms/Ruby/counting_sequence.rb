# Counting Sequence

# The number counting sequence is a sequence of number strings that begins with:
# ["1", "11", "21", "1211", "111221", ...]

# "1" is counted as "one 1" or "11", followed by
# "11" which is counted as "two 1s" or "21", followed by
# "21" which is counted as "one 2 and one 1" or "1211", and so on.

# Given an integer n, generate the n-th element in the number counting sequence.

def counting_sequence(n)
  return "" if n == 0
  sequence = ['1']
  until sequence.length == n
    sequence << generate_next_el(sequence.last)
  end
  sequence.last
end

def generate_next_el(number)
  result = ""
  count = 1
  number.each_char.with_index do |num, idx|
    if num == number[idx + 1]
      count += 1
    else
      result << count.to_s + num
      count = 1
    end
  end
  result
end

puts "---------Counting_sequence"
puts counting_sequence(0) == ""
puts counting_sequence(1) == "1"
puts counting_sequence(2) == "11" # one 1 above
puts counting_sequence(3) == "21" # two 1s above
puts counting_sequence(5) == "111221" #the last sequence was one 1, one 2, and two 1s: "1211"
puts counting_sequence(8) == "1113213211"
puts counting_sequence(10) == "13211311123113112211"
