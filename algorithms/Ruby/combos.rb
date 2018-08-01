# Combos

# You have a bag of skittles. You want to know what every unique
# two-flavor combination tastes like. Write a method that takes in
# a bag of skittles and returns an array of every unique two-flavor
# combination that you could make from the bag, each in its own array.
# Each of the two-flavor arrays should be arranged alphabetically.

def combos(skittles)
  result = []
  skittles.each do |color1|
    skittles.each do |color2|
      next if color1 == color2
      combo = [color1, color2].sort
      result << combo unless result.include?(combo)
    end
  end
  result
end

puts "---------Combos"
puts combos(["red", "orange", "green"]) == [["orange", "red"], ["green", "red"], ["green", "orange"]]
puts combos(["purple", "red", "yellow", "green", "red"]) == [["purple", "red"], ["purple", "yellow"], ["green", "purple"], ["red", "yellow"], ["green", "red"], ["green", "yellow"]]
puts combos(["yellow", "yellow"]) == []
