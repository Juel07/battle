require "game"

describe Game do
  subject(:game) { described_class.new }

  let(:nicki) { double :player }
  let(:doja) { double :player }

  it "can attack the player and reduce HP" do
    expect(nicki).to receive(:reduce_points)
    game.attack(nicki)
  end
end
