class Animal # we define a parent class called Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal # we define a child class called GoodDog that inherits from the Animal class
  attr_accessor :name

  def initialize(n) # we define an initialize method that takes in a parameter n and sets the name of the dog to the value of n
    self.name = n
  end

  def speak # we define a speak method that overrides the speak method in the Animal class and returns a string with the dog's name and "says arf!"
    "#{self.name} says arf!"
  end
end

class Cat < Animal # we define a child class called Cat that inherits from the Animal class
end

sparky = GoodDog.new("Sparky") # we create a new instance of the GoodDog class and pass in the name "Sparky" as an argument
paws = Cat.new # we create a new instance of the Cat class

puts sparky.speak # we call the speak method from the GoodDog (Child) class instance, which overrides the speak method in the Animal (Parent) class and returns a string with the dog's name and "says arf!"
puts paws.speak  # we call the speak method from the Cat (Child) class instance, which inherits the speak method from the Animal (Parent) class and returns "Hello!"