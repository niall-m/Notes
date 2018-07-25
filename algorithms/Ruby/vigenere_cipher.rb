# Vigenere Cipher

# Vigenere's Cipher is a tool for encrypting strings that offsets each character
# according to a key sequence. For example, if we encrypt "bananasinpajamas" with the
# key sequence [1, 2, 3], the result would be "ccqbpdtkqqcmbodt":

# Word:   b a n a n a s i n p a j a m a s
# Keys:   1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Cipher: c c q b p d t k q q c m b o d t

# Note that offsets should wrap around the alphabet - offsetting 'z' by 1 should produce 'a'

def vigenere_cipher(string, key_sequence)
  result = ""
  alphabet = ("a".."z").to_a
  string.each_char.with_index do |ch, idx|
    key_idx = idx % key_sequence.length
    char_idx = (alphabet.index(ch) + key_sequence[key_idx]) % alphabet.length
    result << alphabet[char_idx]
  end
  result
end

puts "---------Vigenere_cipher"
puts vigenere_cipher("toerrishuman", [1]) == "upfssjtivnbo"
puts vigenere_cipher("toerrishuman", [1, 2]) == "uqftsktjvobp"
puts vigenere_cipher("toarrispirate", [1, 2, 3, 4]) == "uqdvskvtjtdxf"
puts vigenere_cipher("zzz", [1, 2, 1]) === "aba"
