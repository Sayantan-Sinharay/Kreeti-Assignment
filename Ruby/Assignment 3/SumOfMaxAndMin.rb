def sum_of_min_max(arr)
  minVal, maxVal = arr.minmax
  minVal + maxVal
end

puts "Enter an Array:"
arr = gets.chomp.split().map { |x| x.to_i }

puts "#{sum_of_min_max(arr)}"
