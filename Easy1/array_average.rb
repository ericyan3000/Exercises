def average(array)
	array.reduce(0) {|sum, x| sum += x } / array.size.to_f
	#array.reduce(&:+).to_f / array.size
end

puts average([1, 5, 87, 45, 8, 7]) 
puts average([9, 47, 23, 95, 16, 52])