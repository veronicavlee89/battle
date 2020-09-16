describe Player do

  subject(:player) { Player.new(name) }
  let(:name) { 'Ollie' }

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq(name)
    end
  end
end