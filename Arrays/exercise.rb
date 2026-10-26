# a simple array

num_array = [1, 2, 3, 4, 5]

str_array = ["This", "is", "a", "small", "array"]

puts num_array
puts str_array


# Accessing elements in an Array
puts str_array[0] # -> "This"
puts str_array[-1] # -> "array"


# Ruby provides the #first and #last array methods
puts str_array.first # -> "This"
puts str_array.last # -> "array"

# also allows you to access some elements together
puts str_array.first(3).to_s

# Shift and Pop
puts str_array.shift

