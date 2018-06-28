require 'pg'
def setup_test_db
  p "Setting up test database..."
  connection = PG.connect(dbname: 'chitter_manager_test')

  connection.exec("DROP TABLE chitter;")
  connection.exec("CREATE TABLE chitter(id SERIAL PRIMARY KEY, message VARCHAR(200));")
end
