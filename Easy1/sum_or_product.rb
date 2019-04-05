def prompt(msg) 
  puts("=> #{msg}")
end

def get_sum(num) 
  sum = 0
  (1..num).each { |x| sum += x}
  sum
end

def get_product(num) 
  product = 1
  (1..num).each { |x| product *= x }
  product
end


prompt("Please enter an integer greater than 0:")
num1 = gets.chomp().to_i
prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp
case choice.downcase
when 's' then
  prompt("The sum of the integers between 1 and #{num1} is #{get_sum(num1)}.")
when 'p' then
  prompt("The product of the integers between 1 and #{num1} is #{get_product(num1)}.")
end
