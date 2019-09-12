def initialize_deck
	suits = ['D', 'C', 'H', 'S']
	num = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King']
	deck = []
	suits.each do |suit|
		num.each do |num|
			deck << [suit, num]
		end
	end
	deck
end

# shuffle a num of cards from deck to hand, update both array.
def deal!(deck, hand, num)
	1.upto(num) do |i| 
		card = deck.sample
		hand << card
		deck.delete(card)
	end
end

def hand_total(hand)
	cards = hand.map {|card| 
		case card[1]
		when 'Ace' then 11
		when 'Jack' then 10
		when 'Queen' then 10
		when 'King' then 10
		else card[1].to_i
		end	
		}
	total = cards.inject {|sum, card| sum += card}
	while total > 21 && cards.include?(11)
		total -= 10
		cards[cards.find_index(11)] = 1
	end
	total
end

def busted?(hand)
	hand_total(hand) > 21
end

def prompt(msg)
  puts "=> #{msg}"
end

def show_hand(hand)
	str = ''
	hand.each_with_index do |card, i|
    if hand.size == 1
		  str = "#{hand[0][1]}."
    elsif i == hand.size - 1
			str << "and #{card[1]}."
		elsif i == hand.size - 2
			str << "#{card[1]} "
		else
			str << "#{card[1]}, "
		end
	end
	str
end

def show_dealer_hand(hand)
  "#{hand[0][1]} and an unknown card."
end

def win(winner, dealer_hand, player_hand)
  prompt("#{winner} has won.")
  prompt("The dealer has #{show_hand(dealer_hand)} The total is #{hand_total(dealer_hand)}.")
  prompt("The player has #{show_hand(player_hand)} The the total is #{hand_total(player_hand)}.")
end

def player_turn!(deck, dealer_hand, player_hand)
  loop do
    if busted?(player_hand)
      break
    else
      prompt("You have #{show_hand(player_hand)}")
      prompt("Would you like to Hit(H) or Stay(S)")
      answer = gets.chomp
      if answer.upcase == "S"
        prompt("You choose to Stay and you have #{hand_total(player_hand)}. Dealer's turn.")
        break
      elsif answer.upcase == 'H'
        deal!(deck, player_hand, 1)
      else 
        prompt("No a valid input.")
      end
    end
  end
end

def another_game?()
  prompt("Would you like another game? (Y)es or other key to exit game.")
  answer= gets.chomp
  answer.upcase == 'Y' ? true : false
end


#game begins
prompt("Welcome to GAME 21.")

loop do 
  dealer_hand = []
  player_hand = []

  deck = initialize_deck
  deal!(deck, dealer_hand, 2)
  deal!(deck, player_hand ,2)

  prompt("Dealer has #{show_dealer_hand(dealer_hand)}")
  
  # player's turn
  player_turn!(deck, dealer_hand, player_hand)
  if busted?(player_hand)
    prompt("You're busted.")
    win("Dealer", dealer_hand, player_hand)
    another_game? ? next : break
  end
  
  # dealer's turn
  while  hand_total(dealer_hand) < 17 do
    prompt("Dealer has #{show_hand(dealer_hand)}")
    prompt("Dealer dealing...")
    deal!(deck, dealer_hand, 1)
  end
  prompt("Dealer has #{show_hand(dealer_hand)} The total is #{hand_total(dealer_hand)}.")
  if busted?(dealer_hand)
    prompt("Dealer has busted.")
    win("Player", dealer_hand, player_hand)
    another_game? ? next : break
  end

  # compare and find winner
  if hand_total(dealer_hand) >= hand_total(player_hand)
    win("Dealer", dealer_hand, player_hand)
  else
    win("Player", dealer_hand, player_hand)
  end

  another_game? ? next : break
end

