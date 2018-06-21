feature 'viewing messages' do
  scenario 'the user sees the list of posted messages in the homepage' do
    connection = PG.connect(dbname: "chitter_manager_test")
    connection.exec("INSERT INTO chitter VALUES(1, 'hola a todos');")
    connection.exec("INSERT INTO chitter VALUES(2, 'que pasaaaa');")

    visit('/')
    expect(page).to have_content 'hola a todos'
    expect(page).to have_content 'que pasaaaa'
  end
end
