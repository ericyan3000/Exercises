def crunch(str)
	result = ''
	str.chars.each do |x|
		result << x if x != result[-1]
	end
	result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''