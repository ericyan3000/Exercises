def rotate_array1(arr)
  new_arr = arr.dup
  first_ele = new_arr.shift
  new_arr.push(first_ele)
end

def rotate_array(arr)
  arr[1..-1].push(arr[0])
end

def rotate_rightmost_digits(num, count)
  number_arr = num.digits.reverse
  last_digits = number_arr.pop(count)
  new_last_digits = rotate_array(last_digits)
  number_arr = number_arr.push(new_last_digits).join.to_i
end

def max_rotation(num)
  1.upto(num.to_s.length).reverse_each do |i|
    num = rotate_rightmost_digits(num, i)
  end
  num
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
 
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845