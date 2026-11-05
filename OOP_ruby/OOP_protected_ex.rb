# Protected Method

class Person # defined a class called Person
  def initialize(age) # the constructor method that takes in a parameter called age and assigns it to the instance variable @age
    @age = age
  end

  def older?(other_person) # we define a method called older? that takes in a parameter called other_person
    age > other_person.age # we compare the age of the current instance with the age of the other_person instance. 
  end

  protected # we defined the age method as protected, which means it can be called from within the class and its subclasses/instances

  attr_reader :age 
end

malory = Person.new(64) # create a new instance of the Person class
sterling = Person.new(42) # create a new instance of the Person class

p malory.older?(sterling)  # we check if malory is older than sterling by calling the older? method
p sterling.older?(malory)  # we check if sterling is older than malory by calling the older? method

# malory.age # => NoMethodError: protected method `age' called for #<Person: @age=64>