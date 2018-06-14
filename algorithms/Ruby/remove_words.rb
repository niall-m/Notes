# Remove W Words

# Define a method, #remove_w_words(sentence), that accepts a string as an argument
# Your method should return a new string, omitting all the words that include "w".

def remove_w_words(sentence)
  result = []
  sentence.split.each do |word|
    if ",?".include?(word[-1])
      result << word[-1]
    elsif word.downcase.include?("w")
      result << ""
    else
      result << word
    end
  end
  result.join(" ")
end

puts "---------Remove_w_words"
puts remove_w_words("") == ""
puts remove_w_words("words") == "" 
puts remove_w_words("throw it this way") == " it this "
puts remove_w_words("string with a whole lot of w words") == "string  a  lot of  "
puts remove_w_words("Why, delete the ws?") == ", delete the ?"
puts remove_w_words("Why, delete the w") == ", delete the "
