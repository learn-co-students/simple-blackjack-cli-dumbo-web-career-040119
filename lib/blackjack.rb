def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random_num = rand(1..11)
  return random_num
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
  return gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  initial = deal_card + deal_card
  display_card_total(initial)
  return initial
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
    return current_total
  elsif input == 'h'
    new_total = current_total + deal_card
    if new_total > 21
      end_game(new_total)
      puts "Your cards add up to #{new_total}"
    else
      return new_total
    end
  end
end

def invalid_command
  # code invalid_command here

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  int =initial_round
  hit?(int)
  
end

    
