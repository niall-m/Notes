# Routes

# You are at a busy intersection where multiple buses go by, but you don't know which to take.
# Given a hash of routes (with route number as the key and next stop on the
# route as the value) return the number of the first route in the hash that
# could get you to your destination. If none exist, return nil.

def routes(routes, destination)
  routes.keys.each { |route| return route if routes[route] == destination }
  nil
end

puts "---------Routes"
puts routes({3 => "Arizmendi", 27 => "Nopalito", 55 => "Brenda's Soul Food"}, "Brenda's Soul Food") == 55
puts routes({7 => "Devil's Teeth", 33 => "Devil's Teeth"}, "Devil's Teeth") == 7
puts routes({90 => "Padrecito", 43 => "Hard Knox", 67 => "Martha's"}, "Hard Knox") == 43
puts routes({10 => "Good Luck Dim Sum", 25 => "Art's Cafe"}, "Japanese Tea Hut") == nil
