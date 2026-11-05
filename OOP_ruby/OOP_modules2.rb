# More Modules (Naming spaces)

module Mammal # we define a global module called Mammal
  class Dog # we define a class called Dog inside the Mammal module
    def speak(sound) # we define a method called speak that takes in a parameter called sound
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

# We call classes in a module by appending the class name to the module name with two colons(::)
buddy = Mammal::Dog.new # we create a new instance of the Dog class inside the Mammal module
kitty = Mammal::Cat.new # we create a new instance of the Cat class inside the Mammal module
buddy.speak('Arf!') # we call the speak method from the Dog class instance and pass in the string 'Arf!' as an argument. 
kitty.say_name('kitty') # we call the say_name method from the Cat class instance and pass in the string 'kitty' as an argument.



# =========================================================================== #

# Modules as Container

module Conversions # we define a global module called Conversions
  def self.farenheit_to_celsius(num) # we define a method called farenheit_to_celsius that takes in a parameter called num and converts it from farenheit to celsius
    (num - 32) * 5 / 9
  end
end

# # we call the farenheit_to_celsius method from the Conversions module and pass in the integer 100 as an argument. The method converts 100 farenheit to celsius and returns the value 37.77777777777778, 
# which is then assigned to the variable value and printed to the console.
p(value = Conversions.farenheit_to_celsius(100)) 