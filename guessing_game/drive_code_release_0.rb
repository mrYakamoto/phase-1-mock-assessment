require_relative 'guessing_game'

puts "We can initialize a guessing game with our desired 'secret number'"
game = GuessingGame.new(8)
p game.class == GuessingGame

puts "There will be 5 guesses remaining"
p game.remaining_guesses == 5

puts "Wrong guess receives correct feedback"
p game.guess(2) == "Too low!"

puts "Wrong guess deducts from remaining guesses"
p game.remaining_guesses == 4

puts "Wrong guess receives feedback"
p game.guess(11) == "Too high!"
p game.guess(10) == "Too high!"
p game.remaining_guesses == 2

puts "Correct guess wins the game"
p game.guess(8) == "Correct! You win!"

