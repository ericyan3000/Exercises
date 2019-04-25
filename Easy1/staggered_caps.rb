def staggered_case1(str)
	result = str.chars.each_with_index {|char,i|
		i.odd? ? char.downcase : char.upcase
	}.join
end

def staggered_case(str)
	upper_case = false
	result = str.chars.map {|char|
		if char =~ /[a-z]/i
			upper_case = upper_case ? false : true
		end
		upper_case ? char.upcase : char.downcase
	}.join
end

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'