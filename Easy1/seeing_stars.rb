def star(n)
	puts (" ")
	1.upto(n/2).each { |x| draw(x, n) }
	puts("*"*n)
	(n/2).downto(1).each {|x| draw(x, n)}
end

def draw(line, n)
	puts(" "*(line-1) + "*" + " "*((n-3)/2-line+1) + "*" + " "*((n-3)/2-line+1) + "*" + " "*(line-1))
end
	star(7)
	star(9)