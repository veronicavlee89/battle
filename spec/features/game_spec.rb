require 'game'

describe Game do
  subject(:game) { Game.new }
  let(:player) { double('player') }

  describe '#attack(player)' do
    it 'sends deduct_hp message to player with number of HP' do
      expect(player).to receive(:deduct_hp).once.with(10)
      game.attack(player)
    end
  end
end