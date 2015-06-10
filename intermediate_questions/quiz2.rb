puts "(1)"
munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }
p munsters 

total_age = 0;
munsters.each { |k, v| total_age += v["age"] if v["gender"] == "male" }
p total_age

puts "(2)"
index = 0
munsters.each do |k, v| 
	v[:original_order] = index
	index += 1
end

munsters.each { |k, v| v[:name_length] = k.length }

p munsters

puts "(3)"
munsters.each { |person, attr| puts "#{person} is a #{attr["age"]} year old #{attr["gender"]}" }

puts "(4)"

def tricky_method(a_string_param, an_array_param)
	a_string_param += "rutabega"
	an_array_param += ["rutabega"]
	return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
new_string, new_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{new_string}"
puts "My array looks like this now: #{new_array}"

puts "(5)"
sentence = "Humpty Dumpty sat on a wall"
p sentence
sentence = sentence.split.reverse.join(' ')
p sentence 

puts "(6)"
puts "34"

puts "(7)"
answer7 = "the munsters data has changed as it was as a agrument into the method"
p answer7

puts "(8)"

class String
	def pretty_short_version(length)
		result = self.dup
		if self.length > length
			length -= 1
			words = result.split
			result = words.shift
			result = result[0, length] if result.length > length 
			result += ' ' + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length))
			result += "..."
		end
		result
	end
end
puts "give me a number between 0 and 50"
num = gets.chomp.to_i
p answer7.pretty_short_version(num)








