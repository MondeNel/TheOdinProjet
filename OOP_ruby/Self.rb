# Self 

class GoodDog
  attr_accessor :name, :height, :weight # attributes for the GoodDog class

  def initialize(n, h, w)
    self.name   = n # we use the self keyword to call the name= method and set the name of the dog to the value of "n" passed in as an argument.
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall." # we use the self keyword to call the name, weight, and height methods and return a string with the dog's name, weight, and height.
  end

  def what_is_self # this method returns the current instance of the GoodDog class
    self # self refers to the current instance of the GoodDog class. In this case, it returns the object that called the what_is_self method.
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
# => #<GoodDog:0x007f83ac062b38 @name="Sparky", @height="12 inches", @weight="10 lbs">