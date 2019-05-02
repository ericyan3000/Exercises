TRIANGLE_NAME = [:equilateral, :isosceles, :scalene, :invalid].freeze

def triangle(a,b,c)
	side = [a,b,c].sort!
	if side[0]+side[1] <= side[2]
		return TRIANGLE_NAME[3]
	elsif (side[0] == side[1] && side[1] == side[2])
		return TRIANGLE_NAME[0]
	elsif (side[0] == side[1] || side[1] == side[2])
		return TRIANGLE_NAME[1]
	else
		return TRIANGLE_NAME[2]		
	end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid