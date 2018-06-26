# Fall And Winter Birthdays

# Define a method that, given a hash with keys as student names and values as their 
# birthday months (numerically, e.g., 1 corresponds to January), returns every combination 
# of students whose birthdays fall in the second half of the year (months 7-12).

# students_with_birthdays = {
#   "Asher" => 6,
#   "Bertie" => 11,
#   "Dottie" => 8,
#   "Warren" => 9
# }

# fall_and_winter_birthdays(students_with_birthdays) => [
#   ["Bertie", "Dottie"],
#   ["Bertie", "Warren"],
#   ["Dottie", "Warren"]
# ]

def fall_and_winter_birthdays(students_with_birthdays)
  students = students_with_birthdays.select { |k, v| v > 6 }.keys
  result = []
  students.each_with_index do |kid, idx1|
    (idx1 + 1...students.length).each do |idx2|
      result << [students[idx1], students[idx2]]
    end
  end
  result
end

puts "---------Fall_and_winter_birthdays"
p fall_and_winter_birthdays({"Asher"=>6, "Bertie"=>11, "Dottie"=>8, "Warren"=>9}) == [["Bertie", "Dottie"], ["Bertie", "Warren"], ["Dottie", "Warren"]]
p fall_and_winter_birthdays({"Asher"=>6, "Bertie"=>11, "Dottie"=>8, "Warren"=>9, "Charlie"=>7, "Nassim"=>4, "Ajit"=>10}) == [["Bertie", "Dottie"], ["Bertie", "Warren"], ["Bertie", "Charlie"], ["Bertie", "Ajit"], ["Dottie", "Warren"], ["Dottie", "Charlie"], ["Dottie", "Ajit"], ["Warren", "Charlie"], ["Warren", "Ajit"], ["Charlie", "Ajit"]]
