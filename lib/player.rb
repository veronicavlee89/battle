class Player
  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  def name
    @name
  end

  def hitpoints
    @hitpoints
  end

  def receive_attack
    @hitpoints -= 10
  end
end