# Longest Palindrome

# A palindrome is a word or sequence of words that reads the same backwards as
# forwards. Write a method that returns the length of the longest palindrome in a given
# string. If there is no palindrome longer than two letters, return false.

def longest_palindrome(string)
  string.length.downto(1) do |idx|
    string.chars.each_cons(idx) do |sub_arr|
      return sub_arr.length if sub_arr == sub_arr.reverse && sub_arr.length > 2
    end
  end
  false
end

puts "---------Longest_palindrome"
puts longest_palindrome("palindrome") == false
puts longest_palindrome("181847117432") == 6
puts longest_palindrome("noonminimum") == 5
