# Constants 
# Allow us to create a variable that cannot be changed.

class GoodDog
  DOG_YEARS = 7 # this is a constant variable

  attr_accessor :name, :age # attributes for the GoodDog class

  def initialize(n, a)
    self.name = n # name is set to the value of "n" passed in as an argument
    self.age  = a * DOG_YEARS # age is set to the value of "a" multiplied by the constant variable DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age # 4 * 7(constant variable) = 28