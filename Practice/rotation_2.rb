/
- input: integer m, integer n
- output: integer
- rule: rotate the last n digits of number m

data: array
algorithm: - convert m to array of char
           - delete_at the last n position digit, store as digit
           - append digit to the end

/

def rotate_rightmost_digits(m, n)
  digits = m.to_s.chars
  digit = digits.delete_at(-n)
  ldigits.push(digit).join().to_i

end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917