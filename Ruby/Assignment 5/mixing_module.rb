# Mixing and Modules

# In ruby modules is used group co-related functions, classes, constants together. Modules provides a namespace which can be used to distinguish various similar functions and helps us to organize and encapsulate the code.

module Circle
  PI = 3.14

  def self.define
    puts "I am a circle, I have no edges."
  end

  def to_s
    return "Circle"
  end

  Area = ->(radius) { PI * radius ** 2 }
  Perimeter = ->(radius) { 2 * PI * radius }
end

module Square
  def self.define
    puts "I am a square, I have 4 edges."
  end

  def to_s
    return "Square"
  end

  Area = ->(side) { side ** 2 }
  Perimeter = ->(side) { 4 * side }
end

# Here we have 2 modules (square and circle) and both the modules have same variables and functions. Here modules provide a great solution to resolve the ambiguity of functions

# We can access the methods inside just like the class.
Square.define
# and we can access the variables with `::` operator.
puts Circle::PI
puts Circle::Area.call(5)

# Mixing
#
# In ruby mixing is a way to invoke modules inside the code. We can also achieve inheritance with the help of mixing.
# We can include modules from other files inside a class or method.
# There are 3 types of mixing include, extend, and prepend

class Shape

  # `Include` is used to add invoke the modules
  include Circle
  include Square

  def initialize(shape, side)
    @shape = shape
    @name = shape.to_s
    @side = side
  end

  def area()
    puts calculate(@side, &@shape::Area)
  end

  def perimeter()
    puts calculate(@side, &@shape::Perimeter)
  end

  protected

  def calculate(value, &formula)
    formula.call value
  end
end

my_circle = Shape.new(Circle, 4)
puts my_circle.area
