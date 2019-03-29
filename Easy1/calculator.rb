# ask user for two numbers
# ask user for an operation to perform
# perform the operation on the two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  /^\d+$/.match(num)
end

def float?(num)
  /\d/.match(num) && /^\d*\.?\d*$/.match(num)
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

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}:")

loop do
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
  number1 = number1.to_i()

  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
  number2 = number2.to_i()


  loop do
    prompt(MESSAGES['operator_msg'])
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

  prompt(MESSAGES['ask_continue'])
  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['good_bye'])
