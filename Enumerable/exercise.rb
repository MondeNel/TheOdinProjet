# Life before enumerables

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

puts invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]



# Select method
# with select we use a curly brace and also it selects each item within the array

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }

 puts friends #=> ["Sharon", "Leo", "Leila", "Arun"]


# Reject method
# with reject we use a curly brace and also it selects each item within the array

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.reject { |friend| friend == 'Brian' }
puts friends #=> ["Sharon", "Leo", "Leila", "Arun"]


# The each method
# Calling #each on an array will iterate through that array and will yield each element to a code block, where a task can be performed

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

# friends is the array that contains strings of your friends’ names.
# .each is the enumerable method you are calling on your friends array.

# { |friend| puts "Hello, " + friend } is a block, and the code inside this block is run for each element in your array. 
# Because we have 5 friends in our array, this block will be run 5 times, once with each of the 5 elements.

# Within the block, you’ll notice that we have |friend|, which is known as a block variable. 
# This is the element from your array that the block is currently iterating over. This could be named anything like "x" even



# Map method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
new_update = [] # -> here we have to create a new array which would allow map to write a new array with upcase letters

friends.map { |friend| new_update.push(friend.upcase) } # 
puts new_update #=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


# Map method
salaries = [1200, 1500, 1100, 1800]
savings = []

salaries.map { |salary| savings.push(salary - 700) }
puts savings#=> [500, 800, 400, 1100]




# The Reduce Method
# The general idea is that it takes an array or hash and reduces it down to a single object.
my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

puts sum #=> 26


my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number } # the sum in the pipe |sum| is the accumulator, that stores the value of the first iteration
#                                                  and adds the other iterations to it.
puts sum #=> 26



# Bang map! method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }

# Now when we call our original friends array again, it returns the changed values from the #map! method. 
# Instead of returning a new array, #map! modified our original array.
puts friends





# Return values of enumerables

friends = ['Sharon1', 'Leo2', 'Leila3', 'Brian4', 'Arun5']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

puts friends #=> ['Sharon1', 'Leo'2, 'Leila3', 'Brian4', 'Arun5']

puts invited_friends(friends) #=> ["Sharon1", "Leo2", "Leila3", "Arun4"]
