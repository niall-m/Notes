# Pig Latin

# Translate a sentence into pig-latin. The first consonants go to the end of the word, then add "ay".

def pig_latin(sentence)
  sentence.split.map { |word| latinize(word) }.join(" ")
end

def latinize(word)
  until "aeiou".include?(word[0])
    word = word[1..-1] + word[0]
  end
  word + "ay"
end

puts "---------Pig_latin"
puts pig_latin("i speak pig latin") == "iay eakspay igpay atinlay"
puts pig_latin("throw me an aardvark") == "owthray emay anay aardvarkay"
