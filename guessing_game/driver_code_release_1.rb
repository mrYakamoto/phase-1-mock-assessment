require_relative 'guessing_game'

puts "We can initialize a guessing game with our desired 'secret number'"
game = GuessingGame.new(8)
p (game.class == GuessingGame)

puts "We can set a custom congrats message"
p (game.congrats_message == "Yay, you won!")
game.congrats_message = "You win!"
p (game.congrats_message == "You win!")

puts "There will be 5 guesses remaining"
p (game.remaining_guesses == 5)

puts "User has neither won nor lost yet"
p (game.has_won? == false)
p (game.has_lost? == false)

puts "Wrong guess receives correct feedback"
p (game.guess(2) == "Too low!")

puts "Wrong guess deducts from remaining guesses"
p (game.remaining_guesses == 4)

puts "Repeated guesses do not cost the user anything"
p (game.guess(2) == "Too low!")
p (game.remaining_guesses == 4)

puts "Wrong guess receives feedback"
p (game.guess(11) == "Too high!")

puts "Wrong guess deducts from remaining guesses"
p (game.remaining_guesses == 3)

p (game.guess(10) == "Too high!")
p (game.remaining_guesses == 2)

puts "Warning is given when there's only one guess remaining"
p (game.guess(9) == "Too high! WARNING: Only one guess left!")

puts "Correct guess gets feedback and then congrats message"
p (game.guess(8) == "Correct! You win!")

puts "Outcome is recorded correctly"
p (game.has_won? == true)
p (game.has_lost? == false)
