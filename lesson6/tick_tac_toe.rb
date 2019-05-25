require 'pry'

WINNING_LINE = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
               [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # column
               [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(board)
  # board is an array storing players' step with nested sorted array
  step = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  board[0].each do |one_step|
    step[step.index(one_step.to_s)] = 'X'
  end
  board[1].each do |one_step|
    step[step.index(one_step.to_s)] = 'O'
  end
  puts "-------------"
  (0..2).each do |i|
    puts "| #{step[i * 3]} | #{step[i * 3 + 1]} | #{step[i * 3 + 2]} |"
    puts "-------------"
  end
end

# update board with the player's mark
def player_turn!(board)
  puts "Please make your move (\"X\"):"
  player_move = 0
  loop do
    player_move = gets.chomp
    break unless board.flatten.include?(player_move.to_i) || !(1..9).cover?(player_move.to_i)
    puts "Not a valid move, please enter again:"
  end
  board[0] << player_move.to_i
  display_board(board)
end

def computer_turn!(board)
  # offensive move if possible
  computer_move = smart_move(board[1], board[0])
  # defensive move if possible
  computer_move = smart_move(board[0], board[1]) if computer_move == 0
  # choose 5 if possible
  computer_move = 5 if computer_move == 0 && !board.flatten.include?(5)
  # random move
  if computer_move == 0
    loop do
      computer_move = (1..9).to_a.sample
      break unless board.flatten.include?(computer_move.to_i) || !(1..9).cover?(computer_move.to_i)
    end
  end
  board[1] << computer_move.to_i
  prompt("Computer makes a move at #{computer_move}")
  display_board(board)
end

# read steps and return a move that stops first argument from winning
def smart_move(oppo_steps, steps)
  WINNING_LINE.each do |win_line|
    filter_line = win_line.select do |win_num|
      !oppo_steps.include?(win_num)
    end
    if filter_line.size == 1
      return filter_line[0] unless steps.include?(filter_line[0])
    end
  end
  0
end

def someone_won?(board, score)
  # check the board to see if a winner, and update the score
  board.each_with_index do |steps, i|
    WINNING_LINE.each do |winning_step|
      has_winner = true
      winning_step.each do |num|
        has_winner = false if !steps.include?(num)
      end
      if has_winner
        case i
        when 0 then prompt("Player has won!")
        when 1 then prompt("Computer has won!")
        end
        update_score!(score, i)
        return has_winner
      end
    end
  end
  false
end

def tie_game?(board)
  if board.flatten.size == 9
    prompt("This game is tied!")
    true
  else
    false
  end
end

def update_score!(score, winner)
  score[winner] += 1
end

def someone_play!(player, board)
  case player
  when 0 then player_turn!(board)
  when 1 then computer_turn!(board)
  end
end

prompt("Welcome to \"Tick Tac Toe\", have fun!")
score = [0, 0]
loop do
  prompt("Who would go first? \"0\" for player and \"1\" for computer:")
  turn = gets.chomp.to_i
  play_board = [[], []]
  display_board(play_board)

  loop do
    someone_play!(turn, play_board)
    break if someone_won?(play_board, score) || tie_game?(play_board)
    turn = turn == 1 ? 0 : 1
  end

  if score.max == 5
    if score.index(5) == 0
      prompt("Player has won 5 games.")
    else
      prompt("Computer has won 5 games.")
    end
    break
  end

  prompt("The current score is #{score[0]} : #{score[1]}")
  prompt("Would you like another round? Hit \"Y\" for \"yes\".")
  another_game = gets.chomp
  break unless another_game.upcase == "Y"
end
