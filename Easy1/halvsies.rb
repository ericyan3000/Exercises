def halvsies1(arr)
	half_point = arr.size.to_f / 2
	half = [[],[]]
	arr.each_with_index do |x,i|
		temp_i = i < half_point ? 0 : 1
		half[temp_i] << x
	end
	half
end

def halvsies(arr)
	first_half = arr.slice(0, (arr.size/2.0).ceil)
	second_half = arr.slice(first_half.size, arr.size-first_half.size)
	[first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]