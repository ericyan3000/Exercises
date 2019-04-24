def triangle(num)
	line = 0
	while line <= num
		puts("#{" "*(num-line)}#{"*"*line}")
		line += 1
	end
end

triangle(5)
triangle(9)