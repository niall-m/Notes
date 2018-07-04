# One Week Wonders

# Define a method that, given an array of songs at the top of the charts, returns the songs that only stayed on 
# the chart for a week at a time. Each element corresponds to a song at the top of the charts for one particular week.
# Songs CAN reappear on the chart, but if they don't appear in consecutive weeks, they're "one-week wonders."
# Suggested strategy: find the songs that appear multiple times in a row and remove them.
# You may wish to write a helper method no_repeats?

def one_week_wonders(songs)
  songs.uniq.select { |song| no_repeats?(song, songs) }
end

def no_repeats?(song_name, songs)
  songs.each_with_index do |song, idx|
    if song == song_name
      return false if song == songs[idx + 1]
    end
  end
  true
end

puts "---------One_week_wonders"
puts one_week_wonders(["Call Me Maybe", "Protect Ya Neck", "Call Me Maybe", "Protect Ya Neck", "Protect Ya Neck"]) == ["Call Me Maybe"]
puts one_week_wonders(["Beat It", "Beat It", "Careless Whisper", "Beat It", "Baby", "Baby", "Never Gonna Give You Up", "Uptown Funk", "Uptown Funk", "Uptown Funk"]) == ["Careless Whisper", "Never Gonna Give You Up"]
