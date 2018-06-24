require 'chitter'
describe Chitter do
  describe '.all' do
    it 'returns all the posted messages' do
      Chitter.create(message: 'hola a todos')
      Chitter.create(message: 'que pasaaaa')
      expect(Chitter.all).to eq ['hola a todos', 'que pasaaaa']
    end
  end
  describe '.create' do
    it 'creates a new Chitter' do
      Chitter.create(message: 'testmessage')
      expect(Chitter.all).to include('testmessage')
    end
  end
end
