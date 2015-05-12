puts "(1)"
puts "1. false, 2. false, 3. false, 4. true, 5. true"

puts "(2)"
def caps(str)
	if str.length > 10
		str.upcase
	else
		str
	end
end

puts "Enter a string shorter than 10 characters"
str = gets.chomp
puts caps(str)

puts "Enter a string longer than 10 characters"
str = gets.chomp
puts caps(str)

puts "(3)"
def getInterval(num)
	if (num > 0) && (num <= 50)
		puts "the number is between 0 and 50"
	elsif (num > 50) && (num <= 100)
		puts "the number is between 50 and 100"
	elsif (num > 100)
		puts "the number is greater than 100"
	end
end

puts "enter a number between 0 and 100"
number = gets.chomp.to_i
getInterval(number)

puts "(4)"
puts "1. false, 2. Did you get it right? 3. Alright now! "

puts "(5)"
def negativeNum
  puts "the number is negativeNum"
end
def moreThan0
	puts "the number is between 0 and 50"
end

def moreThan50
	puts "the number is between 50 and 100"
end

def moreThan100
	puts "the number is greater than 100"
end

def getInterval2(num)
	case 
	when num < 0 
		negativeNum
	when num <= 50
		moreThan0
	when num <= 100
		moreThan50
	else 
		moreThan100
	end
end

puts "Enter a number between 0 and 100"
number = gets.chomp.to_i

getInterval2

puts "(6)"
puts "the if else statement needs an 'end' to close the statement"




