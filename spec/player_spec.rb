require 'player'

describe Player do

  subject(:player) { Player.new(name) }
  let(:name) { 'Ollie' }

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq(name)
    end
  end

  describe '#hitpoints' do
    it 'returns the hitpoints of the player' do
      expect(player.hitpoints).to eq 100
    end
  end

  describe '#deduct_hp(hp)' do
    it 'reduces the hitpoints of the player' do
      expect { player.deduct_hp(10) }.to change{ player.hitpoints }.by -10
    end
    
    it 'returns a confirmation message' do
      expect(player.deduct_hp(10)).to eq "You have attacked #{player.name}!"
    end
  end
end