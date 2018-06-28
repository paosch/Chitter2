require 'pg'
class Chitter
  attr_reader :id, :message
  def initialize(id, message)
    @id = id
    @message = message
  end
  def ==(other)
    @id == other.id
  end
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else
      connection = PG.connect(dbname: 'chitter_manager')
    end
    result = connection.exec('SELECT * FROM chitter')
    result.map { |m| Chitter.new(m['id'], m['message']) }
  end
  def self.create(options)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else
      connection = PG.connect(dbname: 'chitter_manager')
    end
    result = connection.exec("INSERT INTO chitter (message) VALUES('#{options[:message]}') RETURNING id, message")
    Chitter.new(result.first['id'], result.first['message'])
  end
  def self.delete(id)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else
      connection = PG.connect(dbname: 'chitter_manager')
    end
    puts "this is the #{id}"
    connection.exec("DELETE FROM chitter WHERE id = #{id}")
  end
end
