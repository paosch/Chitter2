require 'pg'
def setup_test_db
  p "Setting up test database..."
  connection = PG.connect(dbname: 'chitter_manager_test')

  connection.exec("TRUNCATE chitter;")
end