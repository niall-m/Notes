# Oddball

# Return the one integer in an array that is even or odd while the rest are of opposite 
# parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)

def oddball(arr)
  evens, odds = [], []
  arr.each { |x| x.even? ? evens << x : odds << x }
  evens.length < odds.length ? evens[0] : odds[0]
end

puts "---------Oddball"
puts oddball([1, 2, 3]) == 2
puts oddball([2, 4, 5, 6]) == 5
