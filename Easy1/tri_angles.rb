def triangle(a, b, c)
	a, b, c = [a, b, c].sort!
	case 
	when a+b+c != 180, a <= 0
		:invalid
	when c > 90
		:obtuse
	when c == 90
		:right
	else
		:acute
	end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid