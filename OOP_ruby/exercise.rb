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


# ================================================================================================== #
# Define a class named GoodDog.
class GoodDog
  # initialize runs automatically when a new GoodDog object is created.
  # It accepts a name argument.
  def initialize(name)
    # Store the name in an instance variable for this object.
    @name = name
  end

  # Return a greeting that includes this dog's name.
  def speak
    "#{@name} says arf!"
  end
end

# Create a GoodDog object named Sparky.
sparky = GoodDog.new("Sparky")

# Call speak on the sparky object and print the result.
puts sparky.speak

# Create another GoodDog object named Fido.
fido = GoodDog.new("Fido")

# Call speak on the fido object and print the result.
puts fido.speak

# ================================================================================================== #
# getter method.

class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name # this method is used to return the name of the dog, which is stored in the instance variable
    @name
  end

  def speak # this method is used to return a string that includes the name of the dog and the sound it makes
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky") # this creates a new instance of the GoodDog class and assigns it to the variable sparky
puts sparky.speak # this calls the speak method and returns "Sparky says arf!"
puts sparky.get_name # this calls the get_name method and returns the name of the dog, which is "Sparky"

# ================================================================================================== #
# setter method.

class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name # this method is used to return the name of the dog, which is stored in the instance variable
    @name
  end

  def set_name=(name) # this method is used to set the name of the dog
    @name = name
  end

  def speak # this method is used to return a string that includes the name of the dog and the sound it makes
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky") # this creates a new instance of the GoodDog class and assigns it to the variable sparky
puts sparky.speak # this calls the speak method and returns "Sparky says arf!"
puts sparky.get_name # this calls the get_name method and returns the name of the dog, which is "Sparky"
sparky.set_name = "Spartacus" # this calls the set_name = method and sets the name of the dog to "Spartacus" / sparky.set_name = "Spartacus" will return the same
puts sparky.get_name # this calls the get_name method and returns the updated name of the dog, which is "Spartacus"

# ================================================================================================== #
# A different appraoch to getter and setter methods 

class GoodDog
  def initialize(name)
    @name = name
  end

  def name # This was renamed from "get_name"
    @name
  end

  def name=(n) # This was renamed from "set_name="
    @name = n
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"

# ================================================================================================== #
# Ruby provides a shortcut for creating getter and setter methods using the attr_accessor method.

class GoodDog
  attr_accessor :name # this line creates both a getter and setter method for the @name instance variable

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"