def show_multiplicative_average(arr)
	product = arr.inject(1) {|product, x| product *= x}
	format('%.3f', product / arr.size.to_f)
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])
