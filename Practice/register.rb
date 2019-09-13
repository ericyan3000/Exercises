=begin

input: string of a series of integer or predefined words
output: integer
rule: 1. read the integer/word 1 by 1, and perform predefined actions
      integer - update register = n
      PUSH - stack.push(register) modifies stack and leave register unchanged
      ADD - register += stack.pop; stack.push(register)
      SUB - register -= stack.pop; stack.push(register)
      MULT - register *= stack.pop; stack.push(register)
      DIV - register /= stack.pop; stack.push(register)
      MOD - register %= stack.pop; stack.push(register)
      POP - register = stack.pop
      PRINT - put register

data structure: array

algorithm: 1. split string into array (commands), defined register(int), stack(array)
           2. iterate EACH element in commands and perform action by case statement
            a. case word
              when word == word.to_i.to_s:
              when 'PUSH'

=end


def minilang (str)
  commands = str.split(" ")
  register = 0
  stack = []

  commands.each do |word|
    case word
    when word.to_i.to_s then register = word.to_i
    when 'PRINT' then puts register
    when 'PUSH' then stack.push(register)
    when 'POP' then register = stack.pop
    when 'ADD' then 
      register += stack.pop 
    when 'SUB' then
      register -= stack.pop
    when 'MULT' then
      register *= stack.pop
    when 'DIV' then
      register /= stack.pop
    when 'MOD' then
      register %= stack.pop
    end
  end
end



minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

#minilang('-3 PUSH 5 SUB PRINT')
# 8

