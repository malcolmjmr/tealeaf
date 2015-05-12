puts "(1)"
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
puts "family: #{family}"

immediate_family = family.select do |k,v|
	k == :sisters || k == :brothers
end

array = immediate_family.values.flatten

p array

puts "(2)"
puts "merge doesn't modify the array or hash while merge! does"

more_family = {grandmas: ["alice", "rachel"]}
puts "additonal family members: #{more_family}"
p family.merge(more_family)
puts "family hash with merge: #{family}"
p family.merge!(more_family)
puts "family hash with merge!: #{family}"

p "(3)"
def get_keys(hash={})
	hash.each do |k,v|
		puts k
	end
end

def get_values(hash={})
	hash.each do |k,v|
		p v
	end
end

def get_keys_and_values(hash={})
	hash.each do |k,v|
		puts "#{k}: #{v}"
	end
end

puts "types of family members"
get_keys(family)
puts "family member names"
get_values(family)
puts "type of family members and names"
get_keys_and_values(family)

puts "(4)"
puts "person[:name]"

puts "(5)"
puts "you can use the has_value? method"

puts "(6)"
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
p words

anagrams = {}

words.each do |word|
	sorted_word = word.split("").sort.join
	if anagrams.has_key?(sorted_word)
		anagrams[sorted_word] << word
	else
		anagrams[sorted_word] = [word]
	end
end

anagrams.each{|k,v| p v}

puts "(7)"
puts "my_hash is created with a symbol while my_hash2 is created with a string"

puts "(8)"
puts "B"

