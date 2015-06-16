require_relative 'guessing_game'

# we can initialize a guessing game with our desired 'secret number'
game = GuessingGame.new(8)

# there will be 5 guesses remaining
p GuessingGame.remaining_guesses == 5

# user has neither won nor lost yet
p GuessingGame.has_won == false
p GuessingGame.has_lost == false

# wrong guess receives correct feedback
p GuessingGame.guess(2) == "Too low!"

# wrong guess deducts from remaining guesses
p GuessingGame.remaining_guesses == 4

# repeated guesses do not cost the user anything
p GuessingGame.guess(2) == "Too low!"
p GuessingGame.remaining_guesses == 4

# wrong guess receives feedback
p GuessingGame.guess(11) == "Too high!"

# wrong guess deducts from remaining guesses
p GuessingGame.remaining_guesses == 3

p GuessingGame.guess(10) == "Too high!"
p GuessingGame.remaining_guesses == 2

# warning is given when there's only one guess remaining
p GuessingGame.guess(9) == "Too high! WARNING: Only one guess left!"
p GuessingGame.guess(8) == "Correct! You win!"

# outcome is recorded correctly
p GuessingGame.has_won == true
p GuessingGame.has_lost == false
