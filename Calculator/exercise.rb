puts "Enter your first number: "
num1 = Float(gets.chomp) 

puts "Select your operator (+, -, *, /): "
ops = gets.chomp

puts "Enter your second number: "
num2 = Float(gets.chomp) 

if ops == '+'
  puts num1 + num2
elsif ops == '-'
  puts num1 - num2
elsif ops == '/'
  puts num1 / num2
elsif ops == '*'
  puts num1 * num2
else
  puts 'Invalid operator'
end
