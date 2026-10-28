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