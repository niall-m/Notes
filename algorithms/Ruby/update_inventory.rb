# Update Inventory

# Define a method that accepts two hashes as arguments: an older inventory 
# and a newer one. The method should update keys in the older inventory with 
# values from the newer one as well as add new key-value pairs to the older 
# inventory. The method should return the older inventory as a result.

# march = {rubies: 10, emeralds: 14, diamonds: 2}
# april = {emeralds: 27, moonstones: 5}
# update_inventory(march, april) => {rubies: 10, emeralds: 27, diamonds: 2, moonstones: 5}

def update_inventory(older, newer)
  newer.each { |k, v| older[k] = v }
  older
end

puts "---------Update_inventory"
puts update_inventory({:rubies=>10, :emeralds=>27, :diamonds=>2, :moonstones=>5}, {:emeralds=>27, :moonstones=>5}) == {:rubies=>10, :emeralds=>27, :diamonds=>2, :moonstones=>5}
puts update_inventory({:pokeball=>25, :potion=>2, :hyper_potion=>52}, {:pokeball=>25, :hyper_potion=>52}) == {:pokeball=>25, :potion=>2, :hyper_potion=>52}
