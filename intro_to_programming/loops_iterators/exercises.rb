puts "(1)"
puts "[1,2,3,4,5]"

puts "(2)"

input = ""

until input == "STOP"
	puts "to exit enter 'STOP'"
	input = gets.chomp
end

puts "(3)"
array = ["hello", "world","yay"]
array.each_with_index do |word, index|
	puts "#{index + 1}. #{word}"
end

puts "(4)"

def countDown(num)
  if num >= 0
  	puts num
  	countDown(num - 1)
  end
end

puts "enter a number greater than zero"
number = gets.chomp.to_i

countDown(number)