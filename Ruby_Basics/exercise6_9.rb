def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
	loop do
		puts "Please enter a positive or negative integer:"
		number = gets.chomp
		return number if valid_number?(number)
		puts ">> Invalid input. Only non-zero integers are allowed."
	end
end

first = nil
second = nil

loop do
	#first input
	first = read_number

	#second input
	second = read_number
	#start over if not opposite
	break if (first.to_i * second.to_i).negative?
	puts "Sorry. One integer must be positive, one must be negative."
	puts "Please start over."
end

puts "#{first} + #{second} = #{first.to_i + second.to_i}"