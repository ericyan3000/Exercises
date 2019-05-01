def diamond(n)
	1.step(by: 2, to:n-1) do |i|
		#puts("*"*i)
		space_count = (n-i)/2
		puts(" "*space_count+"*"*i+" "*space_count)
	end
	n.step(by:-2, to:1) do |x|
		
		space_count = (n-x)/2
		puts(" "*space_count+"*"*x+" "*space_count)
	end
end

diamond(1)
diamond(3)
diamond(9)