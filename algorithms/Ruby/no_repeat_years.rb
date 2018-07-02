# No Repeat Years

# Define a method that accepts two years and returns an array of the years within
# that range (inclusive) that have no repeated digits. Hint: helper method?

def no_repeat_years(first_yr, last_yr)
  years = (first_yr..last_yr)
  years.select { |year| year.to_s.chars.uniq == year.to_s.chars }
end

puts "---------No_repeat_years"
p no_repeat_years(1990, 2000) == []
p no_repeat_years(2016, 2020) == [2016, 2017, 2018, 2019]
