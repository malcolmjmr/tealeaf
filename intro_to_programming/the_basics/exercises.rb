puts "(1)"

first = "malcolm"
last =  "mason rodriguez"

puts first + " " + last

puts "(2)"
num = 3043
thousands = num / 1000
hundreds = num % 1000 / 100
tens = num % 1000 % 100 / 10
ones = num % 1000 % 100 % 10

puts num
puts "thousands: " + thousands.to_s
puts "hundreds: " + hundreds.to_s
puts "tens: " + tens.to_s
puts "ones: " + ones.to_s

puts "(3)"
movies = {
	:The_Godfather => 1972,
	:The_Dark_Knight => 2008,
	:Pulp_Fiction => 1994,
	:Twelve_Angry_Men => 1957,
	:Fight_Club => 1999
}

puts [:The_Godfather]
puts [:The_Dark_Knight]
puts [:Pulp_Fiction]
puts [:Twelve_Angry_Men]
puts [:Fight_Club]

puts "(4)"
movie_years = [1972,2008,1994,1957,1999]

puts movie_years[0]
puts movie_years[1]
puts movie_years[2]
puts movie_years[3]
puts movie_years[4]


puts "(5)"
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

puts "(6)"
puts 3.2 * 3.2
puts 5.3 * 5.3
puts 2.2 * 2.2

puts "(7)"
puts "there is an open break and no closing bracket"

