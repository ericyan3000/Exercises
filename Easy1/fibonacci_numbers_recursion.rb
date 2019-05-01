def fibonacci(num)
	return 1 if num <= 2
	fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

def fib_procedural(num)
	fib_arr = []
	0.upto(num-1) { |i|
		fib_arr[i] = i <= 1 ? 1 : fib_arr[i-1] + fib_arr[i-2]
	}
	fib_arr[-1]
end

p fib_procedural(20) == 6765
p fib_procedural(100) == 354224848179261915075
#p fibonacci(100_001) # => 4202692702.....8285979669707537501

def fibonacci_last(num)
	first, last = [1, 1]
	3.upto(num) do
		first, last = [last, (first+last)%10]
	end
	last
end

p fibonacci_last(1)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(2)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(3)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(4)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(5) # -> 3 (this is a 208989 digit number)
p fibonacci_last(6) # -> 4
p fibonacci_last(7) # -> 4
p fibonacci_last(8) # -> 4
p fibonacci_last(9) # -> 4
p fibonacci_last(10) # -> 4
p fibonacci_last(11) # -> 4
p fibonacci_last(12) # -> 4
p fibonacci_last(13) # -> 4
p fibonacci_last(14) # -> 4
p fibonacci_last(15) # -> 4
p fibonacci_last(16) # -> 4
p fibonacci_last(17) # -> 4
p fibonacci_last(18) # -> 4
p fibonacci_last(19) # -> 4
p fibonacci_last(20) # -> 4