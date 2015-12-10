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

end
