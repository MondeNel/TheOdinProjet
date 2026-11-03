# We create a class called MyCar that has an initialize method that takes in three parameters: year, color, and model. 

class MyCar
  # The initialize method sets the instance variables @year, @color, and @model to the values passed in as arguments. 
  # It also sets the instance variable @speed to 0.
  def initialize(year, color, model)
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(amount) # this method takes in an amount as an argument and increases the @speed instance variable by that amount
    @speed += amount # we use the += operator to add the amount to the current value of @speed
    puts "You accelerate to #{@speed} km/h."
  end

  def brake(amount) # this method takes in an amount as an argument and decreases the @speed instance variable by that amount

    @speed -= amount
    @speed = 0 if @speed < 0 # we check if the speed is less than 0 and if it is, we set it to 0
    puts "You slow down to #{@speed} km/h."
  end

  def shut_off # this method sets the @speed instance variable to 0 and outputs a message indicating that the car is off
    @speed = 0 # we set the speed to 0 when the car is shut off
    puts "The car is off."
  end
end

my_car = MyCar.new(2024, "blue", "Toyota Corolla") # we create a new instance of the MyCar class and pass in the year, color, and model as arguments
my_car.speed_up(20) # we set the speed of the car to 20 km/h
my_car.speed_up(30) # we set the speed of the car to 50 km/h
my_car.brake(10) # we decrease the speed of the car by 10 km/h
my_car.shut_off # we shut off the car