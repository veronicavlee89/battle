class Game
  attr_reader :player_1, :player_2, :player_turn

  def initialize(p1, p2)
    @player_1 = p1
    @player_2 = p2
    @player_turn = [@player_1, @player_2]
  end

  def self.create(p1, p2)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

  def attack
    @player_turn[1].deduct_hp(10)
    switch_turn
    attack_message
  end

  def active_player
    @player_turn[0]
  end

  private

  def switch_turn
    @player_turn.reverse!
  end

  def attack_message
    attacked_message = "#{@player_turn[1].name} has attacked #{@player_turn[0].name}!"
    lose_message = "#{active_player.name} lost! (╯°□°）╯︵ ┻━┻"
    active_player.hitpoints <= 0 ? lose_message : attacked_message
  end

end
