require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double('player') }
  let(:player_2) { double('player') }

  it 'initializes with two players as arguments' do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it 'stores player 1' do
    expect(game.player_1).to eq(player_1)
  end

  it 'stores player 2' do
    expect(game.player_2).to eq(player_2)
  end

  describe '#attack(player)' do
    it 'sends deduct_hp message to player with number of HP' do
      expect(player_1).to receive(:deduct_hp).once.with(10)
      game.attack(player_1)
    end
  end
end