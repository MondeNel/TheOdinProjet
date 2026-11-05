# Class Variables

class GoodDog
  @@number_of_dogs = 0 # class variable that keeps track of the number of GoodDog instances created

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new # here we created another instance of the GoodDog class, which increments the @@number_of_dogs class variable by 1

# The code prints 2 on the second call because the class variable 
# @@number_of_dogs shared across all instances is incremented every time a new object is created.
puts GoodDog.total_number_of_dogs   # => 2