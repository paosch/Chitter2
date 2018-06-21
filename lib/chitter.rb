require 'pg'
class Chitter
  def self.all
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else
      connection = PG.connect(dbname: 'chitter_manager')
    end
    result = connection.exec("SELECT * FROM chitter")
    result.map { |m| m['message'] }
  end
  def self.create(options)
    if ENV['ENVIRONMENT'] = 'test'
      connection = PG.connect(dbname: 'chitter_manager_test')
    else
      connection = PG.connect(dbname: 'chitter_manager')
    end
    result = connection.exec("INSERT INTO chitter (message) VALUES('#{options[:message]}')")
    result.map { |m| m['message'] }
  end

end
