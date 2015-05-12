
puts "(1)"
arr = [1,2,3,4,5,6,7,8,9,10]
arr.each{|i| puts i}

puts "(2)"
arr.each do | i |
	if i > 5
		p i
	end
end

puts "(3)"
p arr.select{ |i| i % 2 != 0}

puts "(4)"
arr << 11
arr.unshift(0)
p arr

puts "(5)"
arr.pop
arr << 3
p arr

puts "(6)"
arr.uniq!
p arr

puts "(7)"
puts "Arrays are indexed by numbers and hashes are indexed with associated keys"

puts "(8)"
h1 = {a: 1, b: 2}
h2 = {"a" => 1, "b" => 2}

p h1
p h2

puts "(9)"
p h = {a:1, b:2, c:3, d:4}
p h[:b]
p h[:e] = 5
h.delete_if {|k,v| v < 3.5}
p h 

puts "(10)"
puts "hash values can be arrays and arrays can contain hashes"
hash = {a: [1,2], b: [3,4]}
array = [{a:1, b:2,}, {a:3, b:4}]

p hash
p array

puts "(11)"
puts "ruby-doc.org, because it provides comprehensive documentation of the core api"

puts "(12)"
p contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

p contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fields = [:email, :address, :number]

contacts.each_with_index do |(name, info), index|
	fields.each do |field|
		info[field] = contact_data[index].shift 

	end
end
p contacts

puts "(13)"
puts 'contacts["Joe Smith"][:email]'
puts 'contacts["Sally Johnson"][:number]'

puts "(14)"
puts "see problem 12"

puts "(15)"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr

arr.delete_if{|word| word.start_with?("s")}
p arr
arr.delete_if{|word| word.start_with?("s", "w")}

puts "(16)"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
p a 
a.map {|phrase| phrase.split}
a.flatten
p a

puts "(17)"
puts "These hashes are the same!"


