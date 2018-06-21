require 'chitter'
describe 'Chitter' do
  describe '.all' do
    it 'returns all the posted messages' do
      connection = PG.connect(dbname: 'chitter_manager_test')
      connection.exec("INSERT INTO chitter VALUES(1, 'hola a todos');")
      connection.exec("INSERT INTO chitter VALUES(2, 'que pasaaaa');")
      expected_messages = ['hola a todos', 'que pasaaaa']
      expect(Chitter.all).to eq expected_messages
    end
  end
end
