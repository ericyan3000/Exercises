CONVERSION_RATE = 60
DEGREE = "\xC2\xB0"

def dms(degree_in)
	degree_out = integer_part(degree_in)
	minute_out = integer_part(decimal_part_convert(degree_in))
	second_out = integer_part(decimal_part_convert(decimal_part_convert(degree_in)))
	%Q[%02d#{DEGREE}%02d'%02d"] %  [degree_out, minute_out, second_out ]
end

def integer_part(number)
	number.floor
end

def decimal_part_convert(number)
	(number - number.floor)*CONVERSION_RATE
end

p dms(30) 
p dms(76.73) 
p dms(254.6) 
p dms(93.034773) 
p dms(0) 
p dms(450.65) 


str = "ruby \'on rails\" "