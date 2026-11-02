class MyCar
    # We create a class called MyCar that has an initialize method that takes in three parameters: year, color, and model.
  attr_accessor :color # this line creates both a getter and setter method for the @color instance variable
  attr_reader :year # this line creates a getter method for the @year instance variable

  def initialize(year, color, model) # this method is called when a new MyCar object is created and it initializes the instance variables @year, @color, and @model with the values passed in as arguments
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(amount) # this method takes in an amount as an argument and increases the @speed instance variable by that amount
    @speed += amount
    puts "You accelerate to #{@speed} mph."
  end

  def brake(amount) # this method takes in an amount as an argument and decreases the @speed instance variable by that amount
    @speed -= amount
    @speed = 0 if @speed < 0
    puts "You slow down to #{@speed} mph."
  end

  def shut_off # this method sets the @speed instance variable to 0 and outputs a message indicating that the car is off
    @speed = 0
    puts "The car is off."
  end
end

my_car = MyCar.new(2024, "blue", "Toyota Corolla") # we create a new instance of the MyCar class and pass in the year, color, and model as arguments

puts my_car.color       # => blue
my_car.color = "red"
puts my_car.color       # => red

puts my_car.year        # => 2024
# my_car.year = 2025    # NoMethodError: year has no setter