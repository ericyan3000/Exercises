def calculate_bonus(salary, bonus)
	salary * (bonus ? 0.5 : 0)
  #bonus ? salary * 0.5 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000