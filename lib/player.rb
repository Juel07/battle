class Player
  attr_accessor :name, :player_points
  DEFAULT_HP = 60

  def initialize(name)
    @name = name
    @player_points = DEFAULT_HP
  end

  def reduce_points
    @player_points -= 10
  end

  def player_points
    @player_points
  end
end
