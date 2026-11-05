# PUBLIC method

# 1. We must define the Customer class first!
class Customer
  # This lets us read the customer's name from the outside
  attr_reader :name

  def initialize(name) # the constructor method that takes in a parameter called name and assigns it to the instance variable @name
    @name = name # we have a setter method here thatv allows us to set the value of the instance variable @name from outside the class.
  end
end

# 2. Define the Business class
class Business
  def business_email
    "ABC_Inc@company.com"
  end
end

# 3. Now this will run perfectly without crashing!
customer = Customer.new("John Doe")
company = Business.new

puts("#{customer.name} would like to contact #{company.business_email}") 
# => "John Doe would like to contact ABC_Inc@company.com"
