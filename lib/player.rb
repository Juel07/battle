class Player
  attr_reader :name, :hit_points
  DEFAULT_HP = 60

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end

  def attack(player)
    player.reduce_points
  end

  def reduce_points
    @hit_points -= 10
  end
end
