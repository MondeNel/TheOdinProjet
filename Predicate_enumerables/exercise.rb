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


# The include? method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.select { |friend| friend != 'Brian' }

p invited_list.include?('Brian')
#=> false





# The any? method
# This method checks if any of the things are true or false

numbers = [21, 42, 303, 499, 550, 811]
result = false

numbers.each do |number|
  if number > 500
    result = true
    break
  end
end

p result
#=> true

numbers = [21, 42, 303, 499, 550, 811]
result = false

numbers.each do |number|
  if number < 20
    result = true
    break
  end
end

p result
#=> false




# The any? method in action

numbers = [21, 42, 303, 499, 550, 811]

p(numbers.any? { |number| number > 500 })
#=> true

p(numbers.any? { |number| number < 20 })
#=> false


# The all? method
# The all? method is also fairly intuitive. It only returns true if all the elements in your array or hash match the 
# condition you set within the block; otherwise, it will return false.

fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false

fruits.each do |fruit|
  if fruit.length > 3
    matches.push(fruit)
  end
end

result = fruits.length == matches.length
p result
#=> true

fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false

fruits.each do |fruit|
  if fruit.length > 6
    matches.push(fruit)
  end
end

result = fruits.length == matches.length
p result
#=> false


# The all? method in action
fruits = ["apple", "banana", "strawberry", "pineapple"]

p (fruits.all? { |fruit| fruit.length > 3 })
#=> true

p (fruits.all? { |fruit| fruit.length > 6 })
#=> false



# The none? method
# As you might expect, #none? returns true only if the condition in the block matches none of the elements in your array or hash; 
# otherwise, it returns false.


fruits = ["apple", "banana", "strawberry", "pineapple"]
result = false

fruits.each do |fruit|
  if fruit.length > 10 # we check here the length of chaaracters for each word in the array is it more than 10 characters.
    result = false
    break
  end

  result = true
end

p result
#=> true

fruits = ["apple", "banana", "strawberry", "pineapple"]
result = false

fruits.each do |fruit|
  if fruit.length > 6 # we check here the length of chaaracters for each word in the array is it more than 6 characters.
    result = false
    break
  end

  result = true
end

p result
#=> false


# none? method in action
# 

fruits = ["apple", "banana", "strawberry", "pineapple"]

p(fruits.none? { |fruit| fruit.length > 10 }) # the param block/variable block first iterate through the array
# fruit.length checks each character of the fruits within the array and matches it with the numbver 10
#=> true

p(fruits.none? { |fruit| fruit.length > 6 }) # the param block/variable block first iterate through the array
# fruit.length checks each character of the fruits within the array and matches it with the numbver 6
#=> false



# The one? method
# Ruby has methods to check whether all, any, or none of the elements in an array match a condition. 
# But what if you need exactly one match - no more, no less? Ruby has you covered with the #one? method, 
# which returns true if the block evaluates to true for exactly one element.

fruits = ["apple", "banana", "strawberry", "pineapple"]

p(fruits.one? { |fruit| fruit.length > 9 }) # this condition check if there is a fruit with characters that have 9 chars in it, which is "pineapple"
#=> true

p(fruits.one? { |fruit| fruit.length > 2 }) # there is no fruit in the array that contains 2 chars
#=> false
