require 'chitter'
describe 'Chitter' do
  describe '.all' do
    it 'returns all the posted messages' do
      messages = Chitter.all
      expect(messages).to include("hi, what's up?")
      expect(messages).to include('bored at home, you?')
    end
  end
end
