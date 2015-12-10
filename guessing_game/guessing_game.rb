# INITIAL

class GuessingGame
  attr_accessor :congrats_message, :remaining_guesses, :has_won, :has_lost

  def initialize(secret_number, num_allowed_guesses)
    @secret_number = secret_number
    @num_allowed_guesses = num_allowed_guesses
    @congrats_message = "Yay, you won!"
    @remaining_guesses = num_allowed_guesses
    @nums_guessed = []
    @game_status = "active"
  end

  def guess(guessed_number)
    return "You already #{@game_status}. The number was #{@secret_number}" if @remaining_guesses == 0
    if guessed_number == @secret_number
      @remaining_guesses -= 1
      @game_status = "won"
      "Correct! The number was #{@secret_number}"
    elsif guessed_number < @secret_number
      apply_guess("low", guessed_number)
    elsif guessed_number > @secret_number
      apply_guess("high", guessed_number)
    end
  end

  def apply_guess(relation, guessed_number)
    if @nums_guessed.include?(guessed_number)
        "Too #{relation}!"
      else
        @nums_guessed << guessed_number
        @remaining_guesses -= 1
        if @remaining_guesses == 1
          "Too #{relation}! WARNING: Only one guess left!"
        elsif @remaining_guesses == 0
          @game_status = "lost"
          "You lost! The number was #{@secret_number}"
        else
          "Too #{relation}!"
        end
      end
  end

  def has_won?
    if @game_status == "won"
      true
    else
      false
    end
  end

  def has_lost?
    if @game_status == "lost"
      true
    else
      false
    end
  end

end
