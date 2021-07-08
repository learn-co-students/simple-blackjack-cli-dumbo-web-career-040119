def welcome
  # code #welcome here
	puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
	my_cards = (1..11).to_a
	card = my_cards[rand(my_cards.length-1)]
	card
end

def display_card_total(card_total)
  # code #display_card_total here
	puts "Your cards add up to #{card_total}"
	card_total
end

def prompt_user
  # code #prompt_user here
	puts "Type 'h' to hit or 's' to stay"
	#choice = STDIN.gets
end

def get_user_input
  # code #get_user_input here
	hit_or_stay = gets.chomp()
	return hit_or_stay
end

def end_game(card_val)
  # code #end_game here
	puts "Sorry, you hit #{card_val}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
	#my_hand = deal_card + deal_card
	#puts "Your cards add up to  #{my_hand}"
	first = deal_card
	second = deal_card
	my_hand = first + second
	puts "Your cards add up to #{my_hand}"
	my_hand
end

def hit?(cards)
  # code hit? here
	prompt_user
	my_decision = get_user_input
	

	if my_decision == 'h'
		cards = cards + deal_card
	elsif my_decision == 's' 
		return cards
	else
		
	end
	return cards
	
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
	welcome
	my_hand = initial_round
	outcome = hit?(my_hand)
	display_outcome = display_card_total(outcome)
	end_game(display_outcome)
end