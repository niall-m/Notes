# Censor Vowels

# Write a method, #censor_vowels that takes in a string and replaces
# any vowels in it with an "X". Do not modify the original string.

def censor_vowels(string)
  str = ""
  string.each_char { |c| "aeiou".include?(c) ? str << "X" : str << c }
  str
end

puts "---------Censor_vowels"
puts censor_vowels("Let's order a pizza") == "LXt's XrdXr X pXzzX"
puts censor_vowels("Nitwit, blubber, oddment, tweak") == "NXtwXt, blXbbXr, XddmXnt, twXXk"
puts censor_vowels("Supercalifragilisticexpialidocious") == "SXpXrcXlXfrXgXlXstXcXxpXXlXdXcXXXs"
