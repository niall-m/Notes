# Cats And Hats

# You have 100 cats.
# Your rules are simple: whenever you visit a cat, you toggle it's hat status (if it
# already has a hat, you remove it.. if it does not have a hat, you put one on).
# All of the cats start hat-less. You cycle through 100 rounds of visiting cats.
# In the 1st round, you visit every cat. In the second round, you visit every other cat.
# In the nth round, you visit every nth cat.. until the 100th round, in which you only
# visit the 100th cat.

# At the end of 100 rounds, which cats have hats?

def cats_and_hats
  cat_hats = Hash.new { |k, v| k[v] = false }
  (1..100).each do |num|
    num.step(100, num) do |hat| 
      cat_hats[hat] == false ? cat_hats[hat] = true : cat_hats[hat] = false
    end
  end
  cat_hats.select { |k, v| v == true }.keys
end

puts "---------cats_and_hats"
puts cats_and_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
