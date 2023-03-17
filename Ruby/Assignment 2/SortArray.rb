def BubbleSort(array)
  for i in (0...array.size - 1)
    for j in (0...array.size - i - 1)
      if (array[j] >= array[j + 1])
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end
  return array
end

puts "Enter an array of numbers: "
arr = gets.chomp!
arr = arr.split(" ").map { |x| x.to_i }

puts "The sorted array: #{BubbleSort(arr)}"
