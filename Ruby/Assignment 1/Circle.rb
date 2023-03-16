# Author - Sayantan Sinharay

class Circle
  PI = 3.14

  def initialize(radius)
    @radius = radius
  end

  def getArea
    area = PI * @radius * @radius
    puts "The area if the circle: #{area}"
  end

  def getCircumference
    circumference = 2 * PI * @radius
    puts "The circumference of the circle: #{circumference}"
  end
end

puts "Enter the radius of the circle"
radius = gets

circle = Circle.new(radius)

circle.getArea()
circle.getCircumference()
