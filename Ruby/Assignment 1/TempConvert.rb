# Author - Sayantan Sinharay

class Temperature
  def initialize(temperature)
    @temperature = temperature
  end

  def convertFahrenheit()
    fahrenheit = (@temperature * 9 / 5) + 32
    puts "#{@temperature} deg Celsius is #{fahrenheit.round(2)} deg fahrenheit"
  end

  def convertCelsius()
    celsius = (@temperature - 32) * 5 / 9
    puts "#{@temperature} deg Fahrenheit is #{celsius.round(2)} deg Celsius"
  end
end

puts "Enter the temperature :"
temperature = gets.to_f

temperatureConverter = Temperature.new(temperature)

puts "1. Celsius to Fahrenheit\n2. Fahrenheit to Celsius\nEnter your choice:"
choice = gets.to_f

case choice
when 1
  temperatureConverter.convertCelsius()
when 2
  temperatureConverter.convertFahrenheit()
else
  puts "Invalid choice!"
end
