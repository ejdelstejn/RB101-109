# rb101_109 / lesson_6 / twentyone.rb

=begin
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.
=end

require 'pry'

# -----------------------------------------------------------------------------------------------

deck = [
  ['H', '1'], ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], ['H', '8'], ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'], ['H', 'A'],
  ['D', '1'], ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', 'J'], ['D', 'Q'], ['D', 'K'], ['D', 'A'],
  ['S', '1'], ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'], ['S', 'J'], ['S', 'Q'], ['S', 'K'], ['S', 'A'],
  ['C', '1'], ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], ['C', 'J'], ['C', 'Q'], ['C', 'K'], ['C', 'A']
]

# -----------------------------------------------------------------------------------------------

# initialize two cards in the dealer's and player's hands

def prompt(msg)
  puts "==> #{msg}"
end

def start_screen
  puts "+--------------------------------+"
  puts "|     =====> WELCOME! <=====     |"
  puts "|   _____                        |"
  puts "|  |A .  | _____                 |"
  puts '|  | /.\ ||A ^  | _____          |'
  puts '|  |(_._)|| / \ ||A _  | _____   |'
  puts '|  |  |  || \ / || ( ) ||A_ _ |  |'
  puts "|  |____V||  .  ||(_'_)||( v )|  |"
  puts '|         |____V||  |  || \ / |  |'
  puts "|   LET'S        |____V||  .  |  |"
  puts "|          PLAY         |____V|  |"
  puts "|                  21!           |"
  puts "|                                |"
  puts "+--------------------------------+"
  puts "     ~ ascii art by ejm98 ~     "
  puts "                                "
  sleep(1.5)
end

def select_cards(deck)
  sum = 0
  cards = []
  cards << deck.sample
  cards << deck.sample
  cards
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i == 0 # J, Q, K
             10
           else
             value.to_i
           end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  if total(cards) > 21
    true
  else
    false
  end
end

def hit(deck, cards); end

=begin
def game_result(player_cards, dealers_cards)

end

def display_result(player_cards, dealers_cards)

end
=end

def game(deck)
  start_screen
  player_cards = select_cards(deck)
  dealer_cards = select_cards(deck)
  prompt("Dealer has: #{dealer_cards[0][1]} and #{dealer_cards[1][1]}")
  sleep(1.0)
  prompt("You have: #{player_cards[0][1]} and #{player_cards[1][1]}")
  total(player_cards)
  total(dealer_cards)
  loop do
    sleep(1.0)
    prompt("Hit or stay?")
    answer = gets.chomp
    break if answer == 'stay' || busted?(player_cards)
  end

  if busted?(player_cards)
    prompt("Game over! Dealer wins!")
    prompt("Would you like to play again?")
  else
    prompt("You chose to stay!")
  end
end

game(deck)
