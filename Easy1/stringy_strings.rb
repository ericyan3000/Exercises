def stringy(num, start = 1) 
  number = ""
  (1..num).each do |x|
    if start == 1 
      number << (x.odd? ? "1" : "0")
    elsif start == 0
      number << (x.odd? ? "0" : "1")
    end
  end
  return number
end

puts stringy(6, 0) 
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'