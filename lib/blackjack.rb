require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(total)
    puts "Your cards add up to #{total}"
  end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(score)
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
    first_card = deal_card
    second_card = deal_card
    total = first_card + second_card
    display_card_total(total)
    total
  end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(initial_card)
  prompt_user
  input = get_user_input
  current_card_total = ''
  if input == 'h'
    current_card_total = deal_card + initial_card
  elsif input == 's'
    "Type 'h' to hit or 's' to stay"
    current_card_total = initial_card
  else
    invalid_command
    prompt_user
  end
  current_card_total
end

def runner
  until total >= 21 do
    welcome
    initial_round
    hit?
    display_card_total
end
binding.pry
