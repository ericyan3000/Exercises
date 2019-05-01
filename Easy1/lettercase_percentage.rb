def letter_percentages(str)
	result = {lowercase:0, uppercase:0, neither:0}
	str.chars.each do |x|
		if x.upcase == x.downcase
			result[:neither] += 1
		elsif x.upcase == x
			result[:uppercase] += 1
		else
			result[:lowercase] += 1
		end
	end
	total = str.length.to_f
	result.each_pair {|key, val|
		result[key] = (val / total)*100.round(1)
	}
	result
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }