=begin
  input: integer
  output: integer
  rule: - iterate rightmost digits, starting position move to right one at a time (0, 1...size-1)
        - rotate leftmost digit to the right.
  test case:

  data structure: integer -> string -> array
  algorithm: A. loop array.legnth()-1.times() with counter n = (0, 1, 2...size-1)
             B. rotate digits[n..-1]
              1. slice digits(str) from array, excluding the first n index digits, n = 0, 1, 2, 3...array.size-1
                a. left_digits, right_digits
                b. rotate the right_digits string rotate(str)
                  i. convert to array
                  ii. store first element by shift
                  iii append first element by push
              2.append the rotated right_digits to left_digits. 
                
=end

def max_rotation(int)
  digits = int.to_s
  (digits.size()-1).times do |n|
    left_digits = digits.slice(0,n)
    right_digits = digits.slice(n..-1)
    right_digits = rotate(right_digits)
    digits = left_digits + right_digits
  end
  digits.to_i
end

def rotate(str)
  arr = str.chars
  temp = arr.shift
  str = arr.push(temp).join()
end

p max_rotation(123)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845