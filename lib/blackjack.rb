def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(current_card_total)
  # code #display_card_total here
  puts "Your cards add up to #{current_card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp()
  
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  total 
end

def hit?(current_card_total)
  # code hit? here 
  choice = ''
  
  prompt_user
  choice = get_user_input
  
  if choice == 's'
    return current_card_total
  end
  
  if choice == 'h'
    new_total = deal_card + current_card_total
    return new_total
  end 
  
  if choice != 'h' || choice != 's'
    invalid_command
    prompt_user
  end
  
  current_card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  #greet user 
  welcome()
  
  #start game 
  current_total = 0 
  current_total = initial_round() 
  
  
  #start game 
  while current_total <= 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  
  end_game(current_total)
end
    
