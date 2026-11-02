class MyCar
  attr_accessor :color 
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(amount)
    @speed += amount # we use the += operator to add the amount to the current value of @speed
    puts "You accelerate to #{@speed} km/h."
  end

  def brake(amount)
    @speed -= amount
    @speed = 0 if @speed < 0 # we check if the speed is less than 0 and if it is, we set it to 0
    puts "You slow down to #{@speed} km/h."
  end

  def shut_off
    @speed = 0 # we set the speed to 0 when the car is shut off
    puts "The car is off."
  end

  def spray_paint(new_color) # this method takes in a new_color as an argument and sets the color of the car to that new color
    self.color = new_color # we use the self keyword to call the color= method and set the color of the car to the new color
    puts "Your car has been painted #{color}."
  end
end

my_car = MyCar.new(2024, "blue", "Toyota Corolla") # we create a new instance of the MyCar class and pass in the year, color, and model as arguments
puts my_car.color       # blue
my_car.color = "red"
puts my_car.color       # red
puts my_car.spray_paint("red") # "Your car has been painted red."