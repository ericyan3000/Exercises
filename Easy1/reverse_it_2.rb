def reverse_words (string)
	words = string.split
	words.each do |word|
		next if word.length < 5
		words[words.index(word)] =  word.chars.reverse.join("")
	end
	words.join(" ")

	words = []
	string.split.each do |word|
		word.reverse! if word.length >= 5
		words.push (word)
	end
	words.join(" ")

end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS