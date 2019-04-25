def multiply_list(arr1, arr2)
	product_list = []
	arr1.each_index do |i|
		product_list[i] = arr1[i] * arr2[i]
	end
	product_list
end

def multiply_list(arr1, arr2)
	arr1.zip(arr2).map {|arr| arr.inject(1) {|product, x| product *= x}}
end

p multiply_list([3, 5, 7], [9, 10, 11])