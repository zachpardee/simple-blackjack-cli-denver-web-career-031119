def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets
  input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_sum = card1 + card2
  display_card_total(card_sum)
  card_sum
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    return card_total
  elsif user_input == "h"
    new_card = deal_card
    new_sum = card_total + new_card
    return new_sum
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
