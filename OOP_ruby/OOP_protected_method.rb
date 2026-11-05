# PROTECTED method

# Define a class called Business
class Business

  # Define a public method that lets this business request
  # the financial summary from another Business instance.
  def review_financials_of(other_business)
    other_business.financial_summary
  end

  # Methods defined below protected can be called within the class
  # and by other instances of the same class.
  # They cannot be called directly from outside the class.

  # Define a protected method that returns this business's
  # financial information.
  def financial_summary
    'Revenue: $500,000; expenses: $350,000'
  end

  protected :financial_summary # this is a way to explicitly declare the financial_summary method protected
end

company = Business.new
accountant_business = Business.new

# Call the public method. It accesses the other Business instance's
# protected financial_summary method and returns its result.
puts company.review_financials_of(accountant_business)
# => "Revenue: $500,000; expenses: $350,000"

# Calling financial_summary directly would raise an error because
# it is protected:
# puts company.financial_summary

# For a simple demonstration of the returned summary, using one instance as we can do is fine; 
# for demonstrating why "protected" differs from "private", use two different instances.