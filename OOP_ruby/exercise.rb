# Define a class named GoodDog.
class GoodDog
  # initialize is called automatically when a new GoodDog object is created.
  # It accepts a name argument.
  def initialize(name)
    # Store the name in an instance variable so this object can use it.
    @name = name
  end

  # Define an instance method that returns a sound.
  def speak
    "Arf!"
  end
end

# Create a GoodDog object, passing "Sparky" to initialize.
sparky = GoodDog.new("Sparky")

# Call the speak method on the sparky object and print the returned string.
puts sparky.speak

# created a new instance of the class GoodDog here again
fido = GoodDog.new("Fido")

# call the speak method on the Fido object and print the returned string of the class GoodDog
puts fido.speak 