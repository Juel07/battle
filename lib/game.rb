class Game
  attr_reader :curr_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @curr_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch_turns
    @curr_turn = opponent_of(@curr_turn)
  end

  def attack(player)
    player.reduce_points
  end

  def opponent_of(current_turn)
    @players.select { |player| player != current_turn }.first
  end
end
