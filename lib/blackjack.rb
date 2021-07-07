def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total(cards)
  # code #display_card_total here
  puts "Your cards add up to #{cards}"
end

def prompt_user
  # code #prompt_user here
  puts "Type \'h\' to hit or \'s\' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  cards = deal_card + deal_card
  display_card_total(cards)
  cards
end

def hit? (num)
  # code hit? here
  prompt_user
  inputUser = get_user_input
  if inputUser == 's'
    num
    elsif inputUser == 'h'
    num + deal_card
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  currentCards = initial_round
  until currentCards > 21
    currentCards = hit?(currentCards)
    display_card_total(currentCards)
  end
  end_game(currentCards)
end
    
