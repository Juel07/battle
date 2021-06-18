require "player"

describe Player do
  subject(:nicki) { Player.new("Nicki") }
  subject(:doja) { Player.new("Doja") }

  it "can return name" do
    expect(nicki.name).to eq "Nicki"
  end

  #   it "can attack another player" do
  #     allow(nicki).to receive(:reduce_points)
  #     doja.attack(nicki)
  #   end

  it "can reduce player's hit points" do
    expect { nicki.reduce_points }.to change { nicki.player_points }.by -10
  end
end
