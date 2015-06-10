puts "(1)"
statement = "The Flintstones Rock"
10.times{ |i| puts statement.rjust(statement.length + i) }

puts "(2)"
hash = {}
statement.split('').each do |letter|
	if hash.has_key?(letter)
		hash[letter] += 1
	else
		hash[letter] = 1
	end
end
hash = hash.sort
hash.shift
p hash.to_h

puts "(3)"
puts "you are trying to concat a string with an int. (40 + 2).to_s would get rid of the error"

puts "(4)"
puts "[1,2,3,4]"
puts "[2,3,4]"
puts "[3,4]"
puts "[4]"
puts "[1,2,3,4]"
puts "[1,2,3]"
puts "[1,2]"
puts "[1]"

puts "(5)"
puts "while dividend > 0"
puts "bonus 1: see if the number is divisble by the dividend without remainder"
puts "bonus 2: since the variable divisors is the last line the function returns the array of divisors"

puts "(6)"
puts "in rolling_buffer1 the buffer input is modified in rolling_buffer2 the input array is not modified"

puts "(7)"
puts "limit is not defined within the scope of the method. simply add the variable limit as one of the arguments in the definition"

puts "(8)"
puts "string.split.map { |word| word.downcase.capitalize }.join(' ')"

puts "(9)"
characters = [
    { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume loosely based on a bat" }, 
    { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes" },
    { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone" }, 
    { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman" }
    ]

class String 
	def abbr(length)
		result = self.dup
		if self.length > length
			result = result[0, length - 1]
			result += "..."
		end
		result
	end
end

characters.each{ |character| p character.values.map{|value| value.abbr(32) }.join("    ") }

puts "(10)"
munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |person, attributes|
	age = attributes["age"]
	if age < 18 
		attributes["demographic"] = "kid"
	elsif age >= 18 && age < 65 
		attributes["demographic"] = "adult"
	elsif age >= 65
		attributes["demographic"] = "senior"
	end
end

p munsters

