# Word Lengths

# Define a method that, given a sentence, returns a hash of each of the words as 
# keys with their lengths as values. Assume the argument lacks punctuation.

def word_lengths(str)
  lengths = {}
  str.split.each { |word| lengths[word] = word.length }
  lengths
end

puts "---------Word_lengths"
puts word_lengths("Nel mezzo del cammin di nostra vita mi ritrovai per una selva oscura") == {"Nel"=>3, "mezzo"=>5, "del"=>3, "cammin"=>6, "di"=>2, "nostra"=>6, "vita"=>4, "mi"=>2, "ritrovai"=>8, "per"=>3, "una"=>3, "selva"=>5, "oscura"=>6}
puts word_lengths("Vivamus mea Lesbia atque amemus") == {"Vivamus"=>7, "mea"=>3, "Lesbia"=>6, "atque"=>5, "amemus"=>6}
