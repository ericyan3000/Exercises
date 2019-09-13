=begin
input: integer n
output: integer s[n-1]
rule: s[n] = s[n-1] + s[n-2]
      s[0] = s[1] = 1

data structure: integer

algorithm: recursive
           edge: n == 1 or n == 0, return 1
           fibonacci(n) = fibonacci(n-1) + fibonacci(n-2)

  
=end


def fibonacci(n)
  n <= 2 ? 1 : fibonacci(n-1) + fibonacci(n-2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765