def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(score)
  # code #end_game here
   puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  #code #initial_round here
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
  sum
end

def hit?(n)
  # code hit? here
  prompt_user
  input = get_user_input
  
  if input == 'h'
    n += deal_card
  else if input == 's'
    n
  else 
    invalid_command
    prompt_user
  end
  n
end

def invalid_command
  # code invalid_command here
     puts "Please enter a valid command"l
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  until card_total >= 21 do
  welcome
  initial_round
  hit?
  display_card_total
  end
end
    
