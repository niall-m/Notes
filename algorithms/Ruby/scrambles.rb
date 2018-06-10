# Scrambles

# Write function scramble(str1,str2) that returns true if a portion of str1 characters 
# can be rearranged to match str2, otherwise returns false.

# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.

# Only lower case letters will be used (a-z). No punctuation or digits will be included. 
# Performance needs to be considered.

def scramble(s1, s2)
  s2.chars.all? { |c| s1.include?(c) }
end

puts "---------Scrambles" 
p scramble("racescar", "racescar") == true
p scramble("abcdefg", "defghhas") == false
p scramble("we are having a yellow ferret sale for a good cause over at the pet shop", "leopard ferrets forever yo") == true
p scramble("whowhowho", "") == true
