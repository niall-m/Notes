# Five W's

# Write a method - five_ws, that takes one or more sentences and
# returns them as questions if they contain the words: why, what, where,
# who,  when.

def five_ws(string)
  questions = ['Who', 'What', 'Where', 'When', 'Why']
  string.split.each do |word|
    if questions.include?(word.delete("."))
      string[string.index(".")] = "?"
    end
  end
  string
end

puts "---------Five_ws"
puts five_ws("Where can I find new shoes. I'm missing my favorite pair.") == "Where can I find new shoes? I'm missing my favorite pair."
puts five_ws("Who is at the door.") == "Who is at the door?"
puts five_ws("Whenever you are ready I'll meet you at the shop.") == "Whenever you are ready I'll meet you at the shop."
puts five_ws("Who. What. Where. When.") == "Who? What? Where? When?"
