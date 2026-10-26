# Creating hashes

my_hash = {
  "a random word" => "ahoy", # -> "a random = key" "ahoy = value"
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

puts my_hash

# creating a new hash

my_hash = Hash.new
my_hash #=> {}

puts my_hash


# Accessing values
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

# summer is the key and sandals is the value
puts shoes["summer"] #=> "sandals" 

# Adding and changing data
shoes["fall"] = "sneakers"

puts shoes #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}


# Changing the value of the key
shoes["summer"] = "flip-flops"
puts shoes["summer"] #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}


# Removing data
shoes.delete("summer")    #=> "flip-flops"
puts shoes #=> {"winter"=>"boots", "fall"=>"sneakers"}

# Merging two hashes
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
puts hash1.merge(hash2)  #=> { "a" => 100, "b" => 254, "c" => 300 } we overwrite the value of b in the second hash


# Symbols as hash keys
# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

puts american_cars[:chevrolet] # getting the value
puts american_cars["Mustang"] # getting the key wont work because hashes are one way street, you can only look things up by the Keys and never by the Value.
