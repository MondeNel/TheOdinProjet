# Each Method
numbers = [5, 6, 7, 8]
element = 6 # created a variable with a value assigned to it.
result = false # created a variable with a value assigned to it.

numbers.each do |number| # we use number as the variable block or block param to loop through the array of numbers
  if number == element
    result = true
    break
  end
end

puts result
# => true

element = 3
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

puts result
#=> false


# The include? method
# This method is checking whether a condition is true or false( the word itself is self-explainatory) is something included or not.

numbers = [5, 6, 7, 8]

p numbers.include?(6) # is 6 included within the array
#=> true

p numbers.include?(3) # is 3 included within the array
#=> false
