# Price Is Right

# Given an array of bids and an actual retail price, return the bid closest to the actual retail price 
# without going over that price. Assume there is always at least one bid below the retail price.

def price_is_right(bids, actual_retail_price)
  bids.select { |bid| bid <= actual_retail_price }.max
end

puts "---------Price_is_right"
puts price_is_right([200, 2350, 1400, 1600], 1599) == 1400
puts price_is_right([950, 850, 1000, 1], 1300) == 1000
