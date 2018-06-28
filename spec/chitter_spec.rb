require 'chitter'
describe Chitter do
  describe '#==' do
    it 'two messages are equal if their IDs match' do
      message_1 = Chitter.new(1, message: 'testmessage')
      message_2 = Chitter.new(1, message: 'testmessage')
      expect(message_1).to eq message_2
    end
  end
  describe '.all' do
    it 'returns all the posted messages' do
      message_1 = Chitter.create(message: 'hola a todos')
      message_2 = Chitter.create(message: 'que pasaaaa')
      expected_messages = [message_1, message_2]
      expect(Chitter.all).to eq expected_messages
    end
  end
  describe '.create' do
    it 'creates a new Chitter' do
      messa = Chitter.create(message: 'testmessage')
      expect(Chitter.all).to include messa
    end
  end
  describe '.delete' do
    it 'the user can delete a message' do
      Chitter.create(message: 'hola')
      Chitter.delete(1)
      messages = Chitter.all
      expect(messages).not_to include 'hola'
    end
  end
end
