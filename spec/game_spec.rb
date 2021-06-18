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
end
