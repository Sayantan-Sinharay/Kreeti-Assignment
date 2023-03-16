# Author - Sayantan Sinharay

def getDollar(float_num)
  dollars = "%.2f" % float_num.to_f.floor(2)
  return "$#{dollars}"
end

puts "Enter the floating point number: "

num = gets

puts getDollar(num)
