LETTER_BLOCKS = {B:'O', X:'K', D:'Q', N:'A', G:'T', R:'E', F:'S', J:'W', H:'U', V:'I', L:'Y', Z:'M', C:'P'}

def block_word?(word)
	LETTER_BLOCKS.each_pair do |key, val|
		return false if word.upcase.include?(key.to_s) & word.upcase.include?(val)
	end
	return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true