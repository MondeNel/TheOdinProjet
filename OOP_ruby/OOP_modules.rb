# Modules 

module Swimmable # we define a global module
  def swim
    "I'm swimming!"
  end
end

class Animal; end # created a parent class

class Fish < Animal # inherit from the parent class 
  include Swimmable # mixing in Swimmable module
end

class Mammal < Animal # inherit from the parent class
end

class Cat < Mammal # inherit from the parent class 
end

class Dog < Mammal # inherit ferom the parent class 
  include Swimmable # mixing in Swimmable module
end

sparky = Dog.new # create an instance of the Dog class
neemo  = Fish.new # create an instance of the Fish class
paws   = Cat.new # create an instance of the Cat class

p sparky.swim # => I'm swimming! because the Dog class inherits the swimnmable module 
p neemo.swim # => I'm swimming! because the Cat class inherits the swimnmable module 
p paws.swim # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308> Cat doesn't inherit the module Swimmable