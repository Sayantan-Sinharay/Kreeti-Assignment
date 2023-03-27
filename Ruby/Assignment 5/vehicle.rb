class Vehicle
  def initialize
    puts "I am a vehicle"
  end

  def max_speed
    puts "10"
  end
end

class Car < Vehicle
  def max_speed
    puts "100"
  end
end

class Rickshaw < Vehicle
  def max_speed
    puts "25"
  end
end
