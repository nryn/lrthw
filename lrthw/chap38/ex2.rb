# array example : card deck

suits = ["Spades", "Diamonds", "Clubs", "Hearts"]
faces_and_specials = ["Jack", "Queen", "King", "Ace"]
deck = []

suits.each {|x| (2..10).each {|n| deck.push("#{n} of #{x}")} ; faces_and_specials.each {|f| deck.push("#{f} of #{x}")}}

jokes = ["Joker 1", "Joker 2"]
deck.push(jokes)

deck.shuffle!

puts "\nShuffled Deck : \n\n\t#{deck.join("\n\t")}\n\n"
