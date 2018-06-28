# Biodiversity Index

# Define a method that, given an array of specimens, returns the biodiversity index as defined by the following formula:
# number_of_species**2 * smallest_population_size / largest_population_size
# biodiversity_index(["cat", "cat", "cat"]) => 1
# biodiversity_index(["cat", "leopard-spotted ferret", "dog"]) => 9

def biodiversity_index(specimens)
  species_hash = Hash.new(0)
  specimens.each { |species| species_hash[species] += 1 }
  num_species = species_hash.length
  small_pop = species_hash.values.min
  large_pop = species_hash.values.max
  num_species ** 2 * small_pop / large_pop
end

puts "---------Biodiversity_index"
puts biodiversity_index(["cat", "cat", "cat"]) == 1
puts biodiversity_index(["cat", "leopard-spotted ferret", "dog"]) == 9
