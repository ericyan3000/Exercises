=begin
  input: int, int, int
  output: symbol
  rule: 
    !a>b>c>0 invalid
    b + c > a
    a == b == c equilateral
    a == b or b == c isosceles
    else scalene

  data structure: array
  algorithm:
    1. sort array(a, b, c)
    2. if a < 0 or a + b <= c, then invalid
       elsif a == b and b == c, then equilateral
       elsif a == b or b == c, then isosceles
       else scalene
=end


def triangle(a, b, c) 
  arr = [a, b, c].sort
  return :invalid if arr[0] < 0 || arr[0] + arr[1] <= arr[2]
  return :equilateral if arr[0] == arr[1] && arr[2] == arr[1]
  return :isosceles if arr[0] == arr[1] || arr[2] == arr[1]
  return :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid