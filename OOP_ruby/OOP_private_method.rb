# PRIVATE method

# Define a class called Business
class Business

  # Define a public method called business_email.
  # It returns the business's email address.
  def business_email
    "ABC_Inc@company.com"
  end

  # Define a public method called request_withdrawal.
  # It takes an amount and calls the private withdraw method
  # with that amount.
  def request_withdrawal(amount)
    withdraw(amount)
  end

  # Methods defined below private are private by default.
  ##### private
  
  # They can be called from within the class, but not directly
  # from outside the class.

  # Define a private method called withdraw.
  # It takes an amount and returns a message that includes the
  # amount withdrawn and the business email address.
  def withdraw(amount)
    "Withdrew R#{amount} from the #{business_email} business account"
  end

  private :withdraw # this is a way to explicitly declare the withdraw method private
end

# Create a new instance of Business.
# No arguments are passed to the constructor to create a new instance of the Business class.
company = Business.new()

# Call the public request_withdrawal method and print its returned message.
puts company.request_withdrawal(100)
# => "Withdrew R100 from the ABC_Inc@company.com business account"

# Calling withdraw directly would raise an error because it is private:
# puts company.withdraw(100)