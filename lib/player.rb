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

  def deduct_hp(hp)
    @hitpoints -= hp
  end
end