def reverse!(arr)
	half_ind = arr.size / 2 - 1
	(0..half_ind).each do |ind|
		rev_ind = 0 - ind - 1
		arr[ind], arr[rev_ind] = arr[rev_ind], arr[ind]
	end
	arr
end

def reverse1(arr)
	new_arr = Array.new(0)
	arr.each do |x|
		new_arr.unshift(x)
	end
	new_arr
end

def reverse2(array)
  array.each_with_object([]) { |element, arr| arr.unshift(element) }
end

def reverse(arr)
	arr.inject([]) { |new_arr, obj| new_arr.unshift(obj)}
end



list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true