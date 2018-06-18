# Remove Unnecessary Punctuation

# If there are more than one >!<, >?<, >,< or >.< replace them with one of them.

def remove_unnecessary_punctuation(str)
  new_str = ""
  start_idx = nil
  str.each_char.with_index do |char, idx|
    next_char = str[idx + 1]
    if "!?,.".include?(char) && char == next_char
      start_idx = idx unless start_idx
    elsif start_idx
      new_str << char
      start_idx = nil
    else
      new_str << char
    end
  end
  new_str
end

puts "---------Remove_unnecessary_punc"
puts remove_unnecessary_punctuation("This is so cool!!!!! Wow..... Why???? Who would use,,,,,, like this????") == "This is so cool! Wow. Why? Who would use, like this?"
