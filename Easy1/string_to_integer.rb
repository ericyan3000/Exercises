DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def sign?(str)
  str[0] == '-' || str[0] == "+"
end

def string_to_signed_integer(str)
  multiplier = 1
  sum = 0
  if sign?(str)
    op_sign = str[0]
    str.slice!(0)
  end
  str.chars.reverse.map do |digit|
    sum += DIGITS[digit] * multiplier
    multiplier *= 10
  end
  sum = 0-sum if op_sign == '-'
  sum
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100