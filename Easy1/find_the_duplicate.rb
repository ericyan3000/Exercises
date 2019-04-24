def find_dup(arr)
	arr.inject() do |val, x|
		puts("#{x} has index of forward #{arr.index(x)} and reverse #{arr.rindex(x)}")
		val = x unless arr.index(x) == arr.rindex(x)
	end
end

p find_dup([1, 5, 1, 2]) == 1  # => false
p find_dup([73, 1, 2, 3, 4, 5, 73]) == 73  # => true
