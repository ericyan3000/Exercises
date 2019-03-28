# ask user for two numbers
# ask user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'substracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
end

number1 = ''
number2 = ''
operator = ''

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}:")

loop do
  loop do
    prompt("Enter the first number:")
    number1 = gets().chomp().to_i()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  loop do
    prompt("Enter the second number:")
    number2 = gets().chomp().to_i()

    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  operator_msg = <<-MSG
    Enter the operation to perform.
    1)add
    2)substract
    3)multiply
    4)divide"
  MSG

  loop do
    prompt(operator_msg)
    operator = gets().chomp()
    %w(1 2 3 4).include?(operator) ? break : nil
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when "1"
              number1 + number2
            when "2"
              number1 - number2
            when "3"
              number1 * number2
            when "4"
              number1.to_f() / number2
            end

  prompt "The result is #{result}"

  prompt("Another calculator? Y to continue")
  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using this calculator")
