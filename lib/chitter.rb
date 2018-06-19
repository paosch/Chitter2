require 'pg'
class Chitter
  def self.all
    connection = PG.connect(dbname: 'chitter_manager')
    result = connection.exec("SELECT * FROM chitter")
    result.map { |m| m['message'] }
  end
end
