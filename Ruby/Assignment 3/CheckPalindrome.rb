def check_palindrome(input)
  return puts "#{input} is a Palindrome no." if input.to_s == input.to_s.reverse
  return puts "#{input} is not Palindrome no."
end

puts "Enter a number :"
num = gets.chomp.to_i

check_palindrome(num)
