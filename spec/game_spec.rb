require "game"

describe Game do
  subject(:game) { described_class.new(nicki, doja) }
  subject(:finished_game) { described_class.new(dead_player, doja) }

  let(:nicki) { double :player, player_points: 60 }
  let(:doja) { double :player, player_points: 60 }
  let(:dead_player) { double :player, player_points: 0 }

  it "can retrieve player 1" do
    expect(game.player1).to eq nicki
  end

  it "can retrieve player 2" do
    expect(game.player2).to eq doja
  end

  it "starts with Player 1's turn" do
    expect(game.curr_turn).to eq nicki
  end

  it "switches turns" do
    game.switch_turns
    expect(game.curr_turn).to eq doja
  end

  describe "#opponent_of" do
    it "finds the opponent of current player" do
      expect(game.opponent_of(nicki)).to eq doja
      expect(game.opponent_of(doja)).to eq nicki
    end
  end

  describe "#game_over?" do
    it "returns false if no one is at 0HP" do
      expect(game.game_over?).to be false
    end

    it "returns true if at least one player is at 0HP" do
      expect(finished_game.game_over?).to be true
    end
  end

  describe "#loser" do
    it "returns a player with less than 0HP" do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
