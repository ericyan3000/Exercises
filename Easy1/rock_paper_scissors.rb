VALID_CHOICES = ['rock', 'paper', 'scissor']

def prompt(message)
  puts("=> #{message}")
end

def display_result(human, computer) 
  if (human == 'rock' && computer == 'scissor') ||
     (human == 'scissor' && computer == 'paper') ||
     (human == 'paper' && computer == 'rock')
    prompt("You won!")
  elsif (human == 'rock' && computer == 'paper') ||
     (human == 'scissor' && computer == 'rock') ||
     (human == 'paper' && computer == 'scissor')
    prompt("You lost!")
  else
    prompt("It's tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets().chomp()
    
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You choose: #{choice}; computer choose: #{computer_choice}.")

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets().chomp()
  break unless answer.downcase.start_with?('y')
end