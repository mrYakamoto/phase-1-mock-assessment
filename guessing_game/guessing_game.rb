class GuessingGame
  attr_accessor :congrats_message, :remaining_guesses, :has_won, :has_lost
  # @@game_number = 1

  def initialize(secret_number, num_allowed_guesses)
    # @game_number = @@game_number
    # @@game_number += 1
    @secret_number = secret_number
    @num_allowed_guesses = num_allowed_guesses
    @congrats_message = "Yay, you won!"
    @remaining_guesses = num_allowed_guesses
    @nums_guessed = []
    @status = "playing"
  end

  def guess(number)
    if @remaining_guesses == 0
      "You already #{@status}. The number was #{@secret_number}"

    elsif number == @secret_number
      @remaining_guesses -= 1
      @status = "won"
      "Correct! The number was #{@secret_number}"
    elsif number < @secret_number
      if @nums_guessed.include?(number)
        "Too low!"
      else
        @nums_guessed << number
        @remaining_guesses -= 1
        if @remaining_guesses == 1
          "Too low! WARNING: Only one guess left!"
        elsif @remaining_guesses == 0
          @status = "lost"
          "You lost! The number was #{@secret_number}"
        else
          "Too low!"
        end
      end
    elsif number > @secret_number
      if @nums_guessed.include?(number)
        "Too high!"
      else
        @nums_guessed << number
        @remaining_guesses -= 1
        if @remaining_guesses == 1
          "Too high! WARNING: Only one guess left!"
        elsif @remaining_guesses == 0
          @status = "lost"
          "You lost! The number was #{@secret_number}"
        else
          "Too high!"
        end
      end
    end
  end

  def has_won?
    if @status == "won"
      true
    else
      false
    end
  end

  def has_lost?
    if @status == "lost"
      true
    else
      false
    end
  end

  # def remaining_guesses
  #   if @num_allowed_guesses == 1
  #     puts "There will be 1 guess remaining in game #{@game_number}"
  #   else
  #     puts "There will be #{@num_allowed_guesses} guesses remaining in game #{@game_number}"
  #   end
  # end

end
