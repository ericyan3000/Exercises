=begin
 input: integer
 output: integer
 rule: s[n] = s[n-1] + s[n-2]
      s[0] = s[1] = 1

 data structure: array s

 algorithm: s = [1, 1]
            (n-2).times do loop to populate array s
            compute each new element with s[i-1] + s[i-2]

=end

def fibonacci(n)
  s = [1, 1]
  (n-2).times do |i|
    s << s[i] + s[i+1] 
  end
  s[-1]
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(100_001)