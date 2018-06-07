# Letter Swap

# You are given a sentence and an array of 2 letters.
# Write a method that will return the sentence with any instance of
# the first letter switched with the second letter and vice versa.
# It should treat capitalized or lowercase letters the same.

def swap_letters(sentence, letters)
  letters.map! { |letter| letter.downcase }
  new_str = ""
  sentence.each_char do |ch|
    char = ch.downcase
    if char.include?(letters[0])
      new_str << letters[1]
    elsif char.include?(letters[1])
      new_str << letters[0]
    else
      new_str << ch
    end
  end
  new_str
end

puts "---------Letter_swap"
puts swap_letters("I went to the dentist", ["n", "t"]) == "I wetn no nhe detnisn"
puts swap_letters("I went to the dentist", ["t", "n"]) == "I wetn no nhe detnisn"
puts swap_letters("My name is Michael", ["a", "m"]) == "ay nmae is aichmel"
puts swap_letters("My name is Michael", ["A", "m"]) == "ay nmae is aichmel"
