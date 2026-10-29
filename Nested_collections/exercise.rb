# Nested Arrays

test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# ===================================================================== #

# accessing elements
p(teacher_mailboxes[0][0]) # check the first array of index [0] within mailboxes,
# the second check equal to the index on that array which is index => "Adams"

p(teacher_mailboxes[1][0]) # check the second array of index [1] within mailboxes,
# the second check equal to the index on that array which is index [0] => "Jones"

p(teacher_mailboxes[2][0]) # checl the third array of index [2] within the mailboxes,
# the second check equal to the index on that array which is index [0] => "Perez"

# ===================================================================== #

# accesing negative indexes

p(teacher_mailboxes[0][-1]) #=> "Davis" the first array of the nested array with last index of the array [-1]
p(teacher_mailboxes[-1][0]) #=> "Perez" the last array of the nested array with index 0.
p(teacher_mailboxes[-1][-2]) #=> "Smith" the last array of the nested array with the second last index of the array [-2]

# ===================================================================== #

#dig method
# extracts nested elements by navigating through a path of integer indexes, 
# returning nil if any intermediate step does not exist instead of raising a NoMethodError
p(teacher_mailboxes.dig(3, 0)) #=> checks first if there is a 3rd index array and try to access it and returns nil rather.
p(teacher_mailboxes.dig(0, 4)) #=> checks first if there is a 0 index array and try to access it and checks if the index contain a 4th element within that array.

# ===================================================================== #

# Creating a new nested array

nested_arrays = Array.new(3) { Array.new(2) }
# Array.new(3) creates one outer array that contains 3 slots.
# Array.new(2) defines the number of elements (slots) inside each inner array, which translates directly to 2 index positions: 0 and 1.

=begin
[
  [nil, nil],  # Slot 1 (An array of 2 elements)
  [nil, nil],  # Slot 2 (An array of 2 elements)
  [nil, nil]   # Slot 3 (An array of 2 elements)
]
=end

p nested_arrays[0][0] = 1000
# the first [0] = to the first array which is the outer array,
# the second [0] = to second array which is the inner array and assign that value to the index of the second array
p nested_arrays
#=> [[1000, nil], [nil, nil], [nil, nil]]

# ===================================================================== #

# 2. Append a brand new array to the end using "<<"
test_scores << [100, 99, 98, 97] 
puts "After appending new array:"
p test_scores 
# Output includes the 5th array at index 4

# 3. Push 100 into the very first nested array (index 0)
test_scores[0].push(100) 
puts "\nAfter pushing 100 to index 0:"
p test_scores[0] 
# Output: [97, 76, 79, 93, 100]

# 4. Pop the last array completely out of test_scores
popped_array = test_scores.pop 
puts "\nThis was just removed from the main array:"
p popped_array 
# Output: [100, 99, 98, 97]

# 5. Pop the '100' we added to the first array to restore it to original
test_scores[0].pop 
puts "\nFinal state (restored to original 4x4 array):"
p test_scores

# ===================================================================== #

# Mutable nested collections
mutable = Array.new(3, Array.new(2))
# Array.new(3) This would create a new nested array with 3 arrays within the outer array
# Array.new(2) that would create two slots within the nested arrays
# This create a shared reference:
# 1. Object Creation ->	Evaluates the inner array once.
# 2. Memory Blueprint -> 	3 slots pointing to one shared object.
# 3. Modification ->	Changing one sub-array affects all of them.

=begin
The outcome result:
[
  [nil, nil],
  [nil, nil],
  [nil, nil]
]
=end

mutable[0][0] = 1000 # now we overwrite the first index of each array in the nested array

=begin
The outcome result:
[
  [1000, nil],
  [1000, nil],
  [1000, nil]
]
=end

p mutable

# ===================================================================== #

# Mutable Array with Independent References
nested_arrays = Array.new(3) { Array.new(2) }
# 1. Each { Array.new(2) } block creates a new inner array. This means all three inner arrays are independent objects. When you modify one, the others stay the same.
# 2. # Array.new(3) This would create a new nested array with 3 arrays within the outer array.

=begin
The outcome result:
[
  [nil, nil],
  [nil, nil],
  [nil, nil]
]
=end

nested_arrays[0][0] = 1000
# 1. we target the first array of the nested array [0]
# 2. we assign a value to the first index of that first array [0] = 1000

p nested_arrays

=begin
The outcome result:
[
  [1000, nil],
  [nil, nil],
  [nil, nil]
]
=end

# ===================================================================== #

# iterating over nested arrays

# Go through the outer array, one row at a time.
# each_with_index gives us both the current row and its position.
teacher_mailboxes.each_with_index do |row, row_index|
  # row is one inner array of mailbox names.
  # row_index is that row's position in teacher_mailboxes, starting at 0.

  puts "Row:#{row_index} = #{row}"
end

# each_with_index returns the original teacher_mailboxes array


# Nested hashes
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

# Accessing data: Accessing a specific element in a nested hash is very similar to a nested array. 
# It is done by calling hash[:x][:y], where :x is the key of the hash and :y is the key of the nested hash.
p vehicles[:alice][:year]
# :alice is the key of the hash and :year is the key of the nested hash # -> 2019

p vehicles[:blake][:make] # -> Volkswagen

p vehicles[:caleb][:model] # -> Accord


# access a key in a nonexistent nested hash by using the #dig method

# vehicles[:zoe][:year] #=> NoMethodError - because there is no 'zoe' within the nested hash

vehicles.dig(:zoe, :year) #=> nil

vehicles[:alice][:color] #=> nil - because there is no color key or value

vehicles.dig(:alice, :color) #=> nil - because there is no color key or value


# Adding data

vehicles[:dave] = { year: 2021, make: "Ford", model: "Escape" }
p vehicles[:dave] # => {:year=>2021, :make=>"Ford", :model=>"Escape"}
p vehicles        # => includes :dave and the other vehicles

vehicles[:dave][:color] = "red" # this would add towards the nested array an element into that key of "dave" by adding another key with a value # rubocop:disable Layout/LineLength

p vehicles
# :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}


# Deleting and removing data

vehicles.delete(:blake) #=> {:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}
p vehicles


# you can delete a key as well 
vehicles[:dave].delete(:color) #=> we deleted the key color in dave 
p vehicles

# Different helpful methods

# #select
vehicles.select { |_name, data| data[:year] >= 2020 } # select check which of the vehicles are greater or equal to 2020 year model
# name - targets the outer hash key (alice, caleb, dave) etc...
# data - targets the is the value for that outer key, it would look ar {year, make, model} etc...
# vehicles #=> {:caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}

# shorter version
p(vehicles.collect { |name, data| name if data[:year] >= 2020 })
# name = outer hash key, in this case (alice, dave, caleb)
# data = targets the values of those outer keys (year, model, make)
# name if data[:year] >= 2020 = it as to peovide the name of the data of that key which is greater or equal to 2020
# returns => [nil, :caleb, :dave]