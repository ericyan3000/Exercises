DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
	puts(words.split(/\b\s?/).inspect)
	puts(words.split(/\b/).inspect)
  new_words = words.split(/\b\s?/).map do |word|
  	DIGIT_HASH.has_key?(word) ? DIGIT_HASH[word] : word
  end
  new_words.join(" ")
end

p word_to_digit('Please call me at five five five six one one one. Thanks.')