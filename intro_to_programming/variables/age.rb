puts "How old are you?"

age = gets.chomp.to_i

years = [10,20,30,40]

for year in years do
	new_age = age + year
	puts "In #{year} years you will be: #{new_age}"
end