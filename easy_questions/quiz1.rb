puts "(1)"
puts "[1,2,3]"

puts "(2)"
puts "1. not equal; used to compare values in conditional"
puts "2. turn objects into the opposite of its boolean "
puts "3. a part of the method so you have to look at the implemntation, usually means that the method modifies the variable"
puts "4. ternary operator for if else conditional"
puts "5. a part of the method so you have to look at the implemntation"
puts "6. turns object into its boolean equivalent"

puts "(3)"
advice = "Few things in life are as important as house training your pet dinosaur."
p advice

advice.gsub!("important, urgent")

p advice

puts "(4)"
puts "returns [1,3,4,5]"
puts "returns [2,3,4,5]"

puts "(5)"
(10..100).cover?(42)

puts "(6)"
famous_words = "and seven years ago..."
p famous_words
famous_words.prepend("For score and ")
p famous_words

puts "(7)"
puts "42"

puts "(8)"
puts "flintstones.flatten"

puts "(9)"
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones
p flintstones.assoc("Barney")

puts "(10)"
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
p flintstones
flintstones_hash = {}
flintstones.each_index do |i|
	flintstones_hash[flintstones[i]] = i
end
p flintstones_hash
