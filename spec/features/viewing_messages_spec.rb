feature 'viewing messages' do
  scenario 'the user sees the list of posted messages in the homepage' do
    Chitter.create(message: 'hola a todos')
    Chitter.create(message: 'que pasaaaa')
    visit('/')
    expect(page).to have_content 'hola a todos'
    expect(page).to have_content 'que pasaaaa'
  end
end
