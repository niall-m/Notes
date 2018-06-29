# Char Tweak

# Define a method that, given the string of a respectable business sign, returns a boolean 
# indicating whether pranksters can make a given vandalized string using the available letters. 
# Ignore capitalization and punctuation.

# char_tweak("We're having a yellow ferret sale for a good cause over at the pet shop!", "Leopard ferrets forever yo") => true

def char_tweak(normal_sign, vandalized_sign)
  normal = char_count(normal_sign)
  vandal = char_count(vandalized_sign)
  vandal.all? { |k, v| normal[k] >= v }
end

def char_count(str)
  counter = Hash.new(0)
  str.each_char { |ch| counter[ch.downcase] += 1 }
  counter
end

puts "---------char_tweak"
p char_tweak("We're having a yellow ferret sale for a good cause over at the pet shop!", "Leopard ferrets forever yo") == true
p char_tweak("Get on down to real fake doors", "None of them open!") == false
