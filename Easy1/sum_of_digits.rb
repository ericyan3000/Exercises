## recursion method
=begin
def sum(integer)
	recursion_caller(integer, 0)
end

def recursion_caller(integer, sum)
  if integer < 10
    return sum + integer
  else
    sum += integer % 10
    recursion_caller(integer / 10, sum)
  end
end
=end

def sum(integer)
  integer.to_s.chars.map(&:to_i).reduce(&:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45