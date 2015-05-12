puts "(1)"

def greating(name)
	puts "Welcome, #{name}"
end


puts "(2)"
puts "2, nil, Joe, four, nothing"

puts "(3)"
def multiply(a, b)
	a * b
end

puts "Enter a number"
num1 = gets.chomp.to_i

puts "Enter another"
num2 = gets.chomp.to_i

product = multiply(num1, num2)
puts "The product is #{product}"

puts "(4)"
puts "nothing"

puts "(5)"
def scream(words)
	words = words + "!!!!"
	puts words 
end

puts "Enter a something"
words = gets.chomp

scream(words)

puts "the function returns nil since puts is used in the last line"

puts "(6)"
puts "you are only providing one argument to a method that requires two"
