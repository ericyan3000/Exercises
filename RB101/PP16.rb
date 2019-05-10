HEXADECIMAL = 'abcdef0123456789'.freeze

def gen(num)
	str = ''
	num.times do 
		str += HEXADECIMAL[rand(16)]
	end
	str
end

def get_uuid()
	gen(8) + '-' + gen(4) + '-' + gen(4) + '-' + gen(4) + '-' + gen(12)
end

p get_uuid