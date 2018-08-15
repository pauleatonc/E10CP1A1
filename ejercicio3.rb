class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false

  end

  def engine_start
    @start = true
    print "El motor se ha encendido"
  end
end

class Car < Vehicle
  @@car_count = 0
  def initialize(model, year)
  super(model, year)
  @@car_count += 1
  end
  def multiply(x)
    @x = x
    x.times do
      Car.new('x', 'y')
    end
  end
  def self.car_count
   @@car_count - 1
  end
end

puts Car.new('1', '2').multiply(10)
puts Car.car_count
puts Car.new('1', '2').engine_start
