=begin
 input: integer
 output: integer
 rule: s[n] = (s[n-1] + s[n-2]) % 10
      s[0] = s[1] = 1

 data structure: array s

 algorithm: s = [1, 1]
            (n-2).times do loop to populate array s
            compute each new element with (s[i-1] + s[i-2]) % 10

=end


def fibonacci_last(n)
  s = [1, 1]
  (n-2).times do |i|
    s << (s[i] + s[i+1])  % 10
  end
  s[-1]
end

p fibonacci_last(3)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(4)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(5)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(6)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(7) # -> 3 (this is a 208989 digit number)
p fibonacci_last(8)
p fibonacci_last(9)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(10)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(11)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(12)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(13) # -> 3 (this is a 208989 digit number)
p fibonacci_last(14)
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(16)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(17)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(18)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(19) # -> 3 (this is a 208989 digit number)
p fibonacci_last(20)