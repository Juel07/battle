require "player"

describe Player do
  subject(:nicki) { Player.new("Nicki") }

  it "can return name" do
    expect(nicki.name).to eq "Nicki"
  end
end
