# Punctuation Products

# Define a method that multiplies the frequencies of the periods, commas, hyphens, semicolons, question marks, 
# and exclamation points in a given string and returns the product. If any punctuation does not occur, 
# don't include it in the product, i.e., don't multiply by zero!

def punctuation_products(str)
  punctuation = Hash.new(0)
  str.each_char { |ch| punctuation[ch] += 1 if ".,-;:?!".include?(ch) }
  punctuation.values.reduce(:*)
end

puts "---------punctuation_products"
puts punctuation_products("!.,-;?") == 1
puts punctuation_products("There's a certain Slant of light, Winter Afternoons - That oppresses, like the Heft Of Cathedral Tunes - ") == 4
