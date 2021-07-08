def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  n = (1..11)
  rand(n)
end

def display_card_total(card)
  # code #display_card_total here

puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp

end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  deal, deals, dealt= " ", " ", " "
  deal = deal_card
  deals = deal_card
  dealt = deal + deals
  display_card_total(dealt)
  dealt

end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(number)
  # code hit? here

deal = prompt_user
answer = get_user_input


if answer == "h"
  deal = deal_card
  number += deal
elsif  answer == "s"
  number
else
  invalid_command
  prompt_user
end

end






def runner
welcome
number = 0
number = initial_round

until number > 21
  number = hit?(number)
  display_card_total(number)
end
end_game(number)
end
