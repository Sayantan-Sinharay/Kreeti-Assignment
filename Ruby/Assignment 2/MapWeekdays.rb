DaysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

puts "Enter an array of day number of week:"
input = gets.chomp!

day_arr = input.split(" ").map { |value| value.to_i }

for day in day_arr
  if (day <= 7 && day > 0)
    printf "#{day} - #{DaysOfWeek[day - 1]}\t"
  end
end
