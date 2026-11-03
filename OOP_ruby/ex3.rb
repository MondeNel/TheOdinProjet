class MyCar
  # atrributes for the 
  attr_accessor :color # this line creates both a getter and setter method for the @color instance variable
  attr_reader :year # this line creates a getter method for the @year instance variable

  def initialize(year, color, model) # these are instance variables that are initialized when a new instance of the MyCar class is created. 
    # The initialize method is called automatically when a new object is created and it takes in three parameters: year, color, and model. 
    # The instance variables @year, @color, and @model are set to the values passed in as arguments. 
    # The instance variable @speed is also initialized to 0.
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
puts my_car.color       # blue -> because we are calling the getter method for the @color instance variable and we've set the color to blue when we created the new instance of the MyCar class
my_car.color = "red"    # we are calling the setter method for the @color instance variable and setting the color to red
puts my_car.color       # red
puts my_car.spray_paint("red") # "Your car has been painted red."