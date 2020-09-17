require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double('player 1', name: 'Bob', :deduct_hp => 10, hitpoints: 100) }
  let(:player_2) { double('player 2', name: 'Mary', :deduct_hp => 10, hitpoints: 100) }

  it 'initializes with two players as arguments' do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it 'stores player 1' do
    expect(game.player_1).to eq(player_1)
  end

  it 'stores player 2' do
    expect(game.player_2).to eq(player_2)
  end

  it 'initializes with player 1 turn first' do
    expect(game.player_turn).to eq [player_1, player_2]
  end

  describe '#attack' do
    it 'sends deduct_hp message to player with number of HP' do
      expect(player_2).to receive(:deduct_hp).once.with(10)
      game.attack
    end
  end

  describe '#switch_player' do
    it 'switches player turn' do
      expect{ game.attack }.to change{ game.player_turn[0] }.to(player_2)
    end
  end

  describe '#active player' do
    it 'returns the current player' do
      expect(game.active_player).to eq player_1
    end
  end
  
end
