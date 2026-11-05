class Animal # here we define a parent class called Animal
  def speak
    "Hello!"
  end
end

# We use the < symbol to signify that the GoodDog class is inheriting from the Animal class
class GoodDog < Animal # here we define a child class called GoodDog that inherits from the Animal class
end

class Cat < Animal # here we define a child class called Cat that inherits from the Animal class
end

sparky = GoodDog.new # we create a new instance of the GoodDog class
paws = Cat.new # we create a new instance of the Cat class
puts sparky.speak # we call the speak method from the Animal (Parent) class on the GoodDog (Child) class instance.
puts paws.speak # we call the speak method from the Animal (Parent) class on the GoodDog (Child) class instance.