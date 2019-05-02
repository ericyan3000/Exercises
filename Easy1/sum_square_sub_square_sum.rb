def sum_square_difference(num)
	square_sum(num) - sum_square(num)
end

def sum_square(num)
	1.upto(num).inject(0) {|sum, n| sum += n**2}
end

def square_sum(num)
	1.upto(num).inject(0) {|sum, n| sum += n}**2
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150