# Cat Pairs

# Write a method cat_pairs(cat_names, cat_price) that iterates over the
# array of cat names and finds the cheapest pair of cats one can buy.
# Return an array of the cat's names in the order in which they appear
# in the original array. Beware: cat_names may contain cats that are no
# longer for sale.

# Example:
# cat_names_1 = ["bella", "tigger", "luna", "kitty"]
# cat_price_1 = {"bella" => 24, "tigger" => 100, "luna" => 30, "kitty" => 50}
# cat_pairs(cat_names_1, cat_price_1) => ["bella", "luna"]

def cat_pairs(cat_names, cat_price)
  sorted_cats = cat_price.sort_by { |k, v| v }
  actual_cats = sorted_cats.to_h.select { |k, v| cat_names.include?(k) }
  actual_cats.keys[0..1]
end

puts "---------Cat_pairs"

cat_names_1 = ["bella", "tigger", "luna", "kitty"]
cat_names_2 = ["tigger", "luna", "kitty"]
cat_names_3 = ["callie", "bella", "macy", "fitz"]
cat_names_4 = ["callie", "bella", "macy", "kitty"]
cat_price_1 = {"bella" => 24, "tigger" => 100, "luna" => 30, "kitty" => 50}
cat_price_2 = {"callie" => 24, "fitz" => 100, "bellaerson" => 30, "macy" => 50}

puts cat_pairs(cat_names_1, cat_price_1) == ["bella", "luna"]
puts cat_pairs(cat_names_2, cat_price_1) == ["luna", "kitty"]
puts cat_pairs(cat_names_3, cat_price_2) == ["callie", "macy"]
puts cat_pairs(cat_names_4, cat_price_1) == ["bella", "kitty"]
