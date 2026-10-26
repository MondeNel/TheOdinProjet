# 1
# haave to state a variable first
room_tidy = true

if room_tidy == true
  puts "I can play video games"
end

# 2
if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end

# 3 
# haave to state a variable first
attack_by_land = false

if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end


# Boolean logic
5 == 5 #=> true
5 == 6 #=> false

5 != 7 #=> true
5 != 5 #=> false

7 > 5 #=> true
5 > 7 #=> false

5 < 7 #=> true
7 < 5 #=> false

7 >= 7 #=> true
7 >= 5 #=> true

5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true

a = 5
b = 5
a.equal?(b) #=> true


# Logical operators
if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end

# This can also be written as
if 1 < 2 and 5 < 6
  puts "Party at Kevin's!"
end

if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
  puts "Party at Kevin's!"
end

# This can also be written as
if 10 < 2 or 5 < 6
  puts "Party at Kevin's!"
end

# Case statements
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false # rubocop:disable Lint/UselessAssignment
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end


# Unless statements
age = 19
puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts 'Down with that sort of thing.'
else
  puts "Careful now!"
end

# Ternary operator
age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."
