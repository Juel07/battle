require "game"

describe Game do
  subject(:game) { described_class.new(nicki, doja) }

  let(:nicki) { double :player }
  let(:doja) { double :player }

  it "can retrieve player 1" do
    expect(game.player1).to eq nicki
  end

  it "can retrieve player 2" do
    expect(game.player2).to eq doja
  end

  it "can attack the player and reduce HP" do
    expect(nicki).to receive(:reduce_points)
    game.attack(nicki)
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
end
