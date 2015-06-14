# ask for first number
puts "First number"
num1 = gets.chomp

# ask for opperation
puts "Operaion: 1) add; 2) subtract; 3) multiply; 4) divide" 
op = gets.chomp

# ask for second number
puts "Second number"
num2 = gets.chomp

# provide answer 
case op
	when '1'
		result = num1.to_i + num2.to_i
	when '2'
		result = num1.to_i - num2.to_i
	when '3'
		result = num1.to_i * num2.to_i
	when '4'
		result = num1.to_i / num2.to_i
	else
		result = "Unable to perform operation. Please try again."
end

puts "Result: #{result}"


