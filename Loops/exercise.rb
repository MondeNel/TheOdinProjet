# Loops
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end


# while loop
i = 0
# we declare a variable i and set it to 0. Then we use a while loop to print the value of i and increment it by 1 until it reaches 10.
while i < 10
    # we check if i is less than 10, and if it is, we print the value of i and increment it by 1. Once i reaches 10, the loop will stop.
  puts "i is #{i}"
  i += 1
end

# Until loop
i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end


until gets.chomp == "yes" do
  puts "Do you like Pizza?"
end

# Loop and ranges
for i in 0..5
  puts "#{i} zombies incoming!"
end

# Times Loop
5.times do
  puts "Hello, world!"
end

5.times do |number|
  puts "Alternative fact number #{number}"
end


# Upto and Downto loops
5.upto(10) { |num| puts "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| puts "#{num} " }   #=> 10 9 8 7 6 5
