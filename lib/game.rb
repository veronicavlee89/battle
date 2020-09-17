class Game
  attr_reader :player_1, :player_2, :player_turn

  def initialize(p1, p2)
    @player_1 = p1
    @player_2 = p2
    @player_turn = @player_1
  end

  def attack(player)
    player.deduct_hp(10)
    switch_turn
    "You have attacked #{player}!"
  end

  def switch_turn
    @player_turn = (@player_turn == @player_1 ) ? @player_2 : @player_1
  end

end
