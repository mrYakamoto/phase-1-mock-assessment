require_relative '../guessing_game'

describe "GuessingGame tests" do
  let(:game) { GuessingGame.new(8,5) }
  let(:losing_game) { GuessingGame.new(999,1) }

  describe "initialize new GuessingGame" do
    it "initializes a new guessing game with our desired 'secret number' and the number of allowed guesses" do
      new_game = GuessingGame.new(10,3)
      expect(new_game.class).to eq(GuessingGame)
    end
  end

  describe "congrats message can be customized" do
    it "alters congrats message on re-assignment" do
      original = game.congrats_message
      game.congrats_message = "Correct!"
      expect(game.congrats_message).not_to eq(original)
    end
  end

  describe "remaining guesses" do
    it "returns number of guesses remaining for games" do
      expect(game.remaining_guesses).to eq(5)
      expect(losing_game.remaining_guesses).to eq(1)
    end
  end

  describe "has_won and has_lost methods" do
    it "returns false for a game in progress" do
      expect(game.has_won?).to be(false)
      expect(game.has_lost?).to be(false)
    end
  end

  describe "incorrect guess" do
    it "returns feedback for wrong guess" do
      expect(game.guess(2)).to eq("Too low!")
      expect(game.guess(11)).to eq("Too high!")
    end
    it "deducts from remaining guesses" do
      game.guess(2)
      expect(game.remaining_guesses).to eq(4)
    end
  end

  describe "repeated guess" do
    it "doesn't cost the user anything" do
      game.guess(2)
      game.guess(2)
      expect(game.remaining_guesses).to eq(4)
    end
  end

  describe "one guess remaining" do
    it "gives too high warning when only one guess remaining" do
      game.guess(4)
      game.guess(3)
      game.guess(2)
      expect(game.guess(111)).to eq("Too high! WARNING: Only one guess left!")
    end
    it "gives too low warning when only one guess remaining" do
      game.guess(4)
      game.guess(3)
      game.guess(2)
      expect(game.guess(1)).to eq("Too low! WARNING: Only one guess left!")
    end
  end

  describe "winning / losing game" do
    it "gives correct feedback for winning game" do
      expect(game.guess(8)).to eq("Correct! The number was 8")
    end
    it "gives correct feedback for losing game" do
      expect(losing_game.guess(9)).to eq("You lost! The number was 999")
    end
  end

  describe "finished game" do
    it "guesses don't alter remaining_guesses" do
      losing_game.guess(9)
      losing_game.guess(8)
      expect(losing_game.remaining_guesses).to eq(0)
    end
  end

  describe "has_won? / has_lost?" do
    it "reports outcome of winning game accurately" do
      game.guess(8)
      expect(game.has_won?).to be(true)
      expect(game.has_lost?).to be(false)
    end
    it "reports outcome of losing game accurately" do
      losing_game.guess(123)
      expect(losing_game.has_won?).to be(false)
      expect(losing_game.has_lost?).to be(true)
    end
  end




end
