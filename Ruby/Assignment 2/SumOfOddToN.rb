def SumOfOddToN(n)
  sum = 0
  for i in (1..n)
    if i.modulo(2)
      sum += i
    end
  end
  return sum
end

printf "Enter a number (N): "
n = gets.to_i

puts "The sum of all the odd numbers from 1 to N: #{SumOfOddToN(n)}"
