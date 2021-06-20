require "attacK"

describe Attack do
  subject(:object) { described_class }
  let(:player) { double :player }

  describe ".run" do
    it "damages the player" do
      expect(player).to receive(:reduce_points)
      object.run(player)
    end
  end
end
