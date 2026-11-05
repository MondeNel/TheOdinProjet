# Super

class Animal # we define a parent class called Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal # we define a child class called GoodDog that inherits from the Animal class.
  def speak
    super + " from GoodDog class" # we super keyword to call the speak method from the Animal class and add " from GoodDog class" to the end of the string.
  end
end

sparky = GoodDog.new # we create a new instance of the GoodDog class
puts sparky.speak # we call the speak method from the GoodDog class instance, which calls the speak method from the Animal class and adds " from GoodDog class" to the end of the string. The output will be "Hello! from GoodDog class".


# =========================================================================== #

=begin

1. We call GoodDog.new("brown").
2. This runs GoodDog#initialize(color), where the local variable color holds the string "brown".
3. Inside that method, we call super. Because we didn't use parentheses, Ruby treats this as super(color).
4. The parent class runs Animal#initialize(name). It receives "brown" as the name argument and sets @name = "brown".
5. The code returns to GoodDog, and we then set @color = "brown".

=end 

# we define a parent class called Animal with an attribute accessor for the name instance variable.
class Animal
  attr_accessor :name 

  def initialize(name) 
    @name = name # we define an initialize method that takes in a parameter name and sets the @name instance variable to the value of name.
  end
end

class GoodDog < Animal # we inherit from the Animal (parent) class and create a GoodDog (child) class.
  def initialize(color)
    super
    @color = color # we set the @color instance variable to the value of color.
  end
end

bruno = GoodDog.new("brown") # we create a new instance of the GoodDog class and pass in the color "brown" as an argument. 
# The initialize method from the GoodDog class is called, which calls the initialize method from the Animal class using super and sets the @name instance variable to nil (since we didn't pass in a name). The @color instance variable is set to "brown".
puts bruno.name # => brown 
