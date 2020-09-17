class Game
  attr_reader :player_1, :player_2, :player_turn

  def initialize(p1, p2)
    @player_1 = p1
    @player_2 = p2
    @player_turn = [@player_1, @player_2]
  end

  def attack
    @player_turn[1].deduct_hp(10)
    switch_turn
    "You have attacked #{@player_turn[0].name}!"
  end

  def switch_turn
    @player_turn.reverse!
  end

end
