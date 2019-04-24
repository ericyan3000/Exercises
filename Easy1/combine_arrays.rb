def merge(arr1, arr2)
	arr2.each do |x|
		arr1 << x unless arr1.include?(x)
	end
	arr1
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]