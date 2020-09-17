require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double('player 1', :deduct_hp => 10) }
  let(:player_2) { double('player 2', :deduct_hp => 10) }

  it 'initializes with two players as arguments' do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it 'stores player 1' do
    expect(game.player_1).to eq(player_1)
  end

  it 'stores player 2' do
    expect(game.player_2).to eq(player_2)
  end

  it 'initializes with player 1 turn' do
    expect(game.player_turn).to eq player_1
  end

  describe '#attack(player)' do
    it 'sends deduct_hp message to player with number of HP' do
      expect(player_1).to receive(:deduct_hp).once.with(10)
      game.attack(player_1)
    end
  end

  describe '#switch_player' do
    it 'switches player turn' do
      game.attack(player_1)
      expect(game.player_turn).to eq player_2
    end
  end
      

  
end