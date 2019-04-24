def find_fibonacci_index_by_length(num)
	$first_num = 1
	$second_num = 1
	index = 3
	while (get_next_fib() / (10 ** (num-1)) == 0)
 		index += 1
 	end
 	index
end

def get_next_fib()
	fib = $first_num + $second_num
	$first_num = $second_num
	$second_num = fib
	fib
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847