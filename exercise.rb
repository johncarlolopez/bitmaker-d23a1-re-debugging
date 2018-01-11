

def select_cards(possible_cards, hand)
  needed_cards = 3
  possible_cards.each_with_index do |current_card, index|
    # Stretch 2
    # If remaining number of cards equals cards still needed
    if (possible_cards.count - (index)) == (needed_cards - hand.count)
      hand << current_card
      # move to next card and skip code below
      next
    end

    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
    if answer.downcase == 'y'
      hand << current_card
    end

    # Stretch 1
    break if hand.count == 3

  end

  # Move return to outside loop so that it should run after loop ends unless there was another break
  return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
