# Longest Pause

# Write a method that takes a string and counts the
# longest "ummm". For example:
# longest_pause("ummmmmmm") => 8

def longest_pause(sentence)
  longest_pause = nil
  sentence.delete!(",'.")
  sentence.split.each do |word|
    if word.include?("um")
      if longest_pause == nil || word.length > longest_pause.length
        longest_pause = word
      end
    end
  end
  longest_pause.length
end

puts "---------Longest_pause"
puts longest_pause("ummmmmmm") == 8
puts longest_pause("Hi there, I'm um here for the interview") == 2
puts longest_pause("um, I'm umm not sure.") == 3
puts longest_pause("ummmmm, I'm umm not sure.") == 6
