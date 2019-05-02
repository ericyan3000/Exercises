def featured(num)
	loop do
		num += 1
		break if num > 10_000_000_000 or is_featured?(num)
	end
	
	if num > 10_000_000_000
		"There is no possible featured number."
	else
		num
	end
end

def is_featured?(num)
	return false if num % 7 != 0
	return false if num.even?
	return false if num.digits != num.digits.uniq
	return true
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)