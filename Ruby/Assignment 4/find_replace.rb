def find_replace(str, find_char, replace_char)
  new_str = ""
  str.each_char do |ch|
    ch = replace_char if ch == find_char
    new_str += ch
  end
  new_str
end

puts "Enter your string:"
str = gets.chomp

puts "Enter the character you want to find and replace: "
(find_char, replace_char) = gets.chomp.split(" ")

puts "Your new string is: \n#{find_replace(str, find_char, replace_char)}"
