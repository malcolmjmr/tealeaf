
put "(1)"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages
p ages.key?("Spot")

puts "(2)"
ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
total_age = 0;
ages.each do |k,v|
	total += v
end
p total_age

puts "(3)"
ages.delete_if {|person, age| age > 100 }
p ages

puts "(4)"
munsters_description = "The Munsters are creepy in a good way."
p munsters_description
munsters_description.gsup!("M", b"m")
p.munsters_description
munsters_description.swapcase!
p.munsters_description
munsters_description.upcase!
p.munsters_description

puts "(5)"
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
p ages
p additional_ages
ages.merge(additional_ages)
p ages

puts "(6)"
ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
p ages
p ages.values.min

puts "(7)"
advice = "Few things in life are as important as house training your pet dinosaur."
advice.match?("Dino")

puts "(8)"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones
p flintstones.index { |name| name[0,2] == "Be" }

puts "(9)"
p flintstones.map! { |name| name[0,3}] } 

puts "(10)"
p flintstones.map! { |name| name[0,3}] } 









