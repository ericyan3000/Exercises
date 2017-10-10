def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

firstNumber = nil
secondNumber = nil

loop do
puts "Enter the first number"
firstNumber = gets.chomp
break if valid_number?(firstNumber)
puts "Please enter an integer."
end

loop do
puts "Enter the second integer (nonzero)"
secondNumber = gets.chomp
break if valid_number?(secondNumber) && secondNumber.to_i != 0
puts "Please enter an integer."
end

puts "#{firstNumber} / #{secondNumber} is #{firstNumber.to_i / secondNumber.to_i}"