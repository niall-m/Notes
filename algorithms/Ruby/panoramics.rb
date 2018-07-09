# Panoramics

# You have a panoramic view in front of you, but you only can take a picture of two 
# landmarks at a time (your camera is small). You want to capture every pair of landmarks 
# that are next to each other. Define a method that, given an array of landmarks, returns 
# an array of every adjacent pair from left to right. Assume the panorama wraps around.

def panoramics(landmarks)
  result = []
  landmarks.each_with_index do |landmark, idx|
    next_landmark = landmarks[idx + 1] || landmarks[0]
    result << [landmark, next_landmark]
  end
  result
end

puts "---------panoramics"
puts panoramics(["House", "Horse"]) == [["House", "Horse"], ["Horse", "House"]]
puts panoramics(["Tree", "Mountain", "Ocean", "Cottage"]) == [["Tree", "Mountain"], ["Mountain", "Ocean"], ["Ocean", "Cottage"], ["Cottage", "Tree"]]
