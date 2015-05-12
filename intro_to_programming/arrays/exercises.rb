puts "(1)"

arr = [1,3,4,7,9,11]
number = 3

if arr.include? (number)
	puts "#{number} is indeed in the array"
end

puts "(2)"
puts "1. returns 1"
puts 'arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]'

puts "2. returns [1,2,3]"
puts 'arr = [["b"], ["a", [1, 2, 3]]]'

puts "(3)"
puts "arr[2][1]"

puts "(4)"
puts "1. 3 2.undefined method '[]' 3. 8"

puts "(5)"
puts "a = e, b = T, c = A"

puts "(6)"
puts "you can't set the value of an array using a string as key; should be names[3] = 'jody'"

puts "(7)"
def change_array(arr)
	new_arr = []
	arr.each do |n|
		new_arr << n + 2
	end
	return new_arr
end

array = [1,2,3,4,5,6,7,8,9]
puts array.to_s
puts change_array(array).to_s





